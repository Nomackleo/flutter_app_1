import 'package:flutter/material.dart';
import 'package:flutter_app_1/mainScreens/homeWidget.dart';
import 'package:flutter_app_1/utils/assetsImages.dart';
import 'package:flutter_app_1/utils/constantsApp.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.pink,
        // ignore: deprecated_member_use
        accentColor: Colors.lime,
        fontFamily: 'Poppins',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.lime,
      seconds: ConstantsApp.TIME_SPLASH_WIDGET,
      navigateAfterSeconds: HomeWidget(),
      image: AssetsImages.ImageLogo(),
    );
  }
}
