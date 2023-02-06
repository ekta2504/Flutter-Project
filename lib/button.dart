import 'package:flutter/material.dart';

class Tap extends StatelessWidget {
  final VoidCallback SelectHandler;

  Tap(this.SelectHandler);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: 150,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),foregroundColor: MaterialStatePropertyAll(Colors.white)),
          child: const Text('Click Here', style: TextStyle(fontSize: 20),),
          onPressed: SelectHandler,
    ),
    );
  }
}

