import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import '../homePageScreens/_bottomnavBar.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var userName = TextEditingController();
  var emailMobNum = TextEditingController();
  var passW = TextEditingController();
  var confirmPass = TextEditingController();
  Color myColor = const Color(0xFFFFD464);
  Color grey = const Color(0xFF616161);
  Color hColor = const Color(0xFF404040);
  bool obscurePassword = true;
  bool obscurePasswordC = true;
  final _formKey = GlobalKey<FormState>();
  String? UserNameError;
  String? emailNumError;
  String? passError;
  String? confirmPassError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: myColor,
        child: Form(
          key: _formKey,
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
                      Image.asset('assets/Logo.png', width: 150),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          customText(
                              'Register', 20, Colors.black, FontWeight.w700),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          customText('Already have an account?', 14, grey,
                              FontWeight.w400),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ));
                            },
                            child: customText(
                                'Login', 16, Colors.black, FontWeight.w500,
                                underline: true),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        cursorColor: grey,
                        textAlignVertical: TextAlignVertical.center,
                        controller: userName,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: hColor,
                              fontSize: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }

                          // Check if the input is a valid email ending with "@gmail.com"
                          if (RegExp(r'^[\w-]+(\.[\w-]+)*@gmail\.com$')
                              .hasMatch(value)) {
                            return null; // Valid email
                          }

                          // Check if the input is an 11-digit number
                          if (RegExp(r'^\d{11}$').hasMatch(value)) {
                            return null; // Valid 11-digit number
                          }

                          return 'Please enter a valid Gmail address or an 11-digit number';
                        },
                        cursorColor: grey,
                        textAlignVertical: TextAlignVertical.center,
                        controller: emailMobNum,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          isDense: true,
                          hintText: 'Email or Mobile Number',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        cursorColor: grey,
                        textAlignVertical: TextAlignVertical.center,
                        controller: passW,
                        obscureText: obscurePassword,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            hintText: 'Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscurePassword = !obscurePassword;
                                });
                              },
                              child: Icon(obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        cursorColor: grey,
                        textAlignVertical: TextAlignVertical.center,
                        controller: confirmPass,
                        obscureText: obscurePasswordC,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,// Adjust the padding as needed
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            hintText: 'Confirm Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscurePasswordC = !obscurePasswordC;
                                });
                              },
                              child: Icon(obscurePasswordC
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if(_formKey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),));
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Processing Data'),

                                    ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )),
                            child: customText(
                                'Register', 16, grey, FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 132,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


