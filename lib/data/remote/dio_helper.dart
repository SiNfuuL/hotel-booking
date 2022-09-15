import 'package:dio/dio.dart';

import '../../constants/end_points.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,
    String? token
  }) async {
    DioError(requestOptions: RequestOptions(path: ''));
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':'Bearer $token'??'',
    };
    return await dio!.post(url, data: body);
  }

  static Future<Response> getData(
      {required String url, required String token ,Map<String,dynamic>? query}) async {
    dio!.options.headers = {
      //'Connection': 'keep-alive',
      'Accept': 'application/json',
      'Authorization':'Bearer $token'??'',
    };

    return await dio!.get(url,queryParameters:query! );
  }

}