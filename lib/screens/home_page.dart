import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item.dart';
import 'package:tuko_app/screens/color_page.dart';
import 'package:tuko_app/screens/family_member.dart';
import 'package:tuko_app/screens/number_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xffFFFDE4),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color(0xff49332A),
          title: Center(
            child: const Text('Toku',style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30            
            ),),
          ),
        ),
  body: Column(
    children: [
      SizedBox(height: 30,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Category(color: const Color(0xffF99531),text: 'Number',onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context){return const NumberPage();}));
    },),
    SizedBox(width: 20,),
    Category(color: const Color(0xff5D8B3E),text: 'Family Members',onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context){return const FamilyMember();}));
},),
  ],
),
SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Category(color: const Color(0xff854DAC),text: 'Colors',onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){return const ColorPage();}));
    },),
   SizedBox(width: 20,),
    Category(color: const Color(0xff51B0D5),text: 'Phrases',onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){return const PhrasesPage();}));
    },),
  ],
)  ,    

    ],
  ),
        );
  }
}



