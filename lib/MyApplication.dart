import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  Widget build (BuildContext context){
    return new  MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Row(
          children: <Widget>[
            new Icon(Icons.home),
            new Text('Flutter')
          ],
        )),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCustomCard('Login',Icons.account_circle),
            MyCustomCard('call end',Icons.call_end,myColor: Colors.red),
            MyCustomCard('call',Icons.call,myColor:Colors.green),

          ],
        ),
      ),
    );
  }

  Card MyCustomCard(String myText,IconData myIcon,{Color myColor=Colors.purple}) {
    return new Card(child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: new Row(
              children: <Widget>[
                new Icon(myIcon,size: 60.0,color: myColor),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: new Text(myText,style: new TextStyle(fontSize:40.0),),
                )
              ],

            ),
    ),);
  }


}