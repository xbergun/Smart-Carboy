import 'package:bixos_project/core/error/failure/failure.dart';
import 'package:bixos_project/core/usecase/usecase.dart';
import 'package:bixos_project/feature/credential/domain/entity/argument/login_param.dart';
import 'package:bixos_project/feature/credential/domain/entity/login.dart';
import 'package:bixos_project/feature/credential/domain/repo/credential_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase implements Usecase<Login, LoginParam> {
  final CredentialRepo credentialRepo;

  LoginUsecase({required this.credentialRepo});
  @override
  Future<Either<Failure, Login>> call(LoginParam params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
