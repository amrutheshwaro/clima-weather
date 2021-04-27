import 'package:flutter/material.dart';
import 'package:clima_weather/screens/loading_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

void main() async {
  await DotEnv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
