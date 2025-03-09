import 'package:dio/dio.dart';


class WeatherRemoteDataSource {


  
  Future<Map<String , dynamic>?> getWeatherData({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=0b2ada6bad544522a92115226250903&q=Luxembourg &aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=0b2ada6bad544522a92115226250903&q=$city&aqi=no');

    return response.data;
  }
}
