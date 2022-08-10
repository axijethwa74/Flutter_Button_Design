import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> with SingleTickerProviderStateMixin{

  // ignore: unused_field
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =AnimationController(
      duration: const Duration(milliseconds:50),
      vsync:this,
      lowerBound: 0.0,
      upperBound: 0.2
      )..addListener(() {
        setState(() {
          
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    var scale =1+ _animationController.value;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Buttons"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          Center(
            child: GestureDetector(
              onTap: (() {
              }),
               onTapDown: OnTapDown,
                onTapUp: onTapUp,
                onTapCancel: onTapCancel,
              child: Transform.scale(
                scale: scale,
                child: Container(
                  height: 50,
                  width: 150,
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text("Push",
                     style: TextStyle(
                             fontSize: 18,
                               fontFamily: 'Lato-Black',
                                fontWeight: FontWeight.w700, 
                               color: Colors.white,
                               ),
                    
                    ),
                  ),
              
                ),
              ),
            ),
          ),
         
],
      ),
    ),   
    );
  }


   // ignore: non_constant_identifier_names
   OnTapDown(TapDownDetails details){
    _animationController.forward();
  }


  onTapUp(TapUpDetails details){
    _animationController.reverse();
  }

  onTapCancel(){
    _animationController.reverse();
  }
 
}
