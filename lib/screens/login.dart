import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guido/homePageScreens/_bottomnavBar.dart';
import 'package:guido/main.dart';
import 'package:guido/screens/register.dart';
import '../homePageScreens/home.dart';
import 'forgot.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool performLogin(){
    if(emailMobNum.text != '' && pass.text != ''){
      return true;
    }else{
      return false;
    }
  }
  bool isLoggedIn = false;

  bool _ischecked = false;
  TextEditingController emailMobNum = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: primaryColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                  Image.asset('assets/Logo.png',width: 150),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text(
                        'Login',
                        style:GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w700

                        ),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          customText('New to guido? ', 16, grey, FontWeight.w400),

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: customText('Register', 16, grey, FontWeight.w500,underline: true),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
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
                          controller: pass,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: grey,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          if(emailMobNum.text != '' && pass.text != ''){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Authentication(),));
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Please enter both Email/Mobile Number and Password.'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                        child: customText('Login', 16, grey, FontWeight.normal),
                        ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 310,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: _ischecked,

                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _ischecked = newValue ?? false;
                                  });
                                },
                              side: BorderSide(color:grey),
                             activeColor: Colors.transparent,
                              checkColor: grey,

                            ),
                           customText('Remember me', 14, grey, FontWeight.normal)
                          ],
                        ),
                        InkWell(
                          child: customText('Forgot Password', 14, grey, FontWeight.normal,underline: true),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgot_password(),
                                ));
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 1,
                          color: grey,
                        ),
                       customText('or Continue with', 14, grey, FontWeight.w400),
                        Container(
                          width: 80,
                          height: 1,
                          color: grey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                        width: 300,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                        'assets/images/pngwing.com (1).png',
                                        width: 50)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.apple,
                                        size: 25,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      'assets/images/pngwing.com (2).png',
                                      width: 10,
                                    )),
                              )
                            ])),
                  ),
                  SizedBox(
                    height: 78,
                  ),

                  Container(
                    height: 2,
                    width: 130,
                    color: grey,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }


}

class Authentication extends StatefulWidget {
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
        width: double.infinity,
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset('assets/Logo.png',width: 150),
                SizedBox(
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
                    SizedBox(
                      height: 15,
                    ),
                    customText('Enter 6-digit code from your Two-factor Authenticator email.', 16, grey, FontWeight.w400),
                    PinCodeTextField(
                      controller: pin,
                      appContext: context,
                      length: 6,
                      keyboardType: TextInputType.phone,
                      pinTheme: PinTheme(
                        inactiveColor: grey,
                        activeColor: grey,
                        selectedFillColor: Colors.white,
                          fieldWidth: 40
                      ),
                      textStyle: TextStyle(
                        color: grey,

                      ),

                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {
                            if(pin.text != '') {
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => BottomNavBar(),));
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
                SizedBox(
                  height: 220,
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
          ),
        ),
      ),
    );
  }
}




