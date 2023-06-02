import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:noldanmobililova/pages/CartPage.dart';
import 'package:noldanmobililova/pages/HomePage.dart';
import 'package:noldanmobililova/pages/ItemPage.dart';
import 'package:noldanmobililova/pages/MenuPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final InitializationSettings initializationSettings = InitializationSettings(
    android: AndroidInitializationSettings('1.png'),
    // iOS: IOSInitializationSettings(),
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "menuPage": (context) => MenuPage(),
      },
      // navigatorObservers: [
      //   FlutterLocalNotificationsPlugin().resolvedNavigationObserver,
      // ],
    );
  }
}
