import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  // const DocumentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = 0xff374f58;
    return Scaffold(
      backgroundColor: Color(0xff2c3f46),
      body: Column(
        children: <Widget>[
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
                    Text("Message",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          new Container(
            padding: new EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color(color), borderRadius: BorderRadius.circular(10)),
            child: new Row(
              children: <Widget>[
                Image.asset('assets/pengumuman.png', width: 50.0, height: 50.0),
                new Container(
                  padding: new EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Pengumuman Pendaftaran",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          new Container(
            padding: new EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color(color), borderRadius: BorderRadius.circular(10)),
            child: new Row(
              children: <Widget>[
                Image.asset('assets/pengumuman.png', width: 50.0, height: 50.0),
                new Container(
                  padding: new EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Pengumuman Seleksi Calon Tenant",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          new Container(
            padding: new EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color(color), borderRadius: BorderRadius.circular(10)),
            child: new Row(
              children: <Widget>[
                Image.asset('assets/pengumuman.png', width: 50.0, height: 50.0),
                new Container(
                  padding: new EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Pengumuman Pra Inkubasi",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
