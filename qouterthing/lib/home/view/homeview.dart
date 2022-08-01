import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:qouterthing/qouteadder/view/add.dart';

import 'boxlist.dart';

class HomeView extends StatelessWidget {
  final String title;
  final Future<List<Quotes>> qoutes;
  const HomeView({Key? key, required this.title, required this.qoutes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("qoutes"),
      ),
      body: Column(children: [
        Expanded(
          flex: 6,
          child: Center(
            child: FutureBuilder<List<Quotes>>(
              future: qoutes,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return snapshot.hasData
                    ? QuotesBoxList(items: snapshot.requireData)
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  child: Text("add"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddQoute()));
                  })
            ])),
      ]),
    );
  }
}
