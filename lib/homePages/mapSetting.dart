// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../const.dart';

class MapSetting extends StatefulWidget {
  const MapSetting({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MapSetting();
  }
}

class _MapSetting extends State<MapSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: customText('Map Setting', 16, grey, FontWeight.normal),
        ),
        body: Center(
          child: SizedBox(
            width: 310,
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    customText('Map Preferences', 16, grey, FontWeight.w700),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Guidoers', 14, grey, FontWeight.w400),
                    const Toogle(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Bizmarker', 14, grey, FontWeight.w400),
                    const Toogle(),
                  ],
                ),
                Row(
                  children: [
                    customText('Map Interest', 14, grey, FontWeight.w700),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Hashtag Interest', 14, grey, FontWeight.w400),
                    const Toogle(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Your Hashtag Interest', 14, grey, FontWeight.w400),
                    Row(
                      children: [
                        customText('5 Interest', 12, grey, FontWeight.w400),
                        const SizedBox(
                          width: 2,
                        ),
                        SizedBox(
                          width: 15,
                          height: 12,
                          child: InkWell(
                            child: Image.asset('assets/images/btnFor.png',width: 15,),),
                        )
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Toogle extends StatefulWidget {
  const Toogle({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Toogle();
  }
}

class _Toogle extends State<Toogle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        inactiveTrackColor: Colors.grey.shade200,
        inactiveThumbColor: Colors.white,
        activeTrackColor: Colors.blue.shade700,
        activeColor: Colors.white,
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        });
  }
}