import 'package:flutter/material.dart';
import 'package:plants/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plants/widgets/textField.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();

  registerUser(context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print("=============== Registerd Successfully ===================");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginView()));
      emailController.clear();
      passwordController.clear();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
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
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: const Align(
                      alignment: Alignment.topLeft,
                      child: Image(
                          image: AssetImage('images/Logo.png'),
                          fit: BoxFit.contain,
                          width: 150,
                          height: 150)),
                ),
                const Text(
                  "SignUp",
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
                MyTextField(hintText: 'Password', controller: passwordController, prefixIcon: Icons.lock, focusNode: _focusNode2),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginView()));
                      },
                      child: Text(
                        "Have an Account? Login",
                        style: TextStyle(
                            color: Color(0xFF0D986A),
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(height: 20),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      registerUser(context);
                    },
                    child: const Text(
                      "SignUp",
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
