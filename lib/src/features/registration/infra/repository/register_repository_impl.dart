import 'package:dartz/dartz.dart';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/registration/domain/repository/register_repository.dart';
import 'package:posts/src/features/registration/infra/datasource/register_datasource.dart';

class RegisterRepositoryImpl implements RegisterRepository{
  RegisterRepositoryImpl(this.datasource);

  final RegisterDatasource datasource;

  @override
  Future<Either<Failure, String>> registerUser(UserApp userApp) async {
    try {
      return Right(await datasource.registerUser(userApp));
    } on Failure catch (e) {
    return Left(e);
    } catch (_) {
    return const Left(AppFailure());
    }
  }

}