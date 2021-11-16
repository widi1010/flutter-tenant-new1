import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  // const DocumentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = 0xff374f58;
    return Scaffold(
      backgroundColor: Color(0xff2c3f46),
      body: Column(children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
        new ListTile(
          leading: new Icon(Icons.person, color: Colors.white),
          title: new Text("Account",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.web, color: Colors.white),
          title: new Text("History",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.notifications, color: Colors.white),
          title: new Text("Notification & Sounds",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.storage, color: Colors.white),
          title: new Text("Data & Storage",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.location_city, color: Colors.white),
          title: new Text("Language & Location",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.privacy_tip, color: Colors.white),
          title: new Text("Privacy & Security",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.description, color: Colors.white),
          title: new Text("About",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 2,
        ),
        new ListTile(
          leading: new Icon(Icons.help, color: Colors.white),
          title: new Text("Help",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          tileColor: Color(color),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            },
            child: const Text('Logout'),
          ),
        ),
      ]),
    );
  }
}
