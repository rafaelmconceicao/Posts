import 'package:dio/dio.dart';
import 'package:posts/src/core/util/api_client/api_exception.dart';

class APIClient {
  Dio? _dio;

  BaseOptions options = BaseOptions(
    baseUrl: 'https://mssoftdigital.com.br/apps/demonstracao1_flutter/ws',
    queryParameters: {
      "apiToken" : "ed1c61b2e3b03fe9df8ikhehs4ep9zar",
      "apiTokenValidacao": "WlVVS0lfMDAxNF9WUEJVLSUzOTk0Lio98uThe34dkwo78eax"
    },
  );

  Dio instance() => _dio!;

  APIClient() {
    _dio ??= Dio(options);

    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onError: (DioError error, ErrorInterceptorHandler handler) async {
        if (
          error.response?.statusCode == 401
        ) {
          handler.reject(APIException(error));
        } else {
          handler.reject(APIException(error));
        }
      },
      onRequest: (
        RequestOptions options,
        RequestInterceptorHandler handler,
      ) async {

        handler.next(options);
      },
    ));
  }

  static Future<Response<T>> delete<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final client = APIClient();
    return client.instance().put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  static Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final client = APIClient();
    return client.instance().get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  static Future<Response<T>> patch<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final client = APIClient();
    return client.instance().patch(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  static Future<Response<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final client = APIClient();
    return client.instance().post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  static Future<Response<T>> put<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final client = APIClient();
    return client.instance().put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  static Future<Response<T>> request<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final client = APIClient();
    return client.instance().request(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}