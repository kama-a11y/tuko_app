
import 'package:flutter/material.dart';
import 'package:tuko_app/screens/home_page.dart';

void main(){
  runApp(const Tuko_App());
}

class Tuko_App extends StatelessWidget {
  const Tuko_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
      ,
    );
  }
}

