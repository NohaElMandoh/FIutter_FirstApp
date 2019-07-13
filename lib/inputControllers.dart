import 'package:flutter/material.dart';

class inputControllers extends StatefulWidget {
  @override
  _inputControllersState createState() => _inputControllersState();
}

class _inputControllersState extends State<inputControllers> {
  final usernameController=new TextEditingController();
  var username="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xFFFFFF), transnparent
      backgroundColor: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
      body: Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(


              controller:usernameController,),
            InkWell(child: new Icon(Icons.edit),onTap: (){
              setState(() {
                username=usernameController.text;
              });
            },),
            
            new Text("Hello ${username}")
          ],
        ),
      ),
    );
  }
}

