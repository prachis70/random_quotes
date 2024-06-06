import 'package:flutter/material.dart';

class QuoteModel
{
  String? author;
  String? quote;
  List <QuoteModel> quoteModelist=[];

  QuoteModel({this.author,this.quote});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote']);
  }

  // void quoteModelToList(List l1)
  // {
  //   for(int i=0;i<l1.length;i++)
  //   {
  //     quoteModelist.add(QuoteModel.formQuotes(l1[i]));
  //   }
  // }

QuoteModel.toList(List l1)
{
  for(int i=0;i<l1.length;i++)
    {
      quoteModelist.add(QuoteModel.fromQuotes(l1[i]));
    }

}
  //
  // static QuoteModel? toList(quotesList) {}

}
List colorList=[
  Colors.pink,
  Colors.white,
  Colors.yellow,
  Colors.green,
  Colors.amber,
  Colors.teal,
  Colors.grey,
  Colors.pink,
  Colors.white,
  Colors.yellow,
  Colors.green,
  Colors.amber,
  Colors.teal,
  Colors.grey,


];