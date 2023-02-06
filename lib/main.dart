import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './button.dart';

void main() {
  runApp(MaterialApp(home:_HelloApp()));
}

class _HelloApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HelloAppState();
  }
}

class _HelloAppState extends State<_HelloApp> {
  void _showDialog() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text('Welcome to my first Application!'),
              actions: [
                MaterialButton(
                  onPressed: () {Navigator.pop(context);},
                  child: const Text('OK'),
                ),
                MaterialButton(
                  onPressed: (){Navigator.pop(context);},
                  child: const Text('cancel'),
                ),
              ],
            );
          });
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: Tap(_showDialog),
        ),
      ),
    );
  }
}
