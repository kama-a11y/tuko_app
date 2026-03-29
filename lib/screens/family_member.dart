
import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_item.dart';
import 'package:tuko_app/models/number_model.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});
final List<item> familyList = const [
    item(
      jpname: "Chichioya",
      enname: "father",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    item(
      jpname: "Hahaoya",
      enname: "mother",
      image: "assets/images/family_members/family_mother.png",
      sound: "sounds/family_members/mother.wav",
    ),
    item(
      jpname: "Musuko",
      enname: "son",
      image: "assets/images/family_members/family_son.png",
      sound: "sounds/family_members/son.wav",
    ),
    item(
      jpname: "Musume",
      enname: "daughter",
      image: "assets/images/family_members/family_daughter.png",
      sound: "sounds/family_members/daughter.wav",
    ),
    item(
      jpname: "Sofu",
      enname: "grandfather",
      image: "assets/images/family_members/family_grandfather.png",
      sound: "sounds/family_members/grand father.wav",
    ),
    item(
      jpname: "Sobo",
      enname: "grandmother",
      image: "assets/images/family_members/family_grandmother.png",
      sound: "assets/sounds/family_members/grand mother.wav",
    ),
    item(
      jpname: "Ani",
      enname: "older brother",
      image: "assets/images/family_members/family_older_brother.png",
      sound: "assets/sounds/family_members/older bother.wav",
    ),
    item(
      jpname: "Ane",
      enname: "older sister",
      image: "assets/images/family_members/family_older_sister.png",
      sound: "sounds/family_members/older sister.wav",
    ),
    item(
      jpname: "Otouto",
      enname: "younger brother",
      image: "assets/images/family_members/family_younger_brother.png",
      sound: "sounds/family_members/younger brother.wav",
    ),
    item(
      jpname: "Imouto",
      enname: "younger sister",
      image: "assets/images/family_members/family_younger_sister.png",
      sound: "sounds/family_members/younger sister.wav",
    ),
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
            itemCount: familyList.length,
            itemBuilder:(context, index){
              return NumberItem(const Color(0xff5D8B3E),familyList[index]);
            }  
            ,) 
          
        
    );
  }
}
