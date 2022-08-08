// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Buttons"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            
            // child: Container(
              
            //   width: 100,
            //  decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            // color:  Colors.black,
            // boxShadow: const [
            //       BoxShadow(
            //         color: Colors.grey,
            //         offset: Offset(1, 1.0), //(x,y)
            //         blurRadius: 6.0,
            //       ),
            //     ],
            // ),
            //   margin: const EdgeInsets.only(top: 10.0),
              child:  Center(
            
              child: SizedBox(
                  width: 120,
                   height: 40,
                                    
                child: FlatButton(
                
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  
                  padding: const EdgeInsets.all(10),
                  //  color: Colors.grey, 
                  onPressed: (){}, 
                child:  const Center(
                  child: Text('Push it',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Lato-Black',
                    fontWeight: FontWeight.w700, 
                    color: Colors.white,
                    ),
                  ),
                ),
                ),
              ),
           // ),
           // ),
         ),
          ),
       ],
      ),
    ),   
    );
  }
}
