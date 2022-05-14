import 'package:provider_architecture_tut/core/viewmodels/base_model.dart';
import 'package:provider_architecture_tut/locator.dart';

import '../services/authentication_service.dart';
import '../viewstate.dart';

class LoginModel extends BaseModel {
  final _authenticationService = locator<AuthenticationService>();
  String errorMessage = '';

  Future<bool> login(String userIdText) async {
    setState(ViewState.busy);

    var userId = int.tryParse(userIdText);

    if (userId == null) {
      errorMessage = 'kindly enter a value';
      setState(ViewState.idle);
      return false;
    }

    var success = await _authenticationService.login(userId);
    setState(ViewState.idle);
    return success;
  }
}
