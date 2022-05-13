import 'package:flutter/material.dart';
import 'package:provider_architecture_tut/ui/shared/ui_helpers.dart';

import '../shared/text_styles.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController controller;
  final String validationMessage;

  const LoginHeader({required this.controller, this.validationMessage = ''});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Login', style: headerStyle),
      UIHelper.verticalSpaceMedium(),
      Text('Enter a number between 1 - 10', style: subHeaderStyle),
      LoginTextField(controller),
      validationMessage != null
          ? Text(validationMessage, style: const TextStyle(color: Colors.red))
          : Container()
    ]);
  }
}

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;

  const LoginTextField(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      height: 50.0,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
          decoration: const InputDecoration.collapsed(hintText: 'User Id'),
          controller: controller),
    );
  }
}
