import 'package:flutter/material.dart';
import 'package:rushikesh/Screens/home_page.dart';
import 'package:rushikesh/Screens/login_page.dart';
import 'package:rushikesh/utils/routes.dart';
import 'package:rushikesh/Screens/start_page.dart';
import 'package:rushikesh/utils/theme.dart';
import 'Screens/start_page.dart';
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
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.StartRoute : (context) => StartPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage()
      },
    );
  }
}