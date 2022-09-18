import 'package:flutter/material.dart';

class ColorData {
  var name;
  var color;
  ColorData({this.name, this.color});
}
ColorData red=ColorData(
  name: 'Red',
  color:Colors.red
);
ColorData green=ColorData(
name: 'Green',
color:Colors.green
);
ColorData lime=ColorData(
    name: 'Lime',
    color: Colors.lime
);
ColorData yellow=ColorData(
    name: 'Yellow',
    color: Colors.yellow
);
ColorData blue=ColorData(
    name: 'Blue',
    color: Colors.blue
);
ColorData bluegrey=ColorData(
    name: 'Bluegrey',
    color: Colors.blueGrey
);
ColorData pink=ColorData(
    name: 'Pink',
    color: Color(0xFFF06292)
);
List <ColorData> colours=[red,green,blue,yellow,lime,bluegrey,pink];
