import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Expanded buildB(int audiono, Color colorArg){
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            backgroundColor: colorArg,
          ),
          onPressed: (){
            Audio.load('assets/note$audiono.wav')..play()..dispose();
            print("Button $audiono pressed.");
          }, 
          child: Container(),
        ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildB(1, Colors.red),
              buildB(2, Colors.orange),
              buildB(3, Colors.yellow),
              buildB(4, Colors.green),
              buildB(5, Colors.blue),
              buildB(6, Colors.indigo),
              buildB(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}