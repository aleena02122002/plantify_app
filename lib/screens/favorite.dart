import 'package:flutter/material.dart';
import 'package:plants/screens/order.dart';
import 'package:plants/widgets/bottomNavigation.dart';
import 'package:plants/widgets/drawer.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Container(
                height: 100,
                width: 100,
                child: Image.asset('images/Logo.png',fit: BoxFit.contain)),
            actions: <Widget>[
              IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  OrderRecieved()));}, icon: Icon(Icons.notification_add)),
              // IconButton(onPressed: ()=> _key.currentState!.openDrawer(), icon: Icon(Icons.drag_handle_outlined)),
            ],
          ),
        ),
      ),
    );
  }
}
