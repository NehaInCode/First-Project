import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';


class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText('Profile here!', 30, Colors.black, FontWeight.w100)
              ],
            )),
      ),

    );
  }
}


