import 'dart:convert';
import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/util/api_client/api_client.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/registration/infra/datasource/register_datasource.dart';

class RegisterDatasourceImpl implements RegisterDatasource {
  @override
  Future<String> registerUser(UserApp userApp) async {
    try {
      return await APIClient.post('/user/post.php',
              queryParameters: {
                "empresa_id": "demonstracao1",
              },
              data: jsonEncode(userApp.toJson()))
          .then((response) async {
        String body = json.decode(response.data)['data'];
        return body;
      });
    } catch (_) {
      throw kAppFailure;
    }
  }
}
