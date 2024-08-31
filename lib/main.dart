
import 'package:flutter/material.dart';
import 'package:loginapp/Loginscrenn.dart';
//import 'package:loginapp/homePage.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
      
    );
  }
}
