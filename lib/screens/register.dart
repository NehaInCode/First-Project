
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import '../homePageScreens/_bottomnavBar.dart';
import 'forgot.dart';
import 'login.dart';


class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  var userName = TextEditingController();
  var emailMobNum = TextEditingController();
  var passW = TextEditingController();
  var confirmPass = TextEditingController();
  Color myColor = const Color(0xFFFFD464);
  Color grey = const Color(0xFF616161);
  Color hColor = const Color(0xFF404040);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: myColor,
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset('assets/Logo.png',width: 150),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                       customText('Register', 20, Colors.black, FontWeight.w700),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                       customText('Already have an account?', 16, grey, FontWeight.w400),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
                          },
                          child: customText('Login', 16, grey, FontWeight.w500,underline: true),)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: userName,
                        decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: hColor,
                              fontSize: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: emailMobNum,

                        decoration: InputDecoration(
                          hintText: 'Email or Mobile Number',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: passW,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: grey,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),     ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: confirmPass,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: grey,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => Authentication(),))
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                          child: customText('Register', 16, grey, FontWeight.normal)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 132,
              ),
              Container(
                height: 2,
                width: 130,
                color: grey,
              ),
              const SizedBox(
                height: 9,
              )
            ],
          ),
        ),
      ),
    );
  }
}