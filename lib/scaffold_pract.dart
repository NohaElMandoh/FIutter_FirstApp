import 'package:flutter/material.dart';
class scafPract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(icon:new Icon(  Icons.home),title: new Text("Home")),
        new BottomNavigationBarItem(icon:new Icon(  Icons.add),title: new Text("Add")),
        new BottomNavigationBarItem(icon:new Icon(  Icons.info),title: new Text("Info")),
      ]),

      persistentFooterButtons: <Widget>[
        new FlatButton(onPressed: null, child: new Text("one")),
        new FlatButton(onPressed: null, child: new Text("two")),
        new FlatButton(onPressed: null, child: new Text("three")),
      ],
      
    );
  }
}
