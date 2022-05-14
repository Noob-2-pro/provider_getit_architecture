import 'package:get_it/get_it.dart';
import 'package:provider_architecture_tut/core/viewmodels/login_model.dart';

import 'core/services/api.dart';
import 'core/services/authentication_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginModel());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());
}
