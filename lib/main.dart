import 'package:flutter/material.dart';
import 'package:shopping_app/view/home_page.dart';
import 'package:shopping_app/view/login_page.dart';
import 'package:shopping_app/view/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

  final Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.ROUTE: (_) => LoginPage(),
    SignUpPage.ROUTE: (_) => SignUpPage(),
    HomePage.ROUTE: (_) => HomePage()
  };
}
