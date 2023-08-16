import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';

import 'account_security.dart';

class Settings extends StatelessWidget {
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
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSecurity(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Account Security', 14, grey, FontWeight.w400),
                 Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Privacy Policy', 14, grey, FontWeight.w400),
               Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            SizedBox(height: 20,),
            Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
            SizedBox(height: 20,),
            customText('Application', 14, grey, FontWeight.w700),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Notification', 14, grey, FontWeight.w400),
                Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            SizedBox(height: 20,),
            Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
            SizedBox(height: 20,),
            customText('Info', 14, grey, FontWeight.w700),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('About', 14, grey, FontWeight.w400),
                Icon(Icons.arrow_forward_ios_outlined,size: 15,)
              ],
            ),
            SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Version', 14, grey, FontWeight.w400),
               customText('1.0.0', 12, Color(0xff9E9E9E), FontWeight.w500)
              ],
            ),
            SizedBox(height: 30,),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xffCB3A31),
                    fixedSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )

                  ),
                  onPressed: () {

              }, child: customText('Logout', 14, Colors.white, FontWeight.normal)),
            ),
            SizedBox(
              height: 10,
            ),
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





