import 'package:flutter/material.dart';

import './page/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  App({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,

    title: 'GoMoon',
    theme: ThemeData(
      scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
    ),
    home: HomePage(),
    );
  }
}

