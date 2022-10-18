import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/registration/domain/repository/register_repository.dart';
import 'package:posts/src/features/registration/presentation/usecase/register_usecase.dart';

class RegisterUsecaseImpl implements RegisterUsecase{
  RegisterUsecaseImpl(this.repository);

  final RegisterRepository repository;

  @override
  Future<Either<Failure, String>> registerUser(UserApp userApp) {
    return repository.registerUser(userApp);
  }

}