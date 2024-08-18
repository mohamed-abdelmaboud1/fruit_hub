import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  static SignUpCubit get(context) => BlocProvider.of(context);

  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  String name = '';
  String email = '';
  String password = '';
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  signUpWithEmailAndPassword() async {
    if (_formNotValid()) return;
    emit(SignUpLoading());
    var result = await authRepo.createUserWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SignUpFailure(message: failure.message)),
      (user) {
        emit(SignUpSuccess(userEntity: user));
      },
    );
  }

  bool _formNotValid() {
    if (!formKey.currentState!.validate()) {
      autovalidateMode = AutovalidateMode.onUserInteraction;
    }
    return !formKey.currentState!.validate();
  }
}
