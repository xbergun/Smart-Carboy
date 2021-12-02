// ignore_for_file: non_constant_identifier_names

import 'package:bixos_project/core/error/failure/failure.dart';
import 'package:bixos_project/feature/credential/domain/entity/argument/login_param.dart';
import 'package:bixos_project/feature/credential/domain/entity/login.dart';
import 'package:dartz/dartz.dart';

abstract class CredentialRepo {
  Future<Either<Failure, Login>> login(LoginParam loginParam);
}
