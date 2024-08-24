import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  // sign with google account
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  // sign with facebook account
  Future<Either<Failure, UserEntity>> signInWithFacebook();

}
