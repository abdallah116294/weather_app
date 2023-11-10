import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weathre/core/api/api_constant.dart';

class DioHelper {
 final Dio _dio;
  DioHelper(this._dio);
  Future<Map<String, dynamic>> getWeatherData(String cityName) async {
    try {
      var response = await _dio
          .get(ApiConstant.basUrl + ApiConstant.endPoint, queryParameters: {
        "q": cityName,
        "appid": ApiConstant.apikey,
      });
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        debugPrint('Error ${response.statusCode}');
        throw Exception("Error Exception ${response.statusCode}");
      }
    } catch (error) {
      debugPrint("$error");
      throw Exception("Error $error");
    }
  }
}
