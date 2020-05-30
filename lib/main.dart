import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Roll Me", style: TextStyle(color: Colors.purpleAccent, fontSize: 40,fontWeight: FontWeight.bold),
              ),
              ),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.purple[800],
                      Colors.purple[600],
                    ],
                  ),
                ),
              ),
            ),
        
            backgroundColor: Colors.white, 
            body: Page(),
      
            ),
            );
  }
}

class Page extends StatefulWidget{
  @override
  _Page createState() => _Page();
}

class _Page extends State<Page>{
  int dice = 1;
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                   dice = Random().nextInt(24)+1;  
                });
              },
              child: Image.asset('images/dice$dice.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
