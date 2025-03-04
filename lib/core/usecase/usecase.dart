import 'package:blog_bit/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class Usecase<SuccesType, Params> {
  Future<Either<Failure, SuccesType>> call(Params params);
}
