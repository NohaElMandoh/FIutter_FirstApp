import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class access_Camera extends StatefulWidget {
  @override
  _access_CameraState createState() => _access_CameraState();
}

class _access_CameraState extends State<access_Camera> {
  File _image;
  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Access Camera"),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () {
              getImage(true);
            }),
            IconButton(icon: Icon(Icons.insert_drive_file), onPressed: () {
              getImage(false);
            }),
            _image == null
                ? Container()
                : Image.file(
                    _image,
                    height: 300.0,
                    width: 300.0,
                  ),
            new Text("")
          ],
        ),
      ),
    );
  }
}
