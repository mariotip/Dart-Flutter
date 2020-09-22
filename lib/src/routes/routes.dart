import 'package:flutter/material.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/card_page.dart';
import 'package:contador/src/pages/contador.dart';
import 'package:contador/src/pages/alert_page.dart';
import 'package:contador/src/pages/avatar_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'counter': (BuildContext context) => Contador(),
  };
}
