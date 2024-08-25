import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo_implmentaion.dart';
import '../../features/auth/domain/reops/auth_repo.dart';
import 'database_service.dart';
import 'firebase_auth_services.dart';
import 'firestore_service.dart';

final getIt = GetIt.instance;

void setup() {
  // singleton for FirebaseAuthServices
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  //
  getIt.registerSingleton<AuthRepo>(
    AuthRepoimplmentaion(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );
}
