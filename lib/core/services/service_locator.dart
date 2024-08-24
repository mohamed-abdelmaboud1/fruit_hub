import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo_implmentaion.dart';
import '../../features/auth/domain/reops/auth_repo.dart';
import 'firebase_auth_services.dart';

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
