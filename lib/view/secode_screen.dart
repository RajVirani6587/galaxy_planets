import 'package:flutter/material.dart';

class PlanetsDetlis_Screen extends StatefulWidget {
  const PlanetsDetlis_Screen({Key? key}) : super(key: key);

  @override
  State<PlanetsDetlis_Screen> createState() => _PlanetsDetlis_ScreenState();
}

class _PlanetsDetlis_ScreenState extends State<PlanetsDetlis_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: ,
      // ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
         Container(
           child: SingleChildScrollView(
             child: Stack(
               alignment: Alignment.center,
               children: [
               Column(
                 children: [
                   Image.asset("assets/image/pexels-rodnae-productions-8474500.jpg",height: 420,width: double.infinity,fit: BoxFit.fill,),
                   SingleChildScrollView(
                     child: Container(
                       height: MediaQuery.of(context).size.height*0.5,
                       color: Colors.indigo.shade900,
                       child: Center(
                         child: Column(
                           children: [
                             Padding(
                               padding:  EdgeInsets.only(left: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Column(
                                     children: [
                                       SizedBox(height: 150,),
                                       Text("OVERVIEW",style: TextStyle(color: Colors.white,fontSize: 25),),
                                       Container(margin: EdgeInsets.only(right: 95),height: 3,width: 40,color: Colors.blue,),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(height: 10,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(width: MediaQuery.of(context).size.width*.9,
                                     child: Text("Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war.",style: TextStyle(color: Colors.white70),))
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
                 Container(
                   height: 200,
                   width: MediaQuery.of(context).size.width*.9,
                   decoration: BoxDecoration(
                     color: Colors.indigo.shade600,
                     borderRadius: BorderRadius.circular(10),),
                   child: Stack(
                     alignment: Alignment.topCenter,
                      children: [
                        Column(
                          children: [

                          ],
                        ),
                        Image.asset("assets/image/sa-removebg-preview.png"),
                      ],
                   ),
                 ),

              ],
             ),
           ),
        ),
          Container(height: 70,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6,bottom: 6,left: 15),
                  child: Column(
                    children: [
                      Text("START FROM",style: TextStyle(color: Colors.white70),),
                      Text("\$2.8m",style: TextStyle(fontSize: 25,color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 6,bottom: 6,right: 20),
                  child: Text("BOOK NOW >",style: TextStyle(fontSize: 25,color: Colors.white),),
                )
              ],
            ),
          )
      ],

      )
    );
  }
}
