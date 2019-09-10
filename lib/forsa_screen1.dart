import 'package:flutter/material.dart';

class forsa extends StatefulWidget {
  @override
  _forsaState createState() => _forsaState();
}

class _forsaState extends State<forsa> {
  int photoindex = 0;
  List<String> photos = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];

  void _previousImage() {
    setState(() {
      photoindex = photoindex > 0 ? photoindex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoindex = photoindex < photos.length - 1 ? photoindex + 1 : photoindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF3661F),
//        leading: Icon(Icons.arrow_back),
        title: Text("slider"),










        centerTitle: true,
        actions: <Widget>[Icon(Icons.favorite)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(photos[photoindex]),
                          fit: BoxFit.cover)),
                  height: 400.0,
                  width: 300.0,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Next'),
                onPressed: _nextImage,
                elevation: 5.0,
                color: Colors.green,
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                child: Text('previous'),
                onPressed: _previousImage,
                elevation: 5.0,
                color: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }
}







