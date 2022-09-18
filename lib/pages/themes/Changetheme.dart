import 'package:flutter/material.dart';
import 'package:todo/pages/Data/colortiles.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {

  void changeColor(Color newColor){
    if (newColor !=pickerColor){
    setState(() {
      pickerColor=newColor;
    });
  }
  }
  Color pickerColor=Color(0xFFF06292);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:pickerColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Change Theme',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: colours.length,
          itemBuilder: (BuildContext context, int index) {
            return
            GestureDetector(
              onTap: () {
                changeColor(colours[index].color);
              },
              child: Stack(children: [
                Container(
                  width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: colours[index].color,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(colours[index].name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ]),
            );},
          ),
        ));
  }
}