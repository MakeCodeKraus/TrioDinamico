import 'package:flutter/cupertino.dart';
import 'package:triodinamico/app/app.dart';
import 'package:triodinamico/screens/welcomePage.dart';
import 'package:triodinamico/screens/signin.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => SignIn(),
  'tabs': (BuildContext context) => App()
};
