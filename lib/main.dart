import 'package:flutter/material.dart';
import 'package:login_tenant/home.dart';

void main() {
  runApp(const LoginTenant());
}

class LoginTenant extends StatelessWidget {
  const LoginTenant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c3f46),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xff374f58), Color(0xff374f58)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 4,
            top: -getSmallDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text("Login Tenant",
                      style: TextStyle(fontSize: 30, color: Colors.white))),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xff374f58), Color(0xff374f58)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xff374f58),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff374f58))),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xff374f58))),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xff374f58),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff374f58))),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Color(0xff374f58))),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {
                                goToHome(context);
                              },
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff374f58),
                                    Color(0xff374f58)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "DON'T HAVE AN ACCOUNT ?  ",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "SIGN UP ",
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFFF4891),
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

goToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        fullscreenDialog: true, builder: (BuildContext context) => Home()),
  );
}
