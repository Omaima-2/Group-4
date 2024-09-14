import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future conn(BuildContext context) async {
  await actions.checkInternetConnection();
}
