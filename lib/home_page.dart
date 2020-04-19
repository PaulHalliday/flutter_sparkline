import 'package:flutter/material.dart';
import 'package:flutter_sparkline/sparkline_chart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Analytics", style: TextStyle(color: Colors.black)),
          centerTitle: false,
          brightness: Brightness.light,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Column(
              children: <Widget>[
                Divider(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("OVERVIEW",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("REVENUE",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("DISCOVERY",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("AUDIENCE",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text("INTERACTIVE CONTENT",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white.withOpacity(0.85),
        body: Column(children: [
          SizedBox(
            height: 8,
          ),
          Container(
            height: 110,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Realtime views",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "48 Hours • Estimated views",
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("6,500"),
                    ],
                  ),
                  SparklineChart(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
