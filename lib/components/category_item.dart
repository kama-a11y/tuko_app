import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
   Category({super.key,required this.color,required this.text,required this.onTap});
 Color color;
 String text;
 VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
          width: 180,
          height: 150,  
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white,width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 4),
              ),
            ],
          ),
          child:  Center(
              child: Text(text,style: const TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
            ),
        ),
    );
  }
}