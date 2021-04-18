import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ActiveCard extends StatefulWidget {
  @override
  _ActiveCardState createState() => _ActiveCardState();
}

class _ActiveCardState extends State<ActiveCard> {
  Future _covidFuture;

  @override
  void initState() {
    super.initState();
    _covidFuture = fetchWorldData();
  }

  @override
  Widget build(BuildContext context) {
    return coloredCard();
  }

  Future<Map<String, dynamic>> fetchWorldData() async {
    Response response =
        await get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    return json.decode(response.body);
  }

  Widget coloredCard() => Card(
        shadowColor: Colors.lightBlueAccent,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              FutureBuilder(
                future: _covidFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data['active'].toString(),
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    );
                  } else {
                    return Text(
                      'Loading...',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      );
}
