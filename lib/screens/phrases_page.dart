
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
final List<item> numberList = const [
  item(
    jpname: "Kuro",
    enname: "black",
    image: "assets/images/colors/color_black.png",
    sound: "sounds/colors/black.wav",
  ),
  item(
    jpname: "Chairo",
    enname: "brown",
    image: "assets/images/colors/color_brown.png",
    sound: "sounds/colors/brown.wav",
  ),
  item(
    jpname: "Hokori ppoi kiiro",
    enname: "dusty yellow",
    image: "assets/images/colors/color_dusty_yellow.png",
    sound: "sounds/colors/dusty yellow.wav",
  ),
  item(
    jpname: "Haiiro",
    enname: "gray",
    image: "assets/images/colors/color_gray.png",
    sound: "sounds/colors/gray.wav",
  ),
  item(
    jpname: "Midori",
    enname: "green",
    image: "assets/images/colors/color_green.png",
    sound: "sounds/colors/green.wav",
  ),
  item(
    jpname: "Aka",
    enname: "red",
    image: "assets/images/colors/color_red.png",
    sound: "sounds/colors/red.wav",
  ),
  item(
    jpname: "Shiro",
    enname: "white",
    image: "assets/images/colors/color_white.png",
    sound: "sounds/colors/white.wav",
  ),
  item(
    jpname: "Kiiro",
    enname: "yellow",
    image: "assets/images/colors/yellow.png",
    sound: "sounds/colors/yellow.wav",
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff49332A),
          title: const Text('Phrases',style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
           icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: numberList.length,
            itemBuilder:(context, index){
              return NumberItem(const Color(0xff51B0D5),numberList[index]);
            }  
            ,) 
          
        
    );
  }
}
