import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter/widgets/button_green.dart';
import 'package:platzi_trips_flutter/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Welcome \n This is your travel app",
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),              
              ButtonGreen(50, 300, text: "Login with Google", onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}
