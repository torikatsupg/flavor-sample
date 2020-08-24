import 'package:flavor_sample/app_config.dart';
import 'package:flavor_sample/my_home_page.dart';
import 'package:flutter/material.dart';

void mainCommon() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config.appDisplayName);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}



