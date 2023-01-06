// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'dio_provider.g.dart';

// @riverpod
// Dio dio(DioRef ref) {
//   final dio = Dio();
//   dio.interceptors.add(EncodingInterceptor());
//   return dio;
// }

// class EncodingInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     if (options.queryParameters.isEmpty) {
//       super.onRequest(options, handler);
//       return;
//     }

//     final queryParams = _getQueryParams(options.queryParameters);
//      handler.next(
//       options.copyWith(
//         path: _getNormalizedUrl(options.path, queryParams),
//         queryParameters: Map.from({}),
//       ),
//     );
//   }

//   String _getNormalizedUrl(String baseUrl, String queryParams) {
//     if (baseUrl.contains("?")) {
//       return "$baseUrl&$queryParams";
//     } else {
//       return "$baseUrl?$queryParams";
//     }
//   }

//   String _getQueryParams(Map<String, dynamic> map) {
//     String result = "";
//     map.forEach((key, value) {
//       debugPrint('dio param: $value');
//       if (value is String) {
//         // ignore: noop_primitive_operations
//         result += value.toString().contains(',')
//             ? "$key=$value&"
//             : "$key=${Uri.encodeComponent(value)}&";
//       } else {
//         result += "$key=$value&";
//       }
//     });
//     debugPrint('dio result: $result');
//     return result;
//   }
// }
