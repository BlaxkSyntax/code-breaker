import 'package:flutter/material.dart';
import 'package:qouterthing/home/model/homeMdel.dart';
import 'package:qouterthing/home/view/qoutebox.dart';
import 'package:qouterthing/qouterviewer/view/viewqoute.dart';

class QuotesBoxList extends StatelessWidget {
  final List<Quotes> items;
  const QuotesBoxList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return GestureDetector(
          child: QuoteBox(
            item: items[index]
          ),
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=> QuotePage(item: items[index]),
              )
            );
          },
        );
      }

    );
  }
}
