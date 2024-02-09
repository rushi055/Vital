import 'package:flutter/material.dart';
import 'package:rushikesh/home_page.dart';
import 'package:rushikesh/login_page.dart';
import 'package:rushikesh/routes.dart';
import 'package:rushikesh/start_page.dart';
import 'package:rushikesh/theme.dart';
import 'start_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.StartRoute : (context) => StartPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage()
      },
    );
  }
}