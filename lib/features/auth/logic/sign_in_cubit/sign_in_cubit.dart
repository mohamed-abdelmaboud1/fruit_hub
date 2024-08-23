import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';

import '../../domain/entites/user_entity.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  String email = '';
  String password = '';
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  static SignInCubit get(context) => BlocProvider.of(context);

  signInWithEmailAndPassword() async {
    if (_formNotValid()) return;
    emit(SignInLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SignUpFailure(
          message: failure.message,
        ),
      ),
      (userEntity) => emit(
        SignInSuccess(
          userEntity: userEntity,
        ),
      ),
    );
  }

  signInWithGoogle() async {
    emit(SignInGoogleLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SignUpFailure(
          message: failure.message,
        ),
      ),
      (userEntity) => emit(
        SignInSuccess(
          userEntity: userEntity,
        ),
      ),
    );
  }

  bool _formNotValid() {
    if (!formKey.currentState!.validate()) {
      autovalidateMode = AutovalidateMode.always;
      emit(SignInInitial());
      return true;
    }
    formKey.currentState!.save();
    return false;
  }
}
