import 'package:bixos_project/core/error/failure/failure.dart';

///400
class BadRequestFailure extends Failure {
  @override
  List<Object?> get props => [];
}

///401
class UnauthorizedFailure extends Failure {
  @override
  List<Object?> get props => [];
}

///403
class ForbiddenFailure extends Failure {
  @override
  List<Object?> get props => [];
}

///404
class NotFoundFailure extends Failure {
  @override
  List<Object?> get props => [];
}

///500
class InternalFailure extends Failure {
  @override
  List<Object?> get props => [];
}

///504
class GatewayTimeOutFailure extends Failure {
  @override
  List<Object?> get props => [];
}
