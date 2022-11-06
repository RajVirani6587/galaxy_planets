import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splesh_Screen extends StatefulWidget {
  const splesh_Screen({Key? key}) : super(key: key);

  @override
  State<splesh_Screen> createState() => _splesh_ScreenState();
}

class _splesh_ScreenState extends State<splesh_Screen> {
  @override
  Widget build(BuildContext context) {
    isLogin();
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/image/40712-circling-of-the-sun-by-the-planets-was-discovered-by-nicolaus-copernicus.json",fit: BoxFit.fill),
                SizedBox(height: 15,),
                Text("YOUR GALAXY PLANETS",style: TextStyle(fontSize: 25,color: Colors.white),),
               ],
            ),
          ),
        ));
  }
  void isLogin()async {
    Timer(Duration(seconds: 10),
            () => Get.offAllNamed('galaxy'),
    );
  }

}