import 'package:flutter/material.dart';
import 'package:guido/const.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:guido/screens/register.dart';
import 'authentication.dart';
import 'forgot.dart';


class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {bool performLogin(){
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
  bool obscurePassword = true;
final _formKey = GlobalKey<FormState>();
String? emailError;
String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: primaryColor,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                    Image.asset('assets/Logo.png',width: 150),
                    const SizedBox(
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
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customText('New to guido? ', 14, grey, FontWeight.w400),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Register()));
                              },
                              child: customText('Register', 16, grey, FontWeight.w500,underline: true),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }

                            // Check if the input is a valid email ending with "@gmail.com"
                            if (RegExp(r'^[\w-]+(\.[\w-]+)*@gmail\.com$').hasMatch(value)) {
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            hintText: 'Email or Mobile Number',
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: grey),
                             ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            errorText: emailError,
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          cursorColor: grey,
                          textAlignVertical: TextAlignVertical.center,
                          controller: pass,
                          obscureText: obscurePassword,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)
                            ),
                            hintText: 'Password',
                            suffixIcon:GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscurePassword = !obscurePassword;
                                });
                              },
                              child: Icon(obscurePassword ?
                                Icons.visibility_off
                                : Icons.visibility,)
                            ),


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText: passwordError,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if( _formKey.currentState!.validate()){
                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Authentication(),));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                content: Text('Processing Data'),
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
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
                                    builder: (context) => const Forgot_password(),
                                  ));
                            },
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    SizedBox(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
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
                                      child: const Center(
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
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          'assets/images/pngwing.com (2).png',
                                          width: 10,
                                        ),
                                      )),
                                )
                              ])),
                    ),
                    const SizedBox(
                      height: 78,
                    ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}





