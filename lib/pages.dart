import 'package:flutter/material.dart';
import 'cards.dart';

List<Widget> pages = [
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
        color: Colors.blue),
    child: Container(
      child: Container(
        child: buildColoredCard(),
        decoration: BoxDecoration(
            /*borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            border: Border.all(
              width: 6,
              color: Colors.white,
            )*/
            ),
      ),
      margin: EdgeInsets.fromLTRB(30, 30, 30, 445),
    ),
  ), // First Page
  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
        color: Colors.blue),
  ) // Second Page
];
