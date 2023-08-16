
import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/post.dart';
import 'package:guido/homePageScreens/profile.dart';

import '../const.dart';
import 'AddPost.dart';
import 'chat.dart';
import 'home.dart';

class BottomNavBar extends StatefulWidget {
  // const _bottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Color iconClr = Colors.black;
  int currentIndex =0;

  GlobalKey<ScaffoldState>_scaffoldkey= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: IndexedStack(
        index: currentIndex,
        alignment: Alignment.center,
        children: [
          HomePage(),
          PostPageWithGridView(),
          ChatPage(),
          ProfilePage(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewPost(),));
        },
      child: Icon(Icons.add),
        backgroundColor: primaryColor,
        shape:CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items:[
         BottomNavigationBarItem(icon:Image.asset('assets/images/home.png',width: 23,color: Colors.grey,),
            label: "Home"
        ),
         BottomNavigationBarItem(icon: Image.asset('assets/images/post.png',width: 23,),
            label: "Post"
        ),

        BottomNavigationBarItem(icon: Image.asset('assets/images/chat.png',width: 27),
            label: "Chat"
        ),
         BottomNavigationBarItem(icon: Image.asset('assets/images/profile.png',width: 22,),
            label: "Profile"
        ),

      ],
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black,),

        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex =value;
          });
        },
      ),

    );
  }
}
