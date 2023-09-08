import 'package:flutter/material.dart';

import '../const.dart';

class AccountSecurity extends StatefulWidget{
  const AccountSecurity({super.key});

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Mobile(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Mobile', 14, grey, FontWeight.w400),
                  const Spacer(),
                  customText('Add', 12, const Color(0xff9E9E9E), FontWeight.w400),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Password(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Password', 14, grey, FontWeight.w400),
                  const Spacer(),
                  customText('Change', 12, const Color(0xff9E9E9E), FontWeight.w400),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Real-name Verification', 14, grey, FontWeight.w400),
                const Spacer(),
                customText('Not Verified', 12, const Color(0xff9E9E9E), FontWeight.w400),
                const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Official Verification', 14, grey, FontWeight.w400),
                const Spacer(),
                customText('Not Verified', 12, const Color(0xff9E9E9E), FontWeight.w400),
                const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            const SizedBox(height: 20,),
            const Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            const SizedBox(height: 20,),
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
                    inactiveTrackColor: const Color(0xffE0E0E0),
                    value: _isSwitched, onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },),
                )

              ],
            ),
            const SizedBox(height: 20,),
            const Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Upgrade to Pro', 14, grey, FontWeight.w400),
                const Spacer(),
                customText('Not Enable', 12, const Color(0xff9E9E9E), FontWeight.w400),
                const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            const Spacer(),

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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Mobile extends StatefulWidget{
  const Mobile({super.key});

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
              cursorColor: grey,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: grey,
                    width: 1,
                  )
                ),
                  hintText: '+9  9823788249',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            const SizedBox(height: 5),
            customText('Maximum of 13 number', 12, grey, FontWeight.w100),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: () {

                  }, child: customText('Save', 14, grey, FontWeight.normal)),
            ),
            const SizedBox(height: 10),
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
  const Password({super.key});

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
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                cursorColor: grey,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: grey,
                      width: 1,
                    )
                  ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
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
            const SizedBox(height: 20),
            customText('New Password', 14, grey, FontWeight.w400),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                cursorColor: grey,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: grey,
                      width: 1,
                    )
                  ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
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
            const SizedBox(height: 20),
            customText('Confirm New Password', 14, grey, FontWeight.w400),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                cursorColor: grey,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: grey,
                      width: 1,
                    )
                  ),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
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
            const Spacer(),
            SizedBox(
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
            const SizedBox(height: 10),
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