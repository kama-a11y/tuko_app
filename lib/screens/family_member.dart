
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});
final List<number> numberList =const[
  number(jpname: "ichi", enname: "father", image: "assets/images/family_members/family_father.png"),
  number(jpname: "Ni", enname: "mother", image: "assets/images/family_members/family_mother.png"),
  number(jpname: "San", enname: "son", image: "assets/images/family_members/family_son.png"),
  number(jpname: "Shi", enname: "daughter", image: "assets/images/family_members/family_daughter.png"),
  number(jpname: "Go", enname: "grandfather", image: "assets/images/family_members/family_grandfather.png"),
  number(jpname: "Roku", enname: "grandmother", image: "assets/images/family_members/family_grandmother.png"),
  number(jpname: "Shichi", enname: "older brother", image: "assets/images/family_members/family_older_brother.png"),
  number(jpname: "Hachi", enname: "older sister", image: "assets/images/family_members/family_older_sister.png"),
  number(jpname: "Ku", enname: "younger brother", image: "assets/images/family_members/family_younger_brother.png"),
  number(jpname: "Juu", enname: "younger sister", image: "assets/images/family_members/family_younger_sister.png"),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff49332A),
          title: const Text('Family Members',style:TextStyle(
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
              return NumberItem(const Color(0xff5D8B3E),numberList[index]);
            }  
            ,) 
          
        
    );
  }
}
