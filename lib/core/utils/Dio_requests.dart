import 'package:dio/dio.dart';

abstract class Api {
  static const _baseUrl = 'https://techtitans.puiux.org/api';
  static final Dio _dio = Dio();
  static get({required String endPoint, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      var response = await _dio.get(_baseUrl + endPoint,
          options: Options(headers: headers));
      if (response.statusCode == 200 && response.data != null) {
        return response.data;
      } else {
        print("Error in <statusCode> Your's = ${response.statusCode}\n");
        throw Exception("${response.data}");
      }
    } catch (error) {
      print(error.toString());
    }
  }

  static post({
    required endPoint,
    required body,
  }) async {
    try {
      var response = await _dio.post(_baseUrl + endPoint, data: body);
      if ((response.statusCode == 200 || response.statusCode == 201) &&
          response.data != null) {
        return response.data;
      } else {
        print("Error in <statusCode> Your's = ${response.statusCode}\n");
        print(_baseUrl + endPoint);
      }
    } catch (error) {
      print(error.toString());
      print(_baseUrl + endPoint);
    }
  }
/* 
  static put({required url, required body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    dio.Response response =
        await d.put(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print("Error in <statusCode> Your's = ${response.statusCode}\n");
      throw Exception("${jsonDecode(response.body)}");
    }
  } */
}
