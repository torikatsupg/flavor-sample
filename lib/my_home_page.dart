import 'package:flavor_sample/app_config.dart';
import 'package:flavor_sample/display_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config.appDisplayName),
      ),
      body: _buildBody(config.appDisplayName, config.stringResource),
    );
  }

  Widget _buildBody(String appName, StringResource stringResource) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Text(appName),
          Text(DATE + getDateForDisplay()),
          Text(stringResource.APP_DESCRIPTION),
        ],
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
