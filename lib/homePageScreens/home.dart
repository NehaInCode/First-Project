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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ));
                          },
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
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

// class HomeBottom extends StatefulWidget {
//   final BuildContext parentContext;
//
//   HomeBottom(this.parentContext);
//
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeBottom();
//   }
// }
// class _HomeBottom extends State<HomeBottom> {
//   Color iconClr = Colors.black;
//   int currentIndex =0;
//
//   GlobalKey<ScaffoldState>_scaffoldkey= GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldkey,
//       body: Stack(
//         children: [
//           HomePage(),
//           PostPageWithGridView(),
//           ChatPage(),
//           ProfilePage(),
//
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(items:[
//         const BottomNavigationBarItem(icon: Icon(Icons.home),
//           label: "Home"
//         ),
//         const BottomNavigationBarItem(icon: Icon(Icons.browse_gallery),
//           label: "Post"
//         ),
//         const BottomNavigationBarItem(icon: Icon(Icons.chat),
//           label: "Chat"
//         ),
//         const BottomNavigationBarItem(icon: Icon(Icons.account_box),
//           label: "Profile"
//         ),
//
//       ],
// selectedItemColor: Colors.red,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: currentIndex,
//         onTap: (value) {
//           setState(() {
//             currentIndex =value;
//           });
//         },
//       ),
//
//     );
//
//
//
//     //   BottomNavigationBar(
//     //   type: BottomNavigationBarType.fixed,
//     //   currentIndex: _currentIndex,
//     //   onTap: (int index) {
//     //     setState(() {
//     //       _currentIndex = index;
//     //     });
//     //   },
//     //   items: [
//     //     BottomNavigationBarItem(
//     //       icon: homeIcon,
//     //       label: 'Home',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: postIcon,
//     //
//     //       label: 'Post',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: btn(context),
//     //       label: '',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: chatIcon,
//     //
//     //       label: 'Chat',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: profileIcon,
//     //       label: 'Profile',
//     //     ),
//     //   ],
//     //   selectedItemColor: selectedColor,
//     //   unselectedItemColor: unselectedColor,
//     //   selectedLabelStyle: TextStyle(color: selectedColor),
//     //   unselectedLabelStyle: TextStyle(color: unselectedColor),
//     //   showUnselectedLabels: true,
//     // );
//   }
// }
// class _HomeBottom extends State<HomeBottom> {
//   Color selectedColor = Colors.blue.shade800;
//   Color unselectedColor = Colors.grey; // Make sure 'grey' is defined or use Colors.grey
//
//   int _currentIndex = 0;
//
//   final List<Widget> pages = [
//     HomePage(),
//     PostPageWithGridView(),
//     Container(), // Placeholder for the middle button
//     ChatPage(),
//     ProfilePage(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         onTap: (int index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.post_add),
//             label: 'Post',
//           ),
//           BottomNavigationBarItem(
//             icon: FloatingActionButton(
//               onPressed: () {
//
//               },
//               child: Icon(Icons.add),
//             ),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         selectedItemColor: selectedColor,
//         unselectedItemColor: unselectedColor,
//         selectedLabelStyle: TextStyle(color: selectedColor),
//         unselectedLabelStyle: TextStyle(color: unselectedColor),
//         showUnselectedLabels: true,
//       ),
//     );
//   }
// }


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
        // appBar: AppBar(
        //   title: customText('Map Setting', 16, grey, FontWeight.normal),
        // ),
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
