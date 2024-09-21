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
import '/backend/schema/enums/enums.dart';
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

String? newCustomFunction3(String? pass2) {
  if (pass2 == null || pass2.isEmpty) {
    return 'Password cannot be empty.';
  }

  if (pass2.length < 8) {
    return 'Password must be at least 8 characters long.';
  }
  bool hasUppercase = pass2.contains(RegExp(r'[A-Z]'));
  bool hasLowercase = pass2.contains(RegExp(r'[a-z]'));
  if (!hasUppercase || !hasLowercase) {
    return 'Password must contain both uppercase and lowercase letters.';
  }
  if (RegExp(r'[\u0600-\u06FF]').hasMatch(pass2)) {
    return 'Password cannot contain Arabic characters.';
  }
  return null;
}

String newCustomFunction4(String? name) {
  // Regular expression to match only alphabetic characters (English and Arabic) and spaces
  final RegExp nameRegex =
      RegExp(r'^[A-Za-z\u0621-\u064A\s]+$'); // Added $ to ensure full match

  // Check if the name matches the regex
  if (nameRegex.hasMatch(name!)) {
    return name; // Return '.' for valid name
  } else {
    return 'الرجاء ادخال الاسم بدون ارقام او رموز'; // Return error message in Arabic for invalid format
  }
}

String validateEmail(String email) {
  // Updated regex pattern for better email validation
  final RegExp emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  // Check if the email matches the regex pattern
  if (emailRegex.hasMatch(email)) {
    return email; // Return message for valid email
  } else {
    return 'البريد الالكتروني غير صحيح'; // Return message for invalid email format
  }
}

String validatePhoneNumber(String phoneNumber) {
  // Regular expression to match a phone number starting with '05' and exactly 10 digits long
  final RegExp phoneRegex = RegExp(r'^05\d{8}$');

  // Check if the phone number matches the regex pattern
  if (phoneRegex.hasMatch(phoneNumber)) {
    return phoneNumber; // Return message for valid phone number
  } else {
    return 'رقم الهاتف غير صحيح'; // Return message for invalid phone number
  }
}

String validatePassword(String password) {
  // Regular expression to validate:

  // Check if the password is tohort
  if (password.length < 8) {
    return 'كلمة المرور غير صحيحة';
  }

  // If all conditions are met, return valid message
  return password;
}
