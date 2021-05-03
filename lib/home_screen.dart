import 'package:flutter/material.dart';
import 'package:c0vid/components/confirmed_card.dart' as confirmed;
import 'package:c0vid/components/active_card.dart' as active;
import 'package:c0vid/components/recovered_card.dart' as recovered;
import 'package:c0vid/components/deaths_card.dart' as deaths;

class CurrentCountry {
  static String currentcountry = 'CN';
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView(
          children: [
            Container(
              child: Column(children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 27),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        color: Colors.blue),
                    child: SingleChildScrollView(
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
                              CountryDropdown(
                                onChanged: (val) => setState(
                                  () => CurrentCountry.currentcountry = val,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 133,
                  width: 350,
                  child: SizedBox(
                      child: Container(
                    child: confirmed.ConfirmedCard(),
                  )),
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                ),
                Container(
                  height: 133,
                  width: 330,
                  child: SizedBox(
                      child: Container(
                    child: active.ActiveCard(),
                  )),
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                ),
                Container(
                  height: 133,
                  width: 330,
                  child: SizedBox(
                      child: Container(
                    child: recovered.RecoveredCard(),
                  )),
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                ),
                Container(
                  height: 133,
                  width: 330,
                  child: SizedBox(
                      child: Container(
                    child: deaths.DeathsCard(),
                  )),
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 25),
                ),
              ] // First Page,
                  ),
            )
          ],
        ),
        onRefresh: () async {
          await confirmed.fetchWorldData();
          await active.fetchWorldData();
        });
  }
}

class CountryDropdown extends StatelessWidget {
  static List<String> countries = ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'];
  static String country = CurrentCountry.currentcountry;
  final Function(String) onChanged;

  const CountryDropdown({
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: CurrentCountry.currentcountry,
          items: countries
              .map((e) => DropdownMenuItem(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 12.0,
                          child: Image.asset(
                            'assets/${e.toLowerCase()}_flag.png',
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          e,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    value: e,
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
