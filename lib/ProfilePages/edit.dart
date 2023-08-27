import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';

import '../homePageScreens/home.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  void ShowBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        width: double.infinity,
        height: 140,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Center(
                child: Container(
                  height: 2,
                  width: 70,
                  color: grey,
                ),
              ),
              SizedBox(height: 30),
              customText('Camera', 14, grey, FontWeight.w500),
              SizedBox(height: 30),
              customText('From Gallery', 14, grey, FontWeight.w500),
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      );
    },);
  }
  bool _isMaleSelected  = false;
  bool _isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: customText('Edit Profile', 16, grey, FontWeight.w600),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children:[
                        CircleAvatar(
                        child: ClipOval(child: Image.asset('assets/images/profileImg.png',height: 100,)),radius: 50,
                      ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: grey
                          ),
                          child: Center(
                            child: IconButton(
                              padding: EdgeInsets.zero,
                            icon: Icon(Icons.camera_enhance_outlined,color: Colors.white,size: 15), onPressed: () {
                              ShowBottomSheet(context);
                              },),
                          ),
                          ),
                            )
                      ]
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              customText('Personal Information', 14, grey, FontWeight.w700),
             SizedBox(height: 15,),
             Row(
               children: [
               Padding(
                 padding: const EdgeInsets.only(top: 12.0),
                 child: Image.asset('assets/images/profile.png',height: 20,color: Color(0xff404040)),
               ),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                     child: Center(
                       child: TextField(
                         cursorColor: grey,
                         decoration: InputDecoration(
                           hintText: 'UserName',
                           hintStyle: TextStyle(
                             fontWeight: FontWeight.w100
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: grey,
                             )
                           ),
                           border: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Color(0xffDEDEDE),
                             )
                           )
                         ),
                       ),
                     ),
                   ),
                 )
               ],
             ),
              SizedBox(height: 5,),
              Row(
               children: [
               Padding(
                 padding: const EdgeInsets.only(top: 12.0),
                 child: Image.asset('assets/images/@.png',height: 20,color: grey),
               ),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                     child: Center(
                       child: TextField(
                         cursorColor: grey,
                         decoration: InputDecoration(
                           hintText: 'Gmail',
                             hintStyle: TextStyle(
                               fontWeight: FontWeight.w100
                             ),
                             focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(
                                   color: grey,
                                 )
                             ),
                           border: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Color(0xffDEDEDE),
                             )
                           )
                         ),
                       ),
                     ),
                   ),
                 )
               ],
             ),
              SizedBox(height: 5,),
              Row(
               children: [
               Padding(
                 padding: const EdgeInsets.only(top: 12.0),
                 child: Image.asset('assets/images/commet.png',height: 20,color: grey),
               ),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                     child: Center(
                       child: TextField(
                         cursorColor: grey,
                         decoration: InputDecoration(
                           hintText: 'Bio',
                             hintStyle: TextStyle(
                               fontWeight: FontWeight.w100
                             ),
                             focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(
                                   color: grey,
                                 )
                             ),
                           border: UnderlineInputBorder(
                             borderSide: BorderSide(
                               color: Color(0xffDEDEDE),
                             )
                           )
                         ),
                       ),
                     ),
                   ),
                 )
               ],
             ),
              SizedBox(height: 5,),
              GestureDetector(
                onTap: () {
                  showCustomDialog(context, 'Select Gender', Container(
                    height: 90,
                    child: Column(
                      children: [
                        InkWell(
                            onTap :(){
                              setState(() {
                                _isMaleSelected = true;
                                _isFemaleSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(child: customText('Male', 14, grey, FontWeight.w400),),
                                Spacer(),
                                Icon(Icons.check,color : _isMaleSelected ? grey : Colors.transparent)

                              ],
                            )),
                        SizedBox(height: 10,),
                        Divider(thickness: 2,color: grey,),
                        SizedBox(height: 10,),
                        InkWell(
                            onTap: () {
                              setState(() {
                                _isFemaleSelected = true;
                                _isMaleSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(child: customText('Female', 14, grey, FontWeight.w400),),
                                Spacer(),

                              Icon(Icons.check,color : _isFemaleSelected ? grey : Colors.transparent)


                              ],
                            )),
                      ],
                    ),
                  ), 'Cancel', Colors.white, () => null, 'Save', primaryColor, () => null);
                },
                child: Row(
                 children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 12.0),
                   child: Image.asset('assets/images/male.png',height: 20,color: grey),
                 ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                       child: Center(
                         child: TextField(
                           enabled: false,
                           readOnly: true,
                           cursorColor: grey,
                           decoration: InputDecoration(
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color:Color(0xffDEDEDE) ,
                               )
                             ),
                             suffixIcon: Icon(Icons.arrow_forward_ios_outlined,size: 14),
                             hintText: 'Gender',
                               hintStyle: TextStyle(
                                 fontWeight: FontWeight.w100
                               ),
                               focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(

                                     color: grey,
                                   )
                               ),
                             border: UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: Color(0xffDEDEDE),
                               ),
                             )
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
             ),
              ),
              SizedBox(height: 5,),
              GestureDetector(
                onTap: () {
                  showCustomDialog(context, 'Add Date', Column(
                    children: [

                    ],
                  ), 'Cancel', Colors.white, () => null, 'Save', primaryColor, () => null);
                },
                child: Row(
                 children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 12.0),
                   child: Image.asset('assets/images/birth.png',height: 20,color: grey),
                 ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                       child: Center(
                         child: TextField(
                           enabled: false,
                           readOnly: true,
                           cursorColor: grey,
                           decoration: InputDecoration(
                               suffixIcon: Icon(Icons.arrow_forward_ios_outlined,size: 14),
                             hintText: 'Add Birthdate',
                               hintStyle: TextStyle(
                                 fontWeight: FontWeight.w100
                               ),
                               focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(
                                     color: grey,
                                   )
                               ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: Color(0xffDEDEDE),
                               ),

                             )
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
             ),
              ),
              SizedBox(height: 25,),
              customText('Add Interest', 14, grey, FontWeight.w700),
              SizedBox(height: 25,),
              Row(
                children: [
                  customText('Your Hashtag Interest', 14, grey, FontWeight.w400),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                    },
                    child: Row(
                      children: [
                        customText('5 Interest', 12, Color(0xff9E9E9E), FontWeight.w400),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios_outlined,size: 14,),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 60,),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {
                  
                },child: customText('Save', 14, grey, FontWeight.normal)),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
