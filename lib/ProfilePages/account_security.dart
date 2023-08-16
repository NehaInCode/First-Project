import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class AccountSecurity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AccountSecurity();
  }

}
class _AccountSecurity extends State<AccountSecurity>{
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Account Security', 16, grey, FontWeight.normal),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mobile(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Mobile', 14, grey, FontWeight.w400),
                  Spacer(),
                  customText('Add', 12, Color(0xff9E9E9E), FontWeight.w400),
                  Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Password(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Password', 14, grey, FontWeight.w400),
                  Spacer(),
                  customText('Change', 12, Color(0xff9E9E9E), FontWeight.w400),
                  Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Real-name Verification', 14, grey, FontWeight.w400),
                Spacer(),
                customText('Not Verified', 12, Color(0xff9E9E9E), FontWeight.w400),
                Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Official Verification', 14, grey, FontWeight.w400),
                Spacer(),
                customText('Not Verified', 12, Color(0xff9E9E9E), FontWeight.w400),
                Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            SizedBox(height: 20,),
            Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Save Login Info', 14, grey, FontWeight.w400),
                Transform.scale(
                  scaleX: 1.0,
                  scaleY: 0.8,
                  child: Switch(
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Colors.blue.shade800,
                    activeColor: Colors.white,
                    inactiveTrackColor: grey,
                    value: _isSwitched, onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },),
                )

              ],
            ),
            SizedBox(height: 20,),
            Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Upgrade to Pro', 14, grey, FontWeight.w400),
                Spacer(),
                customText('Not Enable', 12, Color(0xff9E9E9E), FontWeight.w400),
                Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            Spacer(),

            Container(
              height: 2,
              width: 130,
              color: grey,
            ),

          ],
        ),
      ),
    );
  }

}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Mobile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Mobile();
  }

}
class _Mobile extends State<Mobile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Mobile', 16, grey, FontWeight.normal),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: '+9  9823788249',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            SizedBox(height: 5),
            customText('Maximum of 13 number', 12, grey, FontWeight.w100),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: () {

                  }, child: customText('Save', 14, grey, FontWeight.normal)),
            ),
            SizedBox(height: 10),
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
  }

}

class Password extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Password();
  }

}
class _Password extends State<Password>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Password', 16, grey, FontWeight.normal),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('Current Password', 14, grey, FontWeight.w400),
            SizedBox(height: 10),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),
            SizedBox(height: 20),
            customText('New Password', 14, grey, FontWeight.w400),
            SizedBox(height: 10),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),
            SizedBox(height: 20),
            customText('Confirm New Password', 14, grey, FontWeight.w400),
            SizedBox(height: 10),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: () {

                  }, child: customText('Save', 14, grey, FontWeight.normal)),
            ),
            SizedBox(height: 10),
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
  }

}