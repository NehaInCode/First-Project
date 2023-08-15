import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guido/const.dart';
import 'package:guido/screens/login.dart';

import '../main.dart';

class Forgot_password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<Forgot_password> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: double.infinity,
        color: primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/Logo.png', width: 150),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText('Forgot Password', 20, Colors.black,
                            FontWeight.w700,
                            underline: false),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customText('No worries, we’ll send you reset instruction.',
                        16, grey, FontWeight.w400,
                        underline: false),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: email,
                        decoration: InputDecoration(
                            hintText: 'Email or Mobile Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SetPassword(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                          child: customText(
                              'Set Password', 16, grey, FontWeight.normal)),
                    ),
                    SizedBox(
                      height: 210,
                    ),
                    Container(
                      height: 2,
                      width: 130,
                      color: grey,
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SetPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SetPassword();
  }
}

class _SetPassword extends State<SetPassword> {
  TextEditingController pass = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: double.infinity,
        color: primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/Logo.png', width: 150),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText('Set New Password', 20, Colors.black, FontWeight.w700,underline: false),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customText('Your new password must be different with previously used password', 16, grey, FontWeight.w400,underline: false),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: pass,
                        decoration: InputDecoration(
                            hintText: 'New Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: grey,),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      height: 40,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        controller: cPass,
                        decoration: InputDecoration(
                            hintText: 'Confirm New Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: grey,),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),


                    Container(
                      width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                          child: customText('Reset Password', 16, grey, FontWeight.normal)),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Container(
                      height: 2,
                      width: 130,
                      color: grey,
                    ),
                    SizedBox(
                      height: 9,
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
