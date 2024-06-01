
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatelessWidget {
  String title , impagePath ;
   MyCard({required this.title , required this.impagePath   });
  

  @override
  Widget build(BuildContext context) {
    return Card(
          
          color: Colors.white,
          child: Center(
            child: Row(
              children: [
                Image(image: AssetImage('images/$impagePath'),height: 80, width: 80,),
                Padding(padding: EdgeInsets.all(15),
                  child: Text(title , style: TextStyle(fontSize: 18 ),),),
            
                
            
                ],
            ),
          ),
        );
  }    
} 
    
    
    
     