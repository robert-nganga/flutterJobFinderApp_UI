import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jobfinder_ui/screens/homeScreen.dart';
import 'package:flutter_jobfinder_ui/screens/startScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[100],
        primarySwatch: Colors.grey,
      ),
      home: StartScreen(),
    );
  }
}

