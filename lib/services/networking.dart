import 'package:http/http.dart' as http;

import 'dart:convert';

class NetworkHelper {
  Future getWeatherData({String url}) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
