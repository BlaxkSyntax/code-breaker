import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';

class QuoteBox extends StatelessWidget {
  final Quotes item;
  const QuoteBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(item.name);
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(item.text),
            Text(item.name)
          ],
        ),
      ),
    );
  }
}
