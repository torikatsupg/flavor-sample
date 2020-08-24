import 'package:flavor_sample/app_config.dart';
import 'package:flavor_sample/display_strings_app1.dart';
import 'package:flavor_sample/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "App 1",
    appInternalId: 1,
    stringResource: StringResourceApp1(),
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}