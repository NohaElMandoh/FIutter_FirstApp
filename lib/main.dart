import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'MyApplication.dart';
import 'access_camera.dart';
import 'homepage.dart';
import 'login.dart';
import 'statful_app.dart';
import 'dev_info.dart';
import 'scaffold_pract.dart';//scafPract
import 'inputControllers.dart';//inputControllers
import 'forsa_screen1.dart';
//void main() {
//  runApp (new Center(
//    child:new Text('اهلا وسهلا',
//        textDirection: TextDirection.ltr,)
//  ),);

//}
void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        '/':(context)=>HomePage(),
        '/devInfo':(context)=>devInfo(),
        '/forsa':(context)=>forsa(),
        '/inputControllers':(context)=>inputControllers(),
        '/My_Application':(context)=>My_App(),
        '/scafPract':(context)=>scafPract(),
        '/stfapp':(context)=>stfapp(),
        '/access_Camera':(context)=>access_Camera(),
        '/login':(context)=>LoginPage()

      },
      //new forsa()

    );
  }
}


