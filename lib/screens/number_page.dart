
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
final List<item> numberList = const [
    item(
      jpname: "ichi",
      enname: "one",
      image: "assets/images/numbers/number_one.png",
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    item(
      jpname: "Ni",
      enname: "two",
      image: "assets/images/numbers/number_two.png",
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    item(
      jpname: "San",
      enname: "three",
      image: "assets/images/numbers/number_three.png",
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    item(
      jpname: "Shi",
      enname: "four",
      image: "assets/images/numbers/number_four.png",
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    item(
      jpname: "Go",
      enname: "five",
      image: "assets/images/numbers/number_five.png",
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    item(
      jpname: "Roku",
      enname: "six",
      image: "assets/images/numbers/number_six.png",
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    item(
      jpname: "Shichi",
      enname: "seven",
      image: "assets/images/numbers/number_seven.png",
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    item(
      jpname: "Hachi",
      enname: "eight",
      image: "assets/images/numbers/number_eight.png",
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    item(
      jpname: "Ku",
      enname: "nine",
      image: "assets/images/numbers/number_nine.png",
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    item(
      jpname: "Juu",
      enname: "ten",
      image: "assets/images/numbers/number_ten.png",
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff49332A),
          title: const Text('Numbers',style:TextStyle(
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
              return NumberItem( Color(0xffF99531),numberList[index]);
            }  
            ,) 
          
        
    );
  }
}
