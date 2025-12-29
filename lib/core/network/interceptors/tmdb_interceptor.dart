import 'package:dio/dio.dart';

import '../../../env.dart';

class TmdbInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Automatically add api_key to every request
    options.queryParameters.addAll({'api_key': Env.apiKey, 'language': 'en-US'});
    super.onRequest(options, handler);
  }
}
