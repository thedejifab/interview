import 'package:app/pages/cals_burned.dart';
import 'package:app/pages/map.dart';
import 'package:app/pages/step_counts.dart';
import 'package:app/widgets/single_score.dart';
import 'package:app/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Icon(Icons.menu),
                            Expanded(child: SizedBox()),
                            Text(
                              "AL",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40))),
                          height: 250,
                          width: screenWidth * 0.75,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 100.0, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "1,228",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Steps today",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  "89 cals. 15 km/s ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "You'll have to walk 1.5km more",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: -50,
                          top: 100,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("This Month's Activity"),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SummaryCard(),
                              SizedBox(width: 20),
                              SummaryCard(),
                              SizedBox(width: 20),
                              SummaryCard(),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Body Score",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "30 June 2019. 2pm",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    trailing: Text(
                                      "95%",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: SingleScore()),
                                    Expanded(child: SingleScore()),
                                    Expanded(child: SingleScore()),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    "All good on you. This is the description beneath tab. This is the description",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Icon(Icons.looks_one),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CalsBurned(),
                  ));
                },
                child: Container(
                  child: Icon(Icons.looks_two),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StepCounts(),
                  ));
                },
                child: Container(
                  child: Icon(Icons.looks_3),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ));
                },
                child: Container(
                  child: Icon(Icons.looks_4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
