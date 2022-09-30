import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter News App',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
