import 'package:flutter/material.dart';
import 'package:random_quotes/screens/Frist_page.dart';
void main()
{
  runApp(Random_quotes());
}
class Random_quotes extends StatelessWidget {
  const Random_quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context) => Quotes(),
      },
    );
  }
}
