import 'package:flutter/material.dart';
import 'components/symptom_card.dart';
import 'components/probability_card.dart';
import 'pages.dart';

class MiscScreen extends StatefulWidget {
  @override
  _MiscScreenState createState() => _MiscScreenState();
}

class _MiscScreenState extends State<MiscScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 27),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            color: Colors.blue),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('C0VID',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
                FloatingActionButton.extended(
                  label: Text(
                    'Take Quiz',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: 0.5,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(children: [
            Text(
              'Symptoms',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SymptomCard(
                  image: "assets/headache.png",
                  title: "Headache",
                  isActive: true,
                ),
                SymptomCard(
                  image: "assets/caugh.png",
                  title: "Caugh",
                  isActive: true,
                ),
                SymptomCard(
                  image: "assets/fever.png",
                  title: "Fever",
                  isActive: true,
                ),
              ],
            ),
            Container(
              height: 117,
              width: 350,
              child: SizedBox(
                  child: Container(
                child: ProbCard(),
              )),
              margin: EdgeInsets.only(top: 30),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 35),
              height: 180,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEAEAEA),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(7, 7),
                    blurRadius: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Image.asset(
                "assets/map.png",
                scale: 1.2,
                fit: BoxFit.scaleDown,
              ),
            )
          ]))
    ]));
  }
}
