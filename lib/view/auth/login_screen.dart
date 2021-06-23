import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/register_screen.dart';
import 'package:ecommerce_app/view/widgets/custom_button.dart';
import 'package:ecommerce_app/view/widgets/custom_button_social.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome,",
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  GestureDetector(
                    child: CustomText(
                      text: "SignUp",
                      fontSize: 18.0,
                      color: Color.fromRGBO(0, 197, 105, 1),
                    ),
                    onTap: (){
                      Get.offAll(RegisterScreen());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Sign in to Countinue",
                fontSize: 14,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  CustomTextFormField(
                    text: "Email",
                    hintText: "Gafar@Gafar.Gafar",
                    onSave: (value) {
                      controller.email = value;
                    },
                    validator: (value){
                      if(value == null) {
                        print('Error email is null');
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField(
                    text: "password",
                    hintText: "*************",
                    onSave: (value){
                      controller.password = value;
                    },
                    validator: (value){
                      if(value == null ){
                        print("Password is null");
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: "forget password ?",
                    fontSize: 18.5,
                    color: Colors.black54,
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "SIGN IN",
                    padding: 18.0,
                    color: primaryColor,
                    circularRadius: 10,
                    onPress: (){
                      _formKey.currentState.save();
                      if(_formKey.currentState.validate()) {
                        controller.singInWithEmailPassword();
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: '-OR-',
                    color: Colors.grey,
                    fontSize: 21,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtonSocial(
                    text: "Sign In With Facebook",
                    image: "assets/images/facebook.png",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButtonSocial(
                    text: "Sign In With Google",
                    image: "assets/images/google.png",
                    onPress: (){
                      controller.googleSignInMethod(); 
                    },
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
