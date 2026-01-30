
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
final List<number> numberList =const[
  number(jpname: "ichi", enname: "black", image: "assets/images/colors/color_black.png"),
  number(jpname: "Ni", enname: "brown", image: "assets/images/colors/color_brown.png"),
  number(jpname: "San", enname: "dusty yellow", image: "assets/images/colors/color_dusty_yellow.png"),
  number(jpname: "Shi", enname: "gray", image: "assets/images/colors/color_gray.png"),
  number(jpname: "Go", enname: "green", image: "assets/images/colors/color_green.png"),
  number(jpname: "Roku", enname: "red", image: "assets/images/colors/color_red.png"),
  number(jpname: "Shichi", enname: "white", image: "assets/images/colors/color_white.png"),
  number(jpname: "Hachi", enname: "yellow", image: "assets/images/colors/yellow.png"),
   number(jpname: "Roku", enname: "red", image: "assets/images/colors/color_red.png"),
  number(jpname: "Shichi", enname: "white", image: "assets/images/colors/color_white.png"),
  number(jpname: "Hachi", enname: "yellow", image: "assets/images/colors/yellow.png"),

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
