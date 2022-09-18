import 'package:flutter/material.dart';
import 'package:todo/pages/UI/home.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  Color wowColor= Color(0xFFF06292);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'ToDo App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch:Colors.pink,
            primaryColor: wowColor,
        ),
        home:Home(),


    );
  }
}


