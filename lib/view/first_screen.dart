import 'package:flutter/material.dart';
import 'package:galaxy_planets/controller/controller_planets.dart';
import 'package:galaxy_planets/view/secode_screen.dart';
import 'package:get/get.dart';

class Galaxy_Planets_Screen extends StatefulWidget {
  const Galaxy_Planets_Screen({Key? key}) : super(key: key);

  @override
  State<Galaxy_Planets_Screen> createState() => _Galaxy_Planets_ScreenState();
}

class _Galaxy_Planets_ScreenState extends State<Galaxy_Planets_Screen> with SingleTickerProviderStateMixin{
  Galaxy_Controller galaxy_controller = Get.put(Galaxy_Controller());
  AnimationController ? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    _animationController!.repeat();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        leading: Icon(Icons.dehaze_outlined),
        title: Text("GALAXY PLANETS"),
        actions: [
          Container(padding:EdgeInsets.only(right: 20),child: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: galaxy_controller.l1.length,
        itemBuilder: (context,index){
          return  InkWell(onTap: (){
             galaxy_controller.DataPick = galaxy_controller.l1.value[index];
             Get.to(PlanetsDetlis_Screen());
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 15,right: 40),
                                child: Text("${galaxy_controller.l1.value[index].Name}",style: TextStyle(color: Colors.white,fontSize: 25),),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Text("Milkyway Galaxy",style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("☀️ ${galaxy_controller.l1.value[index].Location}",style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 15,),
                              Text("🔁 ${galaxy_controller.l1.value[index].MS}",style: TextStyle(color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(30),
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade600,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Container(margin: EdgeInsets.only(right: 20),
                        child: AnimatedBuilder(
                            animation: _animationController!,
                            builder: (context,v1){
                              return Transform.rotate(
                                angle: _animationController!.value*6,
                                child:v1,
                              );
                            },
                            child: Image.asset("${galaxy_controller.l1.value[index].Image}",width: 80,height: 80,fit: BoxFit.fill,))),
                  ],
                ),
              ],
            ),
          );
        },

      ),
    );
  }
}
