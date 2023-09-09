
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../const.dart';
import '../homePageScreens/_bottomnavBar.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController pin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/Logo.png',width: 150),
                const SizedBox(
                  height: 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText('Two-factor Authentication', 20, Colors.black, FontWeight.w700),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    customText('Enter 6-digit code from your Two-factor Authenticator email.', 16, grey, FontWeight.w400),
                    PinCodeTextField(

                      controller: pin,
                      appContext: context,
                      length: 6,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      pinTheme: PinTheme(
                        selectedColor: grey,
                        inactiveColor: grey,
                        activeColor: grey,
                        activeFillColor: grey,
                        selectedFillColor: Colors.white,
                        fieldWidth: 40,
                      ),
                      cursorColor: grey,
                      textStyle: TextStyle(
                        color: grey,

                      ),

                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {
                            if(pin.text != '') {
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => const BottomNavBar(),));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                          child: customText('Register', 16, grey, FontWeight.normal)),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 220,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}