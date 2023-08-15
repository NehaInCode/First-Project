import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class SearchAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchAddPage();
  }
}
class _SearchAddPage extends State<SearchAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Search', 16, grey, FontWeight.normal),
      ),
      body: Center(
        child: Container(
          width: 310,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(
                  width: 310,
                  height: 45,
                  child: TextField(
                    cursorColor: Color(0xff404040),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: grey,
                        )
                      ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: '#SearchAnyThing',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100)),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Favorite', 14, grey, FontWeight.w700),
                    InkWell(
                      child: customText('Delete All', 14, Colors.red, FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('#coffee', 14, grey, FontWeight.w400),
                    InkWell(
                      child: customText('Delete', 14, Colors.red, FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    customText('Suggestion', 14, grey, FontWeight.w700),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('#coffee', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Add', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('#restaurant', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Add', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('#workingspace', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Add', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('#area', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Add', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('#food', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Add', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LocationAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LocationAddPage();
  }
}
class _LocationAddPage extends State<LocationAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Search', 16, grey, FontWeight.normal),
      ),
      body: Center(
        child: Container(
          width: 310,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(
                  width: 310,
                  height: 45,
                  child: TextField(
                    cursorColor: Color(0xff404040),
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: grey,
                        )
                      ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search Location',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100)),
                  ),
                ),
            Container(
                height: 200,
              child: Center(child: Text('Map Here')),
              
            ),
                Row(
                  children: [
                    customText('Suggestion', 14, grey, FontWeight.w700),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('Yunnan', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Location', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('Boon Lay', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Location', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('Jurong West', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Location', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('Keat Hong', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Location', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText('Choa Cu Kang', 14, grey, FontWeight.w400),
                          InkWell(
                            child: customText('Location', 14, Color(0xff4468FA), FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}