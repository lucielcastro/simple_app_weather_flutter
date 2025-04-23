// import 'package:equatable/equatable.dart';

// class Weather extends Equatable {
//   final String cityName;
//   final double temperature;
//   final int humidity;
//   final double windSpeed;
//   final String condition;
//   final String icon;
//   final List<Forecast> forecast;

//   Weather({ required this.cityName, required this.temperature, required this.humidity, required this.windSpeed, required this.condition, required this.icon, required this.forecast});

//   factory Weather.fromJson(Map<String, dynamic> json){
//     Map<String, Forecast> dailyForecast = {};

//     for(var e in json['list']){
//       String date = e['td_txt'].split("")[0]; //Extract YYYY-MM-DD
//       if(!dailyForecast.containsKey(date)){
//         dailyForecast[date] = Forecast(date: date, minTemp: e['main']['min_temp'].toDouble(), maxTemp: e['main']['max_temp'].toDouble(), condition: e['weather'][0]['main'], icon:  e['weather'][0]['icon'],);
//       }
//     }
//     return Weather(cityName: cityName, temperature: temperature, humidity: humidity, windSpeed: windSpeed, condition: condition, icon: icon, forecast: forecast)
//   }
// }



// class Forecast {
//   final String date;
//   final double minTemp;
//   final double maxTemp;
//   final String condition;
//   final String icon;

//   Forecast({
//     required this.date,
//     required this.minTemp,
//     required this.maxTemp,
//     required this.condition,
//     required this.icon,
//   });
// }
