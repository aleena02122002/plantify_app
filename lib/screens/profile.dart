import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plants/screens/order.dart';
import 'package:plants/screens/setting.dart';
import 'package:plants/widgets/drawer.dart';
import 'package:plants/widgets/popupMenu.dart';
import 'package:plants/widgets/profilePageListTile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Container(
            height: 100,
            width: 100,
            child: Image.asset('images/Logo.png', fit: BoxFit.contain)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderRecieved()));
              },
              icon: Icon(Icons.notification_add)),
          Popup(),
          // IconButton(onPressed: ()=> _key.currentState!.openDrawer(), icon: Icon(Icons.drag_handle_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 120.0,),
                child: Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: AssetImage('images/profile2.jpg'),
                          width: 400,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF0D986A).withOpacity(0.4),
                        ),
                        child: Icon(Icons.edit, color: Color(0xFF0D986A)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Name',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const FittedBox(
                child: Text(
                  'addressID@gmail.com',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(backgroundColor:const Color(0xFF0D986A), foregroundColor: Colors.white,  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                )
              ),
              const SizedBox(height: 30,),
              // Divider(
              //   color: Color(0xFF0D986A),
              // ),
              const SizedBox(height: 10,),
              ProfileMenu(title: 'Setting', iconData: Icons.settings, voidCallback: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Setting()));
              }),
              ProfileMenu(title: 'Billing Details', iconData: Icons.wallet, voidCallback:(){}),
              ProfileMenu(title: 'Promotion', iconData: Icons.sell_sharp, voidCallback: (){}),
              Divider(
                indent: 50,
                endIndent: 50,
              ),
              SizedBox(),
              ProfileMenu(title: 'About', iconData: Icons.info, voidCallback: (){}),
              ProfileMenu(title: 'LogOut', iconData: Icons.logout, voidCallback: (){},textColor: Colors.red,endIcon: false,)
            ],
          ),
        ),
      ),
    );
  }
}
