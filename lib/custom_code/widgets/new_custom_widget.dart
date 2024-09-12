// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal Checkbox Group'),
        ),
        body: Center(
          child: HorizontalCheckboxGroup(),
        ),
      ),
    );
  }
}

class HorizontalCheckboxGroup extends StatefulWidget {
  @override
  _HorizontalCheckboxGroupState createState() =>
      _HorizontalCheckboxGroupState();
}

class _HorizontalCheckboxGroupState extends State<HorizontalCheckboxGroup> {
  List<bool> _isChecked = [
    false,
    false,
    false
  ]; // Initial values for the checkboxes

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the checkboxes horizontally
      children: [
        CheckboxListTile(
          title: Text('Option 1'),
          value: _isChecked[0],
          onChanged: (bool? value) {
            setState(() {
              _isChecked[0] = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text('Option 2'),
          value: _isChecked[1],
          onChanged: (bool? value) {
            setState(() {
              _isChecked[1] = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text('Option 3'),
          value: _isChecked[2],
          onChanged: (bool? value) {
            setState(() {
              _isChecked[2] = value!;
            });
          },
        ),
      ],
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
