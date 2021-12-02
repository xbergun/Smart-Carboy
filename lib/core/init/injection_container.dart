import 'package:bixos_project/feature/bottom_navigation_bar/viewmodel/bottom_navigation_bar_provider.dart';
import 'package:bixos_project/feature/credential/data/repo_impl.dart/credential_repo_impl.dart';
import 'package:bixos_project/feature/credential/domain/repo/credential_repo.dart';
import 'package:bixos_project/feature/credential/domain/usecase/login_usecase.dart';
import 'package:bixos_project/feature/credential/viewmodel/credential_provider.dart';
import 'package:bixos_project/feature/home/viewmodel/home_provider.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<BottomNavigationBarProvider>(() => BottomNavigationBarProvider());
  serviceLocator.registerLazySingleton<HomeProvider>(() => HomeProvider());

  //*Credential Repo
  serviceLocator.registerLazySingleton<CredentialRepo>(() => CredentialRepoImpl());
  //*Credential Usecase
  serviceLocator.registerLazySingleton(() => LoginUsecase(credentialRepo: serviceLocator()));
  //*Credential Provider
  serviceLocator.registerLazySingleton<CredentialProvider>(() => CredentialProvider());
}
