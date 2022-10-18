import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/login/domain/repository/login_repository.dart';
import 'package:posts/src/features/login/presentation/usecase/login_usecase.dart';

class LoginUsecaseImpl implements LoginUsecase{
  LoginUsecaseImpl(this.repository);

  final LoginRepository repository;

  @override
  Future<Either<Failure, UserApp>> login(UserApp userApp) {
    return repository.login(userApp);
  }

}