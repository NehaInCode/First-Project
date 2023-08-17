import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';

class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _About();
  }

}
class _About extends State<About>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
appBar: AppBar(
  title: customText('About', 16, grey, FontWeight.w600),
),
     body: Padding(
       padding: const EdgeInsets.all(15.0),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Terms and Conditions', 14, grey, FontWeight.w400),
               Icon(Icons.arrow_forward_ios_outlined,size: 15,)
             ],
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Support', 14, grey, FontWeight.w400),
               Icon(Icons.arrow_forward_ios_outlined,size: 15,)
             ],
           ),
           Spacer(),
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