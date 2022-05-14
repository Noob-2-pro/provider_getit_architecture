import 'package:flutter/material.dart';
import 'package:provider_architecture_tut/ui/views/home_view.dart';
import 'package:provider_architecture_tut/ui/views/login_view.dart';
import 'package:provider_architecture_tut/ui/views/post_view.dart';

class RouterClass {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomeView(),
        );
      case 'login':
        return MaterialPageRoute(
          builder: (context) => LoginView(),
        );
      case 'post':
        return MaterialPageRoute(
          builder: (context) => const PostView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("no route defined for ${settings.name} "),
            ),
          ),
        );
    }
  }
}
