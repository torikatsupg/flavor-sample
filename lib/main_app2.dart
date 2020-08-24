import 'package:flavor_sample/app_config.dart';
import 'package:flavor_sample/display_strings_app2.dart';
import 'package:flavor_sample/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "App 2",
    appInternalId: 2,
    stringResource: StringResourceApp2(),
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}