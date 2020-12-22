import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'constants/routes.dart';

void main() {
  runApp(FlutterBlocDemo());
}

class FlutterBlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: backgroundColor,
        fontFamily: 'Roboto',
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Bloc Demo',
      initialRoute: Routes.home,
      routes: Routes.routes,
    );
  }
}
