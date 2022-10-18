import 'package:posts/src/features/login/domain/entity/user_app_model.dart';

abstract class RegisterDatasource{
  Future<String> registerUser(UserApp userApp);
}