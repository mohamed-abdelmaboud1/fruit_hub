import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  signUPWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignUpLoading());
    var result = await authRepo.createUserWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SignUpFailure(message: failure.message)),
      (user) {
        emit(SignUpSuccess(userEntity: user));
      },
    );
  }
}
