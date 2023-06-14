import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/views/screens/HomeScreen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments;

    // Map args = settings.arguments as Map;
    // return MaterialPageRoute(
    //     builder: (_) => DefectDetailsScreen(
    //           defectId: args['id'],
    //           defect: args['types'],
    //           tripId: args['tripId'],
    //           totalDefect: args['totalDefect'],
    //         ));
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      // case '/alertPage':
      //   return MaterialPageRoute(builder: (_) => const AlertPage());
      // case '/insightsPage':
      //   Map args = settings.arguments as Map;
      //   return MaterialPageRoute(
      //       builder: (_) => InsightsPage(block_id: args['block_id']));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
