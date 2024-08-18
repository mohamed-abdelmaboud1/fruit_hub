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
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'The account already exists for that email.',
        );
      } else if (e.code == 'invalid-email') {
        throw CustomException(
          message: 'The email address is not valid.',
        );
      } else
        throw CustomException(
          message: 'An error Occurred , please try later',
        );
    } catch (e) {
      throw CustomException(
        message: 'An error Occurred , please try later',
      );
    }
  }
}
