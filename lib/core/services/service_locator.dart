import 'package:fruit_hub/core/services/firebase_auth_services.dart';
import 'package:fruit_hub/features/auth/data/repos/auth_repo_implmentaion.dart';
import 'package:fruit_hub/features/auth/domain/reops/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // singleton for FirebaseAuthServices
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  //
  getIt.registerSingleton<AuthRepo>(
    AuthRepoimplmentaion(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
    ),
  );
}
