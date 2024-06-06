import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:random_quotes/utils/toggle_model.dart';

import '../../utils/toggle_list.dart';



// import '../utils/Global_var.dart';

QuoteModel? quoteModel;
bool xh=false;

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
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
        actions: [
         GestureDetector(

             onTap: () {
               setState(() {
                 xh=!xh;

               });
             },


             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(xh?Icons.list_alt:Icons.grid_3x3),
             )
        )
        ],
      ),
      body: (xh)?
   GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 9/16), itemBuilder: (context, index) => Card(
       color: colorList[index%colorList.length],
       child:ListTile(
         title: Text(quoteModel!.quoteModelist[index].quote!),
         subtitle: Text(quoteModel!.quoteModelist[index].author!),
         // title: Text(quoteModel.quoteModelist[index].quotes),
         // //subtitle: Text(quoteModel!.quoteModelist[index].author!),


       )
   )


    )
          : ListView.builder(itemBuilder: (context, index) =>
          Card(
            color: colorList[index%colorList.length],
            child: Column(children: [
              ListTile(
                title: Text(quoteModel!.quoteModelist[index].quote!),
                subtitle: Text(quoteModel!.quoteModelist[index].author!),
              )
            ]),

          )
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