import 'package:demomongodb/pages/customerlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo - API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/customerList",
      routes: <String, WidgetBuilder> {
        "/customerList": (BuildContext context) => CustomerList(),
      },
    );
  }
}
