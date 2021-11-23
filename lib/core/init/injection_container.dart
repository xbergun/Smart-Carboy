import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<HomeProvider>(() => HomeProvider());
}
