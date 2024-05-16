import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:plants/screens/home.dart';
import 'package:plants/screens/homePage.dart';
import 'package:plants/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plants/widgets/bottomNavigation.dart';
import 'package:plants/widgets/textField.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  String? userEamil = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";

  loginUser(context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emailController.clear();
      passwordController.clear();
      print("=============== LoggedIn Successfully ===================");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    } on FirebaseAuthException catch (e) {

      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print("=============== Catch ===================");
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: const Align(
                      alignment: Alignment.topLeft,
                      child: Image(
                          image: AssetImage('images/Logo.png'),
                          fit: BoxFit.contain,
                          width: 200,
                          height: 200)),
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xFF0D986A),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(hintText: 'Email', controller: emailController, prefixIcon: Icons.email_rounded, focusNode: _focusNode1),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(hintText: "Password", controller: passwordController, prefixIcon: Icons.lock, focusNode: _focusNode2),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SignUpView()));
                      },
                      child: const Text(
                        "Don't Have an Account yet?",
                        style: TextStyle(
                            color: Color(0xFF0D986A),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      loginUser(context);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D986A),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
              ],
            ),
          )),
    );
  }
}
