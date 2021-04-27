import 'package:clima_weather/services/networking.dart';
import 'package:clima_weather/services/location.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const openWeatherMap = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper();
    String url =
        '$openWeatherMap?lat=${location.latitude}&lon=${location.longitude}&appid=' +
            env['API_KEY'] +
            '&units=metric';
    Map data = await networkHelper.getWeatherData(url: url);
    return data;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper();
    String url =
        '$openWeatherMap?q=$cityName&appid=' + env['API_KEY'] + '&units=metric';
    Map data = await networkHelper.getWeatherData(url: url);
    print(data);
    return data;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
