import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("noha_m_elmandoh@outlook.com"),
              accountName: Text("Noha El-Mandoh"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/login');
              },
              title: Text("Login with api"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/access_Camera');
              },
              title: Text("Access Camera"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/devInfo');
              },
              title: Text("Device Info"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/forsa');
              },
              title: Text("slider"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/inputControllers');
              },
              title: Text("inputControllers"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/stfapp');
              },
              title: Text("stfapp"),
            ), //end tile
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/scafPract');
              },
              title: Text("scafPract"),
            ), //end tile
            Divider(),//
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/My_Application');
              },
              title: Text("My_Application"),
            ), //end tile
            Divider(),
          //

          ],
        ),
      ),
      appBar: AppBar(
        title: Text("practices"),
      ),
    );
  }
}
