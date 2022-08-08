// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:buttons/Button_Designs/new.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports, unused_import
import 'package:flutter/src/scheduler/ticker.dart';

// ignore: must_be_immutable
class Buttons extends StatefulWidget {
   const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons>with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =AnimationController(
      duration: const Duration(milliseconds:50),
      vsync:this,
      lowerBound: 0.0,
      upperBound: 0.1
      )..addListener(() {
        setState(() {
          
        });
      });
  }
  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
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
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const New()));
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



        //   Center(
            
        //     // child: Container(
              
        //     //   width: 100,
        //     //  decoration: BoxDecoration(
        //     // borderRadius: BorderRadius.circular(20),
        //     // color:  Colors.black,
        //     // boxShadow: const [
        //     //       BoxShadow(
        //     //         color: Colors.grey,
        //     //         offset: Offset(1, 1.0), //(x,y)
        //     //         blurRadius: 6.0,
        //     //       ),
        //     //     ],
        //     // ),
        //     //   margin: const EdgeInsets.only(top: 10.0),
        //       child:  Center(
            
        //       child: GestureDetector(
        //         onTapDown: OnTapDown,
        //         onTapUp: onTapUp,
        //         onTapCancel: onTapCancel,

        //         child: Transform.scale(
        //           scale: scale,
        //           // ignore: sized_box_for_whitespace
        //           child: Container(
        //               width: 120,
        //                height: 40,
                                        
        //             child: FlatButton(
                    
        //               color: Colors.black,
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(10)),
                      
        //               padding: const EdgeInsets.all(10),
        //               //  color: Colors.grey, 
        //               onPressed: (){
        //                 _animationController;
        //               }, 
        //             child:  const Center(
        //               child: Text('Push it',
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 fontFamily: 'Lato-Black',
        //                 fontWeight: FontWeight.w700, 
        //                 color: Colors.white,
        //                 ),
        //               ),
        //             ),
        //             ),
        //           ),
        //         ),
        //       ),
        //    // ),
        //    // ),
        //  ),
        //   ),