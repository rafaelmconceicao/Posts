
import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserApp>> login(UserApp userApp);
}