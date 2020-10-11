import 'package:flutter/material.dart';
import 'package:hackmountain/screens/detectScreen.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 35),
            child: Column(
              children: <Widget>[

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hello and welcome to",
                    style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: 25,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Diabetic Retinopathy Detection .",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff375079),
                      fontSize: 25,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "This Diabetic Retinopathy Detection lets you to\ndetect vision Blindness by using\nLive Image Detection.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: 25,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height * 0.20),
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(width: MediaQuery.of(context).size.width * 0.37),
                    //IconButton(icon: Icon(Icons.arrow_forward, size: 35,), onPressed: () {})
                  ],
                )
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: null),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              new MaterialPageRoute(builder: (BuildContext context) {
                return DetectScreen(title: 'Diabetic Retinopathy Detection ');
              }));
        },
      ),
    );
  }
}
