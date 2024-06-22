import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_quotes/utils/Global_var.dart';

import 'package:random_quotes/utils/quote_data.dart';

import '../utils/Global_var.dart';

QuoteModel? quoteModel;

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  void initState()
  {
    quoteModel=QuoteModel.toList(quotelist);
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('🙏.Suvichaar.🙏',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(quoteModel!.quoteModelist.length, (index) => Card(
            color: colorList[index%colorList.length],
            child:ListTile(
              title: Text(quoteModel!.quoteModelist[index].quote!),
              subtitle: Text(quoteModel!.quoteModelist[index].author!),
              // title: Text(quoteModel.quoteModelist[index].quotes),
              // //subtitle: Text(quoteModel!.quoteModelist[index].author!),


            )
          ))
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index++;
          });
          Random random=Random();
          int x=random.nextInt(quoteModel!.quoteModelist.length);

          showDialog(context: context, builder: (context) {
            return AlertDialog(
              backgroundColor: colorList[x%colorList.length],
              title: Text(quoteModel!.quoteModelist[x].author!),
              content: Text(quoteModel!.quoteModelist[x].quote!),

              actions: [
                TextButton(onPressed: () {

                }, child: Text('save'),),
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text('back'),),
              ],
            );
          },
          );
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
int index=0;
