import 'package:flutter/material.dart';
import 'package:provider_architecture_tut/ui/views/login_view.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          home: LoginView(),
        );
  }
}
