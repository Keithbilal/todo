import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/pages/UI/languagechange.dart';
import 'package:todo/pages/themes/Changetheme.dart';


void main() {
  runApp(const Navbar());
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200.0,
            color:Theme.of(context).primaryColor,
          ),
         ListTile(
            leading: FaIcon(FontAwesomeIcons.checkDouble),
            title: Text('Done List',
            style:TextStyle(
              fontSize: 20.0,

            ),
            ),
          ),
         ListTile(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(
               builder:(context)=>LanguageChange(),
             ));
           },
           leading: FaIcon(FontAwesomeIcons.language),
           title: Text('Change Language',
           style:TextStyle(
           fontSize: 20.0,
           ),
           ),
        ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder:(context)=>ChangeTheme(),
              ));
            },
            leading: FaIcon(FontAwesomeIcons.paintbrush),
            title: Text('Change Theme',
              style:TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.keyboard),
            title: Text('Feedback',
              style:TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.gear),
            title: Text('Settings',
              style:TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
