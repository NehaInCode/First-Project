import 'package:flutter/material.dart';
import 'package:guido/const.dart';

class Privacy extends StatefulWidget{
  const Privacy({super.key});

  @override
  State<StatefulWidget> createState() {
  return _Privacy();
  }

}
class _Privacy extends State<Privacy>{
  bool _isSwitchedLI = false;
  bool _isSwitchedHP = false;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Center(child: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: customText('Privacy Settings', 16, grey, FontWeight.normal),
      )),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
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

                  value: _isSwitchedLI, onChanged: (value) {
                  setState(() {
                    _isSwitchedLI = value;
                  });
                },),
              )

            ],
          ),
          customText('Cannot receive message from buyer unless you accept', 12, grey, FontWeight.w100),
          const SizedBox(height: 20,),
          const Divider(height: 8,color: Color(0x119E9E9E),thickness: 8),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText('Prevent Adding onto Private Channel', 14, grey, FontWeight.w400),
              const Spacer(),
              customText('Default', 12, const Color(0xff9E9E9E), FontWeight.w400),
              const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText('My Collection', 14, grey, FontWeight.w400),
              const Spacer(),
              customText('Public', 12, const Color(0xff9E9E9E), FontWeight.w400),
              const Icon(Icons.arrow_forward_ios_outlined,size: 15,)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText('Hide Posts in Nearby', 14, grey, FontWeight.w400),
              Transform.scale(
                scaleX: 1.0,
                scaleY: 0.8,
                child: Switch(
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: Colors.blue.shade800,
                  activeColor: Colors.white,
                  inactiveTrackColor: const Color(0xffE0E0E0),

                  value: _isSwitchedHP, onChanged: (value) {
                  setState(() {
                    _isSwitchedHP = value;
                  });
                },),
              )

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