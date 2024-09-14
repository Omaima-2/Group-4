import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future internetConn(BuildContext context) async {
  await actions.checkInternetConnection();
}
