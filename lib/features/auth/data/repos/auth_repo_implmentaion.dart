import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../core/constants/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/services/database_service.dart';
import '../../../../core/services/firebase_auth_services.dart';
import '../../domain/entites/user_entity.dart';
import '../../domain/reops/auth_repo.dart';
import '../models/user_model.dart';

class AuthRepoimplmentaion extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;
  AuthRepoimplmentaion({
    required this.databaseService,
    required this.firebaseAuthServices,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );

      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      await addData(userEntity: userEntity);

      return right(userEntity);
    } on CustomException catch (e) {
      return left(
        ServerFailure(message: e.toString()),
      );
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

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(
        ServerFailure(message: e.toString()),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          message: 'An error Occurred , please try later',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    final user = await firebaseAuthServices.signInWithGoogle();
    return right(UserModel.fromFirebaseUser(user));
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    final user = await firebaseAuthServices.signInWithFacebook();
    return right(UserModel.fromFirebaseUser(user));
  }

  @override
  Future addData({required UserEntity userEntity}) async {
    try {
      await databaseService.addData(
        collection: Endpoints.usersCollection,
        data: userEntity.toJson(),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.addData: ${e.toString()}',
      );
    }
  }
}
