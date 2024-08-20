import 'package:firebase_auth/firebase_auth.dart';

import '../error/exceptions.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
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
      } else {
        throw CustomException(
          message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
        );
      }
    } catch (e) {
      throw CustomException(
        message: 'حدث خطأ، يرجى المحاولة لاحقاً.',
      );
    }
  }
}
