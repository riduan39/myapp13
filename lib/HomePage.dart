import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.limeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello World",style: TextStyle(fontSize: _value,fontWeight: FontWeight.bold),),
            Slider(
              activeColor: Colors.black,
                inactiveColor: Colors.blue,
                min: 50,
                max: 80,
                value: _value, onChanged: (value){
                setState(() {
                  _value = value;
                });
            })
          ],
        ),
      ),
    ));
  }
}
