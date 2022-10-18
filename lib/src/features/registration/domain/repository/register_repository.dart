
import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';

abstract class RegisterRepository {
  Future<Either<Failure, String>> registerUser(UserApp userApp);
}