import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageChange extends StatefulWidget {
  const LanguageChange({Key? key}) : super(key: key);

  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  String? noteValue;
  void getnotes() async{
    final SharedPreferences pref= await SharedPreferences.getInstance();
    noteValue=pref.getString('noteData');
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change language',
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:
          
      Column(
        children:[ Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: noteValue==null?Text('Data'):Text(noteValue!),
          ),
        ),
      ]),
    );
  }
}
