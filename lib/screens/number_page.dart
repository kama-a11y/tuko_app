
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
final List<number> numberList =const[
  number(jpname: "ichi", enname: "one", image: "assets/images/numbers/number_one.png"),
  number(jpname: "Ni", enname: "two", image: "assets/images/numbers/number_two.png"),
  number(jpname: "San", enname: "three", image: "assets/images/numbers/number_three.png"),
  number(jpname: "Shi", enname: "four", image: "assets/images/numbers/number_four.png"),
  number(jpname: "Go", enname: "five", image: "assets/images/numbers/number_five.png"),
  number(jpname: "Roku", enname: "six", image: "assets/images/numbers/number_six.png"),
  number(jpname: "Shichi", enname: "seven", image: "assets/images/numbers/number_seven.png"),
  number(jpname: "Hachi", enname: "eight", image: "assets/images/numbers/number_eight.png"),
  number(jpname: "Ku", enname: "nine", image: "assets/images/numbers/number_nine.png"),
  number(jpname: "Juu", enname: "ten", image: "assets/images/numbers/number_ten.png"),

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
