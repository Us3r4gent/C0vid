import 'package:flutter/material.dart';
import 'package:c0vid/components/confirmed_card.dart';
import 'package:c0vid/components/active_card.dart';

List<Widget> pages = [
  Container(
    child: Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Colors.blue),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Covid-19',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35))
                ],
              )
            ],
          )),
      Container(
        height: 133,
        width: 350,
        child: SizedBox(
            child: Container(
          child: ConfirmedCard(),
        )),
        margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
      ),
      Container(
        height: 133,
        width: 330,
        child: SizedBox(
            child: Container(
          child: ActiveCard(),
        )),
        margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
      ),
    ] // First Page,
        ),
  ),

  Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
        color: Colors.blue),
  ) // Second Page
];
