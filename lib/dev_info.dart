import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class devInfo extends StatefulWidget {
  @override
  _devInfoState createState() => _devInfoState();
}

class _devInfoState extends State<devInfo> {
  String info="";
  getDeviceInfo()async{
    DeviceInfoPlugin deviceInfo=new DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo=await deviceInfo.androidInfo;
    var brand=androidInfo.brand;
    setState(() {
      info=brand;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: new RaisedButton(onPressed: getDeviceInfo,
              child: new Text("Get Device Info"),),
          ),
          new Text(info)
        ],),
    );
  }
}
