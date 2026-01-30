import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuko_app/models/number_model.dart';
// ignore: must_be_immutable
class NumberItem extends StatelessWidget {
  NumberItem(  this.color,this.Number,{super.key});
  number Number; 
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 90,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            height: double.infinity,
            width: 80,
            color: const Color(0xffFFFDE4),
            child: Image.asset(Number.image),
          ),
           Column(
            children: [
              Text(Number.jpname,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
               Text(Number.enname,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),)
            ],
          ),
          const Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed:(){
               
                final player = AudioPlayer();
              player.play(UrlSource('sounds/numbers/number_two_sound.mp3'));
              }, 
              icon: const Icon(Icons.play_arrow,color: Colors.white,size: 25,)),
          )
        ],
      ),
    );
  }
}