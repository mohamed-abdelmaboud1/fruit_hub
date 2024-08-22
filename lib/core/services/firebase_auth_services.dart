import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

import '../error/exceptions.dart';

class FirebaseAuthServices {
  // create user with email and password
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential.user!.uid); // print id of user

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuth.createUserWithEmailAndPassword: ${e.code} with message: ${e.message}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة جداً.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.',
        );
      } else if (e.code == 'invalid-email') {
        throw CustomException(
          message: 'عنوان البريد الإلكتروني غير صالح.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message: 'لا يوجد اتصال بالانترنت.',
        );
      } else {
        throw CustomException(
          message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
          errorCode: e.code,
        );
      }
    } catch (e) {
      throw CustomException(
        message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
      );
    }
  }

  // sign in with email and password
  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuth.signInWithEmailAndPassword: ${e.code} with message: ${e.message}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'الحساب غير موجود.');
      } else if (e.code == 'user-disabled') {
        throw CustomException(
          message: 'الحساب معطل.',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomException(
          message: 'كلمة المرور غير صحيحة.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message: 'لا يوجد اتصال بالانترنت.',
        );
      } else if (e.code == 'too-many-requests') {
        throw CustomException(
          message: 'تم تجاوز الحد الأقصى لعدد المحاولات، يرجى المحاولة لاحقاً.',
        );
      } else if (e.code == 'invalid-email' ||
          e.code == 'invalid-credential' ||
          e.code == 'INVALID_LOGIN_CREDENTIALS') {
        throw CustomException(
          message: 'عنوان البريد الإلكتروني غير صالح.',
        );
      } else {
        throw CustomException(
          message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
          errorCode: e.code,
        );
      }
    } catch (e) {
      throw CustomException(
        message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
      );
    }
  }
}
