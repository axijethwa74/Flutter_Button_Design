import 'package:buttons/Button_Designs/Button1.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
       child: const Button1(),
     ),
     ),
    
    );
  }
}