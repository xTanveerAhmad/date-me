
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

const appColor = Color(0xFFf62354);

simpleInput(val) {
  return InputDecoration(
    hintText: '$val',
    contentPadding: const EdgeInsets.all(0),
    hintStyle: const TextStyle(color: Colors.grey),
    border: underlineInputBorder(),
    focusedBorder: underlineInputBorder(),
    enabledBorder: underlineInputBorder(),
  );
}

underlineInputBorder() {
  return const UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.black12));
}

BorderedButton() {
  return ElevatedButton.styleFrom(
      foregroundColor: style.appColor, backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          side: BorderSide(color: style.appColor, width: 1)),
      elevation: 0);
}

FillButton() {
  return ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: style.appColor,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      elevation: 0);
}

FacebookButton() {
  return ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: (const Color(0xFF395697)),
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
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
