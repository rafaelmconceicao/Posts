import 'package:posts/src/features/login/domain/entity/user_app_model.dart';

abstract class LoginDatasource{
  Future<UserApp> login(UserApp userApp);
}