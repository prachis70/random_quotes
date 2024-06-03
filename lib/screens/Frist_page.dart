import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_quotes/utils/Global_var.dart';
import 'package:random_quotes/utils/quote_data.dart';

QuoteModel? quoteModel;

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  void initState()
  {
    quoteModel = QuoteModel();
    quoteModel!.quoteModelToList(quotelist);

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
            child:ListTile(
              title: Text(quoteModel!.quoteModelist[index].author!),
              subtitle: Text(quoteModel!.quoteModelist[index].author!),
            )
          ))
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random=Random();
          int x=random.nextInt(quoteModel!.quoteModelist.length);

          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text(quoteModel!.quoteModelist[x].author!),
              content: Text(quoteModel!.quoteModelist[x].quotes!),

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
      ),
    );
  }
}
