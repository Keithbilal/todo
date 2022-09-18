import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/pages/UI/languagechange.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  Future<void>setnoteValue(noteValue)async{
    final SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
    setState(() {

    });
  }
final notesController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
      ),
      body:Column(
        children:[ TextField(
          controller: notesController,
          decoration: const InputDecoration(
            hintText: 'Type Activity'
          ),
        )
      ]
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor:Colors.pink[300],
        onPressed:(){
            setnoteValue(notesController);
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LanguageChange(),
            ));
        },
          child: const Icon(Icons.add),

    )
    );
  }
}
