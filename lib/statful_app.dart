import 'package:flutter/material.dart';
import 'dart:math';
class stfapp extends StatefulWidget {
  @override
  _stfappState createState() => _stfappState();
}

class _stfappState extends State<stfapp> {
  List<String> pl=["Kotlin","Dart","Java","c#"];
  String plText="";
  var textSize=15.5;
  TextStyle MyTextStyle= new TextStyle(fontSize:40.5);
  void getText(){
    setState(() {    //to change the state
      plText=pl[new Random().nextInt(pl.length)];
    });
  }
  void incSize(){
    setState(() {
      textSize++;
      MyTextStyle=new TextStyle(fontSize: textSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(onTap: incSize,
            child: new Icon(Icons.add,size: 40.0,)),
            new Text(plText,style:MyTextStyle,),
            new RaisedButton(
                child: new Text("Click",style:MyTextStyle,),
                onPressed: getText)
          ],
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.redAccent,
        child:new Container(
          child:new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Copyright',style:MyTextStyle,),
              new Icon(Icons.copyright,color: Colors.yellow,),
              new Text('2018',style:MyTextStyle,)
            ],
          )
//         
        )
      ),
      appBar: new AppBar(
        title: new Text('Random ')
      ),

    );
  }
}
