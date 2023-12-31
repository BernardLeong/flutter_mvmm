import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/views/screens/HomeScreen.dart';
import 'package:flutter_mvvm_template/views/routes/generated_routes.dart';
import 'package:flutter_mvvm_template/model/services/service_locator.dart';

void main() async {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // on below line we are specifying title of our app
      title: 'GFG',
      // on below line we are hiding debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // on below line we are specifying theme
        primarySwatch: Colors.green,
      ),
      // First screen of our app
      home: const HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
      // initialRoute: isLogin ? '/home' : '/',
      initialRoute: '/',
    );
  }
}
