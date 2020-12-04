import 'package:get_it/get_it.dart';
import 'package:my_website/services/api.dart';
import 'package:my_website/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
