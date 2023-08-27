import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class PostChatPage extends StatelessWidget {
  void ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 195,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0x66404040),
                        borderRadius: BorderRadius.circular(2)),
                    height: 3,
                    width: 70,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                customText('Leave Chat', 14, grey, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText(
                    'Block Chat', 14, Colors.red.shade800, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText(
                    'Report Chat', 14, Colors.red.shade800, FontWeight.w500),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(3)),
                    height: 3,
                    width: 130,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('supermarkets', 16, grey, FontWeight.w600),
            customText('Online', 12, grey, FontWeight.w200)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                ShowBottomSheet(context);
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#flowers', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#bucket', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#refrigerator', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#hunting', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#nearest', 10, Colors.white, FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      child: Image.asset(
                        'assets/images/Photo1.jpg',
                        width: 50,
                        fit: BoxFit.cover,
                      ))),
              title: Row(
                children: [
                  Container(
                      height: 18,
                      width: 18,
                      child: Image.asset(
                        'assets/images/cart.png',
                        fit: BoxFit.contain,
                        color: Color(0x77404040),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  customText('For Sale', 13, grey, FontWeight.w100),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 7.0, left: 7.0, top: 4.0, bottom: 4.0),
                      child: customText(
                          'Available', 10, Colors.white, FontWeight.normal),
                    ),
                  )
                ],
              ),
              subtitle: customText(
                  'How many cubes do we need to build a cylinder?',
                  15,
                  grey,
                  FontWeight.normal,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customText('\$15-30', 14, grey, FontWeight.w500),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(160, 45),
                        side: BorderSide(
                          width: 1,
                          color: Color(0x77404040),
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        )),
                    onPressed: () {},
                    child:
                    customText('Edit Price', 14, grey, FontWeight.normal)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(160, 45),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        )),
                    onPressed: () {},
                    child:
                    customText('Send Offer', 14, grey, FontWeight.normal)),
              ],
            ),
            SizedBox(
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/safetyText.png'),
                    ),
                  ),
                  Container(
                    width: 210,
                    height: 45,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          hintText: 'Typing a message',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: grey,
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/sendCmnt.png'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              height: 2,
              width: 130,
              color: grey,
            ),
            SizedBox(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}