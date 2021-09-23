import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:treevade/screens/main_screen/main_screen.dart';
import 'screens/filter_screen/filter_screen.dart';
import 'constants/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Constants().backgroundColor,

  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Constants().primaryColor,
      ),
      home:  const MainScreen(),
      routes: {
        FilterScreen.routeName: (ctx) =>const FilterScreen(),

      },
    );
  }
}
