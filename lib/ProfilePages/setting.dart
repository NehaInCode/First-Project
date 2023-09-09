import 'package:flutter/material.dart';
import 'package:guido/ProfilePages/privacy.dart';
import 'package:guido/const.dart';

import 'about.dart';
import 'account_security.dart';
import 'notification.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: customText('Setting', 16, grey, FontWeight.w600),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('Account', 14, grey, FontWeight.w700),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSecurity(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Account Security', 14, grey, FontWeight.w400),
                 const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Privacy Policy', 14, grey, FontWeight.w400),
                 const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
            const SizedBox(height: 20,),
            customText('Application', 14, grey, FontWeight.w700),
            const SizedBox(height: 30,),
            InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications(),));
             },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Notification', 14, grey, FontWeight.w400),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
            const SizedBox(height: 20,),
            customText('Info', 14, grey, FontWeight.w700),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About(),));
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('About', 14, grey, FontWeight.w400),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Version', 14, grey, FontWeight.w400),
               customText('1.0.0', 12, const Color(0xff9E9E9E), FontWeight.w500)
              ],
            ),
            const SizedBox(height: 30,),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0xffCB3A31),
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )

                  ),
                  onPressed: () {
showCustomDialog(context, 'Are you sure to Log Out?', Text('Are you sure you want to log out of this account now?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: grey)), 'Cancel', Colors.white, () => null, 'Logout', Colors.red, () => null);
              }, child: customText('Logout', 14, Colors.white, FontWeight.normal)),
            ),
            const SizedBox(
              height: 10,
            ),



          ],
        ),
      ),
    );
  }
}





