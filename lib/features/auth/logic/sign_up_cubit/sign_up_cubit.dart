import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entites/user_entity.dart';
import '../../domain/reops/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  static SignUpCubit get(context) => BlocProvider.of(context);

  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  String name = '';
  String email = '';
  String password = '';
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  signUpWithEmailAndPassword() async {
    if (_formNotValid()) return;

    emit(SignUpLoading());
    var result = await authRepo.createUserWithEmailAndPassword(email, password);
    log('result: $result');
    result.fold(
      (failure) => emit(SignUpFailure(message: failure.message)),
      (user) {
        emit(SignUpSuccess(userEntity: user));
      },
    );
  }

  bool _formNotValid() {
    if (!formKey.currentState!.validate()) {
      autovalidateMode = AutovalidateMode.always;
      emit(SignUpInitial());
      return true;
    }
    formKey.currentState!.save();
    return false;
  }
}
