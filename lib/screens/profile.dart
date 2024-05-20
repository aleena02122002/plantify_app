import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 120.0),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('images/profile2.jpg'),
                    width: 400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Name',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              FittedBox(
                child: Text(
                  'addressID@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(backgroundColor:const Color(0xFF0D986A), foregroundColor: Colors.white,  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
