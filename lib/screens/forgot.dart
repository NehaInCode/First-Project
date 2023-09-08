import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import 'package:guido/screens/login.dart';

// ignore: camel_case_types
class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<Forgot_password> {
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: double.infinity,
        color: primaryColor,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/Logo.png', width: 150),
                const SizedBox(
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
                      const SizedBox(
                        height: 15,
                      ),
                      customText('No worries, we’ll send you reset instruction.',
                          16, grey, FontWeight.w400,
                          underline: false),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Please enter some text';
                            }
                            if(RegExp(r'^[\w-]+(\.[\w-]+)*@gmail\.com$').hasMatch(value)){
                              return null;
                            }
                            if(RegExp(r'^\d{11}$').hasMatch(value)){
                              return null;
                            }
                            return 'Please enter valid Gmail address or 11 digit number';
                          },
                          cursorColor: grey,
                          textAlignVertical: TextAlignVertical.bottom,
                          controller: email,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: grey)
                              ),
                              hintText: 'Email or Mobile Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if(_formKey.currentState!.validate()){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SetPassword(),
                                    ));
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Processing Data'),
                                  duration: Duration(seconds: 2),
                                  )
                                );
                              }

                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                            child: customText(
                                'Set Password', 16, grey, FontWeight.normal)),
                      ),
                      const SizedBox(
                        height: 210,
                      ),
                      Container(
                        height: 2,
                        width: 130,
                        color: grey,
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SetPassword();
  }
}

class _SetPassword extends State<SetPassword> {
  TextEditingController pass = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? passError;
  String? confirmPassError;
  bool obscurePass = true;
  bool obscureConfPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
        width: double.infinity,
        color: primaryColor,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/Logo.png', width: 150),
                const SizedBox(
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
                      const SizedBox(
                        height: 15,
                      ),
                      customText('Your new password must be different with previously used password', 16, grey, FontWeight.w400,underline: false),
                      const SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          cursorColor: grey,
                          obscuringCharacter: '*',
                          obscureText: obscurePass,
                          textAlignVertical: TextAlignVertical.bottom,
                          controller: pass,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: grey)
                              ),
                              hintText: 'New Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscurePass = !obscurePass;
                                  });
                                },
                                child: Icon(obscurePass ? Icons.visibility_off : Icons.visibility),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                          errorText: passError,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Please enter password';
                            }
                            return null;
                          },
                          cursorColor: grey,
                          obscureText: obscureConfPass,
                          obscuringCharacter: '*',
                          textAlignVertical: TextAlignVertical.bottom,
                          controller: cPass,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: grey)
                              ),
                              hintText: 'Confirm New Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureConfPass = !obscureConfPass;
                                  });
                                },
                                child: Icon(obscureConfPass ? Icons.visibility_off : Icons.visibility),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                          errorText: confirmPassError,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),


                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(

                            onPressed: () {
                              if(_formKey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data'),
                                  duration: Duration(seconds: 2),));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )),
                            child: customText('Reset Password', 16, grey, FontWeight.normal)),
                      ),
                      const SizedBox(
                        height: 160,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
