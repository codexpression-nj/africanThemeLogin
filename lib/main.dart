import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image(
              image: AssetImage("assets/images/pic.jpg"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6),
              colorBlendMode: BlendMode.darken),
          Container(
            height: 260.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "Discover the natural beauty of ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffffb451),
                        fontSize: 22,
                        fontWeight: FontWeight.w200
                        ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Africa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffffb451),
                        fontSize: 30,
                        fontFamily: "SpecialElite"),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width /1.5,
                    height: 50.0,
                    child: RaisedButton(
                      // borderSide: BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(10.0),),
                      onPressed: () {},
                      color: Color(0xffffb451),
                      child: Text(
                        "LOGIN",
                        style: TextStyle( color: Colors.white),
                      ),
                    )),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "create account",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w100,
                      fontSize: 10,
                      fontFamily: "PoppinsRegular"),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
