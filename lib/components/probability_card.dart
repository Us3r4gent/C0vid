import 'package:flutter/material.dart';

class ProbCard extends StatefulWidget {
  @override
  _ProbCardState createState() => _ProbCardState();
}

class _ProbCardState extends State<ProbCard> {
  Future covidFuture;

  @override
  @override
  Widget build(BuildContext context) {
    return coloredCard();
  }

  Widget coloredCard() => Card(
        shadowColor: Colors.orangeAccent,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Probability - Base on AI',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '0.0529835628%',
                style: TextStyle(
                    fontSize: 36.3,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
}
