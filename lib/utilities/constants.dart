import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
  color: Colors.white,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
  color: Colors.white,
);

const kButtonTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 30.0,
  color: Colors.white,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
  color: Colors.white,
);

const kTextField = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter a City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide.none,
  ),
);
