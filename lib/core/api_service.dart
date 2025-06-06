import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String apiKey = '90742fc15959c8e5ddc74153a5d1a092';

  // Fetch weather data using latitude and longitude
  Future<Map<String, dynamic>> getWeather(double lat, double lon) async {
    try {
      final response = await _dio.get(
        'https://api.openweathermap.org/data/2.5/forecast',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'appid': apiKey,
          'units': 'metric',
        },
      );
      return response.data;
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }

  // Fetch weather data using city name
  Future<Map<String, dynamic>> getWeatherByCity(String cityName) async {
    try {
      final response = await _dio.get(
        'https://api.openweathermap.org/data/2.5/forecast',
        queryParameters: {'q': cityName, 'appid': apiKey, 'units': 'metric'},
      );
      return response.data;
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
