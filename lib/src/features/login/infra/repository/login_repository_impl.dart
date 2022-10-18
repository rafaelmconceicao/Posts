import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/login/domain/repository/login_repository.dart';
import 'package:posts/src/features/login/infra/datasource/login_datasource.dart';

class LoginRepositoryImpl implements LoginRepository{
  LoginRepositoryImpl(this.datasource);

  final LoginDatasource datasource;

  @override
  Future<Either<Failure, UserApp>> login(UserApp userApp) async {
    try {
      return Right(await datasource.login(userApp));
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

}