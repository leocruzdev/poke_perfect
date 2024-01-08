import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/logger_service.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://pokeapi.co/api/v2/',
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    final cacheManager = CacheManager();

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final cachedResponse = cacheManager.getResponse(options.uri.toString());
        if (cachedResponse != null) {
          LoggerService.logDebug('Returning cached data for ${options.uri}');
          return handler.resolve(cachedResponse);
        }

        LoggerService.logDebug(
            'Sending ${options.method} request to ${options.uri}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        cacheManager.setResponse(
            response.requestOptions.uri.toString(), response);

        LoggerService.logDebug(
            'Received response for ${response.requestOptions.uri}: ${response.statusCode} ${response.statusMessage}');
        LoggerService.logDebug('Response body: ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        LoggerService.logDebug(
            'Request to ${e.requestOptions.uri} failed with status ${e.response?.statusCode}: ${e.message}');
        if (e.response != null) {
          LoggerService.logDebug('Error response body: ${e.response?.data}');
        }
        return handler.next(e);
      },
    ));

    return dio;
  }
}

class CacheManager {
  final Map<String, Response> _cache = {};

  Response? getResponse(String key) {
    return _cache[key];
  }

  void setResponse(String key, Response response) {
    _cache[key] = response;
  }
}
