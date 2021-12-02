// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:bixos_project/core/error/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  NoParams();
  @override
  List<Object> get props => [];
}
