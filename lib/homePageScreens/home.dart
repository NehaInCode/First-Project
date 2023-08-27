import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/chat.dart';
import 'package:guido/homePageScreens/post.dart';
import 'package:guido/homePageScreens/profile.dart';
import '../const.dart';
import 'AddPost.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  margin: const EdgeInsets.only(right: 19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 285,
                        height: 45,
                        child: TextField(
                          cursorColor: grey,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ));
                          },
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)
                            ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              prefixIcon: const Icon(Icons.search),
                              hintText: '#SearchAnyThing',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w100)),
                        ),
                      ),

                      // SizedBox(width: 2,),
                      Container(
                        height: 45,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MapSetting(),
                                  ));
                            },
                            child: Image.asset(
                              'assets/images/shape (Stroke).png',
                              width: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText('Map here!', 30, Colors.black, FontWeight.w100)
              ],
            )),
      ),

    );
  }
}



class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchPage();
  }
}

class _SearchPage extends State<SearchPage> {
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
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: '#SearchAnyThing',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Favorite', 14, grey, FontWeight.w700),
                    TextButton(
                        onPressed: () {},
                        child: customText('Delete All', 12, Colors.red.shade900,
                            FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#coffee', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#restaurant', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#workingspace', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#area', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#food', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    customText('Suggestion', 14, grey, FontWeight.w700),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#coffee', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#restaurant', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#workingspace', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#area', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#food', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MapSetting extends StatefulWidget {
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
          child: Container(
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
                    Toogle(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Bizmarker', 14, grey, FontWeight.w400),
                    Toogle(),
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
                    Toogle(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Your Hashtag Interest', 14, grey, FontWeight.w400),
                    Container(
                      child: Row(
                        children: [
                          customText('5 Interest', 12, grey, FontWeight.w400),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 15,
                            height: 12,
                            child: InkWell(
                              child: Image.asset('assets/images/btnFor.png',width: 15,),),
                          )
                        ],
                      )
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
