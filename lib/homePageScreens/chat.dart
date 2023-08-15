
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatPage();
  }
}

class _ChatPage extends State<ChatPage> {
  int NotificationNum = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
   title: Center(child: customText('Chat', 16, grey, FontWeight.normal)),
   actions: [
     Padding(
       padding: const EdgeInsets.only(right: 8.0),
       child: Icon(Icons.search),
     )
   ],
 ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText('Kim Wexler', 16, grey, FontWeight.w700),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {}, child: Row(
                  children: [
                    Image.asset('assets/images/pencilBox.png',height: 15,),
                    SizedBox(width: 8),
                    customText('Compose', 12, grey, FontWeight.w500)
                  ],
                ))
              ],
            ),
            SizedBox(height: 20),
            Divider(
              height: 1,
              color: Color(0xffDEDEDE),
              thickness: 1,
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined,size: 13,),
                SizedBox(width: 15),
                customText('Private Channel', 14, grey, FontWeight.w600),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined,size: 13,),
                SizedBox(width: 15),
                customText('Community Channel', 14, grey, FontWeight.w600),
               Spacer(),
               Image.asset('assets/images/cutSpeaker.png',height: 15,),
                Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                  color: Color(0xffCB3A31),
                  borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: customText('${NotificationNum}', 10, Colors.white, FontWeight.bold)),
                  ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined,size: 13,),
                SizedBox(width: 15),
                customText('Direct Message', 14, grey, FontWeight.w600),
                Spacer(),
               // Image.asset('assets/images/cutSpeaker.png',height: 15,),
                Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                  color: Color(0xffCB3A31),
                  borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: customText('${NotificationNum}', 10, Colors.white, FontWeight.bold)),
                  ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.arrow_forward_ios_outlined,size: 13,),
                SizedBox(width: 15),
                customText('Chat Offer', 14, grey, FontWeight.w600),
                Spacer(),
               // Image.asset('assets/images/cutSpeaker.png',height: 15,),
                Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                  color: Color(0xffCB3A31),
                  borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: customText('${NotificationNum}', 10, Colors.white, FontWeight.bold)),
                  ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
//
// class HomeBottom extends StatefulWidget {
//
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeBottom();
//   }
// }
//
// class _HomeBottom extends State<HomeBottom> {
//   Color iconClr = Colors.black;
//   Widget btn(BuildContext context){
//     return Stack(
//       children: [
//         Positioned(
//           child: FloatingActionButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(100.0),
//               ),
//               child: Icon(
//                 Icons.add,
//               ),
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewPost(),));
//               }),
//         )
//       ],
//     );
//   }
//   var homeIcon = Builder(
//
//       builder: (context) =>
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => HomePage()),
//               );
//             },
//             child: Image.asset(
//               'assets/images/home.png',
//
//               width: 18,
//             ),
//           ));
//   var postIcon = Builder(
//     builder: (context) =>
//         InkWell(
//           onTap: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => PostPageWithGridView()),
//             );
//           },
//           child: Image.asset(
//             'assets/images/post.png',
//
//             width: 20,
//           ),
//         ),
//   );
//   var chatIcon = Builder(
//       builder: (context) =>
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => ChatPage()),
//               );
//             },
//             child: Image.asset(
//               'assets/images/chat.png',
//               width: 25,
//             ),
//           ));
//   var profileIcon = Builder(
//       builder: (context) =>
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => ProfilePage()),
//               );
//             },
//             child: Image.asset(
//               'assets/images/profile.png',
//               width: 20,
//             ),
//           ));
//   Color selectedColor = Colors.blue.shade800;
//   Color unselectedColor = grey;
//
//   int _currentIndex = 3;
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       currentIndex: _currentIndex,
//       onTap: (int index) {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       items: [
//         BottomNavigationBarItem(
//           icon: homeIcon,
//
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: postIcon,
//
//           label: 'Post',
//         ),
//         BottomNavigationBarItem(
//           icon: btn(context),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: chatIcon,
//
//           label: 'Chat',
//         ),
//         BottomNavigationBarItem(
//           icon: profileIcon,
//           label: 'Profile',
//         ),
//       ],
//       selectedItemColor: selectedColor,
//       unselectedItemColor: unselectedColor,
//       selectedLabelStyle: TextStyle(color: selectedColor),
//       unselectedLabelStyle: TextStyle(color: unselectedColor),
//       showUnselectedLabels: true,
//     );
//   }
// }