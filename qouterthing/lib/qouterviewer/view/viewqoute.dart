import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';

class QuotePage extends StatelessWidget {
  final Quotes item;
  const QuotePage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("quote"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.item.text),
              Text(this.item.name),
            ],
          ),
        )
      ),
    );
  }
}
