import 'package:flutter/material.dart';
class scafPract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: new Drawer(child: new ListView(children: <Widget>[
//        new DrawerHeader(child: new Text("Noha Mohammed")),
//        new ListTile(
//        subtitle: new Text("using dart"),
//          onTap: (){},
//          leading: new Icon(Icons.home),
//          trailing: new Switch(value: true, onChanged: null),
//        title: new Text("Flutter"),),
//        new ListTile(
//          selected: true,
//    subtitle: new Text("using dart"),
//    onTap: (){},
//    leading: new Icon(Icons.home),
//    trailing: new Switch(value: true, onChanged: null),
//    title: new Text("Flutter"),),
//        new AboutListTile(aboutBoxChildren: <Widget>[
//          new Text("It's free")
//        ],
//          icon: new Icon(Icons.info),
//          child: new Text("My First Flutter App"),)
//
//
//      ],),),
      endDrawer: new Drawer(child: new ListView(children: <Widget>[
        new DrawerHeader(child: new Text("Noha Mohammed")),
        new ListTile(
          subtitle: new Text("using dart"),
          onTap: (){},
          leading: new Icon(Icons.home),
          trailing: new Switch(value: true, onChanged: null),
          title: new Text("Flutter"),),
        new ListTile(
          selected: true,
          subtitle: new Text("using dart"),
          onTap: (){},
          leading: new Icon(Icons.home),
          trailing: new Switch(value: true, onChanged: null),
          title: new Text("Flutter"),),
        new AboutListTile(aboutBoxChildren: <Widget>[
          new Text("It's free")
        ],
          icon: new Icon(Icons.info),
          child: new Text("My First Flutter App"),)


      ],),),
      appBar: new AppBar(title: new Text("Scaffold Demo "),),
      backgroundColor: Colors.deepPurpleAccent,
      floatingActionButton: new FloatingActionButton(onPressed: null),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Card(child: new Container(height: 150.0,),),
            new Card(child: new Container(height: 150.0,)),
            new Card(child: new Container(height: 150.0,)),
            new Card(child: new Container(height: 150.0,)),
            new Card(child: new Container(height: 150.0,)),

          ],
        ),
      ),
//      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
//        new BottomNavigationBarItem(icon:new Icon(  Icons.home),title: new Text("Home")),
//        new BottomNavigationBarItem(icon:new Icon(  Icons.add),title: new Text("Add")),
//        new BottomNavigationBarItem(icon:new Icon(  Icons.info),title: new Text("Info")),
//      ]),
//
//      persistentFooterButtons: <Widget>[
//        new FlatButton(onPressed: null, child: new Text("one")),
//        new FlatButton(onPressed: null, child: new Text("two")),
//        new FlatButton(onPressed: null, child: new Text("three")),
//      ],
      
    );
  }
}
