import 'dart:convert';

import 'package:posts/src/core/failures.dart';
import 'package:posts/src/core/util/api_client/api_client.dart';
import 'package:posts/src/features/login/domain/entity/user_app_model.dart';
import 'package:posts/src/features/login/infra/datasource/login_datasource.dart';

class LoginDatasourceImpl implements LoginDatasource {
  @override
  Future<UserApp> login(UserApp userApp) async {
    try {
      return await APIClient.post(
          '/user/login.php',
          queryParameters: {
            "empresa_id": "demonstracao1",
        },
          data: jsonEncode(userApp.toJson())
      ).then((response) async {
        final body = json.decode(response.data)['data'][0];
        return UserApp.fromJson(body);
      });

    } catch (_) {
      throw kAppFailure;
    }
  }
}
