
import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/post.dart';
import 'package:guido/homePageScreens/profile.dart';

import '../const.dart';
import 'AddPost.dart';
import 'chat.dart';
import 'home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  // const _bottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Color iconClr = Colors.black;
  int currentIndex =0;

  final GlobalKey<ScaffoldState>_scaffoldkey= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: IndexedStack(
        index: currentIndex,
        alignment: Alignment.center,
        children: const [
          HomePage(),
          PostPageWithGridView(),
          ChatPage(),
          ProfilePage(),

        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          margin: const EdgeInsets.only(left: 25,right: 25),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewPost(),));
            },
            backgroundColor: primaryColor,
            shape:const CircleBorder(),
          child: const Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [BottomNavigationBar(items:const [
           BottomNavigationBarItem(icon: Padding(
             padding: EdgeInsets.all(3.0),
             child: ImageIcon(AssetImage('assets/images/home.png',),size: 22, ),
           ),
              label: "Home"
          ),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/post.png',),size: 22),
              label: "Post"
          ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/chat.png'),size: 25),
              label: "Chat"
          ),
           BottomNavigationBarItem(icon:Padding(
             padding: EdgeInsets.all(3.0),
             child: ImageIcon( AssetImage('assets/images/profile.png',),size: 22),
           ),
              label: "Profile"
          ),

        ],
          selectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(color: Colors.black,),

          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex =value;
            });
          },
        ),
     ] ),

    );
  }
}
