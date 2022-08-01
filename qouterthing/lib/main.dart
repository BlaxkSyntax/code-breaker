import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:qouterthing/home/view/homeview.dart';
import 'package:qouterthing/repository/homerepository.dart';


void main() {
  runApp(MyApp(quotes: HomeRepository().getAllQoutes()));
}

class MyApp extends StatelessWidget {
  final Future<List<Quotes>> quotes;
  const MyApp({ Key? key, required this.quotes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Qouter",
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(qoutes: quotes, title: 'title',),
    );
  }
}
