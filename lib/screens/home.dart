import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plants/screens/order.dart';
import 'package:plants/widgets/bottomNavigation.dart';
import 'package:plants/widgets/drawer.dart';
import 'package:plants/widgets/inkwell.dart';
import 'package:plants/widgets/popupMenu.dart';
import 'package:plants/widgets/search.dart';

class HomeView extends StatefulWidget {
   HomeView({super.key});



  @override
  State<HomeView> createState() => _HomeViewState();
}
final GlobalKey<ScaffoldState> _key = GlobalKey();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Scaffold(
            key: _key,
            drawer: CustomDrawer(),
            appBar: AppBar(

                  title: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('images/Logo.png',fit: BoxFit.contain)),
                  actions: <Widget>[
                    IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  OrderRecieved()));}, icon: Icon(Icons.notification_add)),
                    Popup(),
                    // IconButton(onPressed: ()=> _key.currentState!.openDrawer(), icon: Icon(Icons.drag_handle_outlined)),
                  ],
                ),


            body: SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      Container(
                        child: Align(alignment: Alignment.center, child: Image.asset('images/Group 73.png'),
                        ),
                      ),
                      const     SizedBox(height: 10,),
                      Search(),
                      const     SizedBox(height: 10,),
                      SizedBox(
                        child: Align(alignment: Alignment.center, child: Image.asset('images/Frame 95.png',width: 300,),),
                      ),
                      const SizedBox(height: 15,),
                      InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset('images/Group 62.png'),
                              Positioned(  right: 30, top: 20, child: Image.asset('images/1plant.png'),)
                            ],
                          )
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset('images/Group 63.png'),
                              Positioned(  right: 30, top: 20, child: Image.asset('images/sage.png'),)
                            ],
                          )
                      ),
                      const SizedBox(height: 10,),
                      CustomInkWell(child: Image.asset('images/Group 81.png'), onTap: (){}),
                      const SizedBox(height: 10,),
                      InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset('images/Group 64.png'),
                              Positioned(  right: 30, top: 20, child: Image.asset('images/2plant.png'),)
                            ],
                          )
                      ),

                    ],
                  )
              ),

        ),
      ),
    );
  }
}
