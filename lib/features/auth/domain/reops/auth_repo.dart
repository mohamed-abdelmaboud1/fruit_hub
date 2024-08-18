import 'package:dartz/dartz.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}
