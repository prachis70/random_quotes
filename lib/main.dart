import 'package:flutter/material.dart';
import 'package:random_quotes/screens/Frist_page.dart';
import 'package:random_quotes/screens/toggal/toggal.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
       // '/':(context) => Quotes(),
        '/':(context) => Toggle(),
      },
    );
  }
}
