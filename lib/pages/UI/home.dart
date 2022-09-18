import 'package:flutter/material.dart';
import 'package:todo/pages/UI/addlist.dart';
import 'package:todo/pages/UI/drawer.dart';


void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Addlist> listDynamic = [];

  addDynamic() {
    listDynamic.add(Addlist());
    setState(() {});
  }
  removeDynamic() {
    if(listDynamic.length>0){
      listDynamic.removeAt(0);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: addDynamic,
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      drawer: Navbar(),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'ToDo',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {removeDynamic();},
          ),
        ],
        elevation: 0.0,
      ),

      //body

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0, top: 10.0),
            child: Container(
                height: 90.0,
                // color: Colors.blue,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black12,
                      child: Text(
                        'Keith',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 50.0,
                  //color: Colors.green,
                  child: Text(
                    'Hello, Keith Welcome...',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
              height: 250.0,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: listDynamic.length,
                    itemBuilder: (listViewContext, index) =>
                        listDynamic[index]),
              )),
        ],
      ),
    );
  }
}
