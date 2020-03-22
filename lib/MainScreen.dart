import 'package:flutter/material.dart';
import 'package:flutter_demo/CardView.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1.1,
          child: Column(
            children: <Widget>[
            Image.asset("Assets/completeBox.png",fit: BoxFit.fitWidth,),
SizedBox(height: 30,),
CardsSectionAlignment(context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Report"),
          )
        ],
      ),
    )));
  }
}
