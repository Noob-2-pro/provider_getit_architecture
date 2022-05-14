import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture_tut/core/viewmodels/login_model.dart';
import 'package:provider_architecture_tut/locator.dart';
import 'package:provider_architecture_tut/ui/shared/app_colors.dart';
import 'package:provider_architecture_tut/ui/views/base_view.dart';
import 'package:provider_architecture_tut/ui/widgets/login_header.dart';

import '../../core/viewstate.dart';

class LoginView extends StatelessWidget {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          LoginHeader(controller: _textEditingController, validationMessage: model.errorMessage),
          model.state == ViewState.busy
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () async {
                    var loginSucces = await model.login(_textEditingController.text);
                    if (loginSucces) {
                      model.errorMessage = '';
                      Navigator.pushNamed(context, '/');
                    }
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white)),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                )
        ]),
      ),
    );
  }
}
