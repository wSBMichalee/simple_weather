import 'dart:convert';

import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    // http://api.weatherapi.com/v1/current.json?key=0b2ada6bad544522a92115226250903&q=Luxembourg &aqi=no
    final json = await _weatherRemoteDataSource.getWeatherData(
      city: city,
    );
    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
