import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entites/user_entity.dart';

import '../../domain/reops/auth_repo.dart';

class AuthRepoimplmentaion extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password) {
    
  }
}
