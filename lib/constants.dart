import 'package:flutter/material.dart';

InputDecoration kDecorationTextField = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 1.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 2.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
  hintText: 'Your name',
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.purple.shade700,
      width: 5.0,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);

TextStyle kcalendartopicstyle = const TextStyle(
    color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold);

TextStyle kcalendardate = const TextStyle(
    color: Colors.purple, fontFamily: 'sourcesanspro', fontSize: 12);

TextStyle knewstopic = const TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10);

TextStyle knewsdate = TextStyle(
    letterSpacing: 1,
    color: Colors.purple.shade600,
    fontWeight: FontWeight.bold,
    fontSize: 8);

const Color kcorrectanswer = Color(0xFF32AB58);

const Color kincorrectanswer = Color(0xFFAB3232);

const Color kneutralanswer = Color(0xFFE7E7E7);
