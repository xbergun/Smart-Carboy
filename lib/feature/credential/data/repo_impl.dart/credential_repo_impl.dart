import 'package:bixos_project/feature/credential/domain/entity/login.dart';
import 'package:bixos_project/feature/credential/domain/entity/argument/login_param.dart';
import 'package:bixos_project/core/error/failure/failure.dart';
import 'package:bixos_project/feature/credential/domain/repo/credential_repo.dart';
import 'package:dartz/dartz.dart';

class CredentialRepoImpl implements CredentialRepo {
  @override
  Future<Either<Failure, Login>> login(LoginParam loginParam) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
