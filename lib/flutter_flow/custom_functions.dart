import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? newCustomFunction(String phoneNum) {
  // a phone number validator, total 10 numbers start with 05
  if (phoneNum.length != 10) {
    return false;
  }
  if (!phoneNum.startsWith('05')) {
    return false;
  }
  return true;
}

String? newCustomFunction2(String? password) {
  // i wnat the password to be Minimum length (e.g., at least 8 characters) At least one uppercase letter At least one lowercase letter At least one digit At least one special character
  if (password == null || password.isEmpty) {
    return 'Password cannot be empty';
  }
  if (password.length < 8) {
    return 'Password must be at least 8 characters long';
  }
  if (!password.contains(RegExp(r'[A-Z]'))) {
    return 'Password must contain at least one uppercase letter';
  }
  if (!password.contains(RegExp(r'[a-z]'))) {
    return 'Password must contain at least one lowercase letter';
  }
  if (!password.contains(RegExp(r'[0-9]'))) {
    return 'Password must contain at least one digit';
  }
  if (!password.contains(RegExp(r'[!@#\$%\^&\*]'))) {
    return 'Password must contain at least one special character';
  }
  return null;
}
