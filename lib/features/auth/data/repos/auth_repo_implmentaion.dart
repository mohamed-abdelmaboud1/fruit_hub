import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/services/firebase_auth_services.dart';
import '../../domain/entites/user_entity.dart';
import '../../domain/reops/auth_repo.dart';
import '../models/user_model.dart';

class AuthRepoimplmentaion extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoimplmentaion({
    required this.firebaseAuthServices,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      ); 
      return left(
        ServerFailure(
          message: 'An error Occurred , please try later',
        ),
      );
    }
  }
}
