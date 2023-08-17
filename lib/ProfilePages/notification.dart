import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class Notifications extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Notifications();
  }

}
class _Notifications extends State<Notifications>{
  bool _isSwitchedL = false;
  bool _isSwitchedC = false;
  bool _isSwitchedR = false;
  bool _isSwitchedM = false;
  bool _isSwitchedMR = false;
  bool _isSwitchedPC = false;
  bool _isSwitchedCC = false;
  bool _isSwitchedDM = false;
  bool _isSwitchedCO = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
title: customText('Notification', 16, grey, FontWeight.normal),
     ),
     body: Padding(
       padding: const EdgeInsets.all(15.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           customText('Post', 14, grey, FontWeight.w700),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Like', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedL, onChanged: (value) {
                   setState(() {
                     _isSwitchedL = value;
                   });
                 },),
               )

             ],
           ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Comment', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedC, onChanged: (value) {
                   setState(() {
                     _isSwitchedC = value;
                   });
                 },),
               )

             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Reply', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedR, onChanged: (value) {
                   setState(() {
                     _isSwitchedR = value;
                   });
                 },),
               )

             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Mention', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedM, onChanged: (value) {
                   setState(() {
                     _isSwitchedM = value;
                   });
                 },),
               )

             ],
           ),
           SizedBox(height: 15,),
           Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
           SizedBox(height: 15,),
           customText('Chat', 14, grey, FontWeight.w700),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Message Request', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedMR, onChanged: (value) {
                   setState(() {
                     _isSwitchedMR = value;
                   });
                 },),
               )

             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Private Channel', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedPC, onChanged: (value) {
                   setState(() {
                     _isSwitchedPC = value;
                   });
                 },),
               )

             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Community Channel', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedCC, onChanged: (value) {
                   setState(() {
                     _isSwitchedCC = value;
                   });
                 },),
               )

             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Direct Message', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedDM, onChanged: (value) {
                   setState(() {
                     _isSwitchedDM = value;
                   });
                 },),
               )

             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customText('Chat Offer', 14, grey, FontWeight.w400),
               Transform.scale(
                 scaleX: 1.0,
                 scaleY: 0.8,
                 child: Switch(
                   inactiveThumbColor: Colors.white,
                   activeTrackColor: Colors.blue.shade800,
                   activeColor: Colors.white,
                   inactiveTrackColor: Color(0xffE0E0E0),

                   value: _isSwitchedCO, onChanged: (value) {
                   setState(() {
                     _isSwitchedCO = value;
                   });
                 },),
               )

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