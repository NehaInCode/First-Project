import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import '../homePages/searchPage.dart';
import 'package:intl/intl.dart' as intl; // Add this import statement


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime? selectedDate; // Add this variable to store the selected date
  TextEditingController birthday =TextEditingController();

  // ignore: non_constant_identifier_names
  void ShowBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) {
      return SizedBox(
        width: double.infinity,
        height: 140,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Center(
                child: Container(
                  height: 2,
                  width: 70,
                  color: grey,
                ),
              ),
              const SizedBox(height: 30),
              customText('Camera', 14, grey, FontWeight.w500),
              const SizedBox(height: 30),
              customText('From Gallery', 14, grey, FontWeight.w500),
              const SizedBox(height: 30),
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
  final _formKey = GlobalKey<FormState>();
  String? nameError;
  String? gmailError;
  String? bioError;

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
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        children:[
                          CircleAvatar(
                          radius: 50,
                          child: ClipOval(child: Image.asset('assets/images/profileImg.png',height: 100,)),
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
                              icon: const Icon(Icons.camera_enhance_outlined,color: Colors.white,size: 15), onPressed: () {
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
                const SizedBox(height: 25),
                customText('Personal Information', 14, grey, FontWeight.w700),
               const SizedBox(height: 15,),
               Row(
                 children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 12.0),
                   child: Image.asset('assets/images/profile.png',height: 20,color: const Color(0xff404040)),
                 ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                       child: Center(
                         child: TextFormField(
                           textAlignVertical: TextAlignVertical.bottom,
                           validator: (value) {
                             if(value == null||value.isEmpty){
                               return 'Please enter your name';
                             }
                             return null;
                           },
                           cursorColor: grey,
                           decoration: InputDecoration(
                             hintText: 'UserName',
                             hintStyle: const TextStyle(
                               fontWeight: FontWeight.w100,
                               fontSize: 14
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: grey,
                               )
                             ),
                             border: const UnderlineInputBorder(
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
                const SizedBox(height: 5,),
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
                         child: TextFormField(
                           textAlignVertical: TextAlignVertical.bottom,
                           validator: (value) {
                             if(value == null || value.isEmpty){
                               return 'Please enter Gmail address or number';
                             }
                             if(RegExp(r'^[\w-]+(\.+[\w.]+)*@gmail\.com$').hasMatch(value)){
                               return null;
                             }
                             if (RegExp(r'^\d{11}$').hasMatch(value)) {
                               return null; // Valid 11-digit number
                             }
                             return 'Please enter a valid Gmail address or an 11-digit number';
                           },
                           cursorColor: grey,
                           decoration: InputDecoration(
                             hintText: 'Gmail',
                               hintStyle: const TextStyle(
                                 fontWeight: FontWeight.w100,
                                 fontSize: 14
                               ),
                               focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(
                                     color: grey,
                                   )
                               ),
                             border: const UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: Color(0xffDEDEDE),
                               ),
                             ),
                             errorText: gmailError,
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
                const SizedBox(height: 5,),
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
                         child: TextFormField(
                           textAlignVertical: TextAlignVertical.bottom,
                           validator: (value) {
                             if(value == null || value.isEmpty){
                               return 'Please enter some text';
                             }
                             return null;
                           },
                           cursorColor: grey,
                           decoration: InputDecoration(
                             hintText: 'Bio',
                               hintStyle: const TextStyle(
                                 fontWeight: FontWeight.w100,
                                 fontSize: 14
                               ),
                               focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(
                                     color: grey,
                                   )
                               ),
                             border: const UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: Color(0xffDEDEDE),
                               )
                             ),
                             errorText: bioError,
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
                const SizedBox(height: 5,),
                GestureDetector(
                  onTap: () {
                    showCustomDialog(
                      context,
                      'Select Gender',
                      StatefulBuilder(
                        builder: (context,setStateNew) {
                          return SizedBox(

                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                          setStateNew(() {
                                      _isMaleSelected = true;
                                      _isFemaleSelected = false;
                                    });
                                    print(_isMaleSelected);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        child: customText('Male', 14, grey, FontWeight.w400),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        Icons.check,
                                        color:  _isMaleSelected?grey:Colors.transparent,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(thickness: 1, color: grey,),
                                InkWell(
                                  onTap: () {
                                    setStateNew(() {
                                      _isFemaleSelected = true;
                                      _isMaleSelected = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        child: customText('Female', 14, grey, FontWeight.w400),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        Icons.check,
                                        color: _isFemaleSelected ? grey : Colors.transparent,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      ),
                      'Cancel',
                      Colors.white,
                          () => null,
                      'Save',
                      primaryColor,
                          () => null,
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Image.asset(
                          'assets/images/male.png',
                          height: 20,
                          color: _isMaleSelected ? grey : null,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                          child: Center(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              enabled: false,
                              readOnly: true,
                              cursorColor: grey,
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffDEDEDE),
                                  ),
                                ),
                                suffixIcon: const Icon(Icons.arrow_forward_ios_outlined, size: 14),
                                hintText: 'Gender',
                                hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w100,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: grey,
                                  ),
                                ),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffDEDEDE),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 5,),

              GestureDetector(
              onTap: () {
                showDatePicker(
                  initialEntryMode:DatePickerEntryMode.inputOnly,
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                ).then((pickedDate) {
                  if (pickedDate != null && pickedDate != selectedDate) {
                    setState(() {
                      selectedDate = pickedDate;
                      birthday.text =selectedDate.toString();
                    });
                  }
                });
        },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Image.asset('assets/images/birth.png', height: 20, color: grey),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  child: Center(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: birthday,
                      enabled: false,
                      readOnly: true,
                      cursorColor: grey,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_forward_ios_outlined, size: 14),
                        hintText: 'Add Birthdate',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w100,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: grey,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffDEDEDE),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
                const SizedBox(height: 25,),
                customText('Add Interest', 14, grey, FontWeight.w700),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    customText('Your Hashtag Interest', 14, grey, FontWeight.w400),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                      },
                      child: Row(
                        children: [
                          customText('5 Interest', 12, const Color(0xff9E9E9E), FontWeight.w400),
                          const SizedBox(width: 5),
                          const Icon(Icons.arrow_forward_ios_outlined,size: 14,),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 60,),
                SizedBox(
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
                const SizedBox(height: 15,),
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
        ),
      )
    );
  }
}
