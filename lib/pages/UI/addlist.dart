import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/pages/UI/activitiesedit.dart';


class Addlist extends StatefulWidget {
  const Addlist({Key? key}) : super(key: key);

  @override
  State<Addlist> createState() => _AddlistState();
}

class _AddlistState extends State<Addlist> {
  String? noteValue;
  List<Addlist> listDynamic = [];

  removeDynamic() {
    if(listDynamic.length>0){
      listDynamic.removeAt(0);
      setState(() {});
    }
  }
  void getnotes() async{
    final SharedPreferences pref= await SharedPreferences.getInstance();
    noteValue=pref.getString('noteData');
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Activities(),
        ));
      },
      child: Stack(
        children: [Container(
          width: 200.0,
          height: 200.0,
          margin:
              EdgeInsets.only(left: 20.0, right: 10.0, bottom: 20.0, top: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //TODO
                  child: noteValue==null?Text('Data'):Text(noteValue!),
                ),
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert_rounded),
                      iconSize: 30.0,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete),
                              Text('Delete'),
                            ],
                          ),
                          onTap:(){
                            removeDynamic;
                            },
                        ),
                      ],
                ),
              ],
            ),
          ),
        ),
      ]
      ),
    );
  }
}

