// drawer.dart
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.cancel_outlined, color: Colors.black26),
                ),
                decoration: BoxDecoration(color: Color(0xFF0D986A)),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(
                      "Shop",
                      style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Plant Care",
                      style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Community",
                      style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "My Account",
                      style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Track Order",
                      style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Color(0xFF0D986A)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Color(0xFF0D986A), width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ListTile(
                      title: Text(
                        "FAQ",
                        style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: ListTile(
                      title: Text(
                        "Contact Us",
                        style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: ListTile(
                      title: Text(
                        "About Us",
                        style: TextStyle(color: Color(0xFF0D986A), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
