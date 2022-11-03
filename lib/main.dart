import 'package:flutter/material.dart';
import 'package:galaxy_planets/view/first_screen.dart';
import 'package:galaxy_planets/view/secode_screen.dart';
import 'package:get/get.dart';

void main(){
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=> Galaxy_Planets_Screen(),
          'planets':(context)=>PlanetsDetlis_Screen(),

        },
      )
  );
}