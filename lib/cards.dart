import 'package:flutter/material.dart';

Widget buildColoredCard() => Card(
      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.red[500], Colors.red[500]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comfirmed',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '0',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
