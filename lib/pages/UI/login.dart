import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      title:'Login',
      home:Login(),
    )
);
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          Container(
            padding:EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 80.0, fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
            child: Text(
              'There.',
              style: TextStyle(
                fontSize: 80.0, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}