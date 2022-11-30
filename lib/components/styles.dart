/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

const appColor = Color(0xFFf62354);

simpleInput(val) {
  return InputDecoration(
    hintText: '$val',
    contentPadding: EdgeInsets.all(0),
    hintStyle: TextStyle(color: Colors.grey),
    border: underlineInputBorder(),
    focusedBorder: underlineInputBorder(),
    enabledBorder: underlineInputBorder(),
  );
}

underlineInputBorder() {
  return UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.black12));
}

BorderedButton() {
  return ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: style.appColor,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          side: BorderSide(color: style.appColor, width: 1)),
      elevation: 0);
}

FillButton() {
  return ElevatedButton.styleFrom(
      primary: style.appColor,
      onPrimary: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      elevation: 0);
}

FacebookButton() {
  return ElevatedButton.styleFrom(
      primary: (const Color(0xFF395697)),
      onPrimary: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      elevation: 0);
}

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a Value',
  filled: false,
  hintStyle: TextStyle(color: Colors.black12),
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: style.appColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: style.appColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
  ),
);
