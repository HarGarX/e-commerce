import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            _auth.signOut();
            Get.offAll(LoginScreen());
          },
          child: Text("LogOut"),
        ),
      ),
    );
  }
}
