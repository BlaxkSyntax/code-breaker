import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:qouterthing/qouterviewer/view/viewqoute.dart';
import 'package:qouterthing/repository/homerepository.dart';

class AddQoute extends StatefulWidget {
  const AddQoute({Key? key}) : super(key: key);

  @override
  _AddQouteState createState() => _AddQouteState();
}

class _AddQouteState extends State<AddQoute> {
  final TextEditingController _qoute = TextEditingController();
  final TextEditingController _author = TextEditingController();
  Future<Quotes>? _futureQuote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Quote'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureQuote == null) ? buildColumn() : buildFutureBuilder(),
        ),
    );
  }

  Center buildColumn() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _qoute,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                ),
                TextField(
                  controller: _author,
                  decoration: const InputDecoration(hintText: 'Enter Title'),
                )
              ],
            )
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print(_qoute.text);
                    setState(() {
                      _futureQuote = HomeRepository()
                          .addQuote(_qoute.text, _author.text);
                    });
                  },
                  child: Text('Send'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ],
            )
          )
        ]
      )
    );
  }

  FutureBuilder<Quotes> buildFutureBuilder() {
    return FutureBuilder<Quotes>(
      future: _futureQuote,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.hasData
              ? QuotePage(item: snapshot.requireData)
              : Center(
                  child: CircularProgressIndicator(),
                );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
