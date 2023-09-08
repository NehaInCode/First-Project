// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../ChatPages/chatOffersChat.dart';
import '../ChatPages/composeChat.dart';
import '../ChatPages/user01.dart';
import '../const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChatPage();
  }
}

class chat {
  final String imagePath;
  final String title;

  chat({
    required this.imagePath,
    required this.title
  });
}
List<chat> chatDetail = [
  chat(imagePath: 'assets/images/chatOffer1.png', title: 'beachcomber',),
  chat(imagePath: 'assets/images/chatOffer2.png', title: 'bookworm87', ),
  chat(imagePath: 'assets/images/chatOffer3.png', title: 'trailblaze',),
  chat(imagePath: 'assets/images/chatOffer4.png', title: 'solstice_soul', ),
];

class _ChatPage extends State<ChatPage> {

  bool _isExpandedPC = false;
  bool _isExpandedCC = false;
  bool _isExpandedDM = false;
  bool _isExpandedCO = false;
  int NotificationNum = 2;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customText('Chat', 16, grey, FontWeight.w600),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ComposeChat(),));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/pencilBox.png',
                            height: 15,
                          ),
                          const SizedBox(width: 8),
                          customText('Compose', 12, grey, FontWeight.w500)
                        ],
                      ))
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                height: 1,
                color: Color(0xffDEDEDE),
                thickness: 1,
              ),
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  leading: _isExpandedPC ?
                  Icon(Icons.keyboard_arrow_down_rounded,color: grey,): Icon(Icons.arrow_forward_ios_outlined,size: 13,color: grey),

                  onExpansionChanged: (value) {
                    setState(() {
                      _isExpandedPC = value;
                    });
                  },
                  trailing: const SizedBox(height: 0,width: 0),
                  title: Row(
                    children: [
                      customText('Private Channel', 14, grey, FontWeight.w600),
                    ],
                  ),
                  children: const [],
                ),
              ),
              const SizedBox(height: 3,),
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  leading: _isExpandedCC ?
                  Icon(Icons.keyboard_arrow_down_rounded,color: grey,): Icon(Icons.arrow_forward_ios_outlined,size: 13,color: grey),
                  onExpansionChanged: (value) {
                    setState(() {
                      _isExpandedCC = value;
                    });
                  },
                  trailing: const SizedBox(width: 0,height: 0),
                  title: Row(
                    children: [
                      customText('Community Channel', 14, grey, FontWeight.w600),
                      const Spacer(),
                      Image.asset(
                        'assets/images/cutSpeaker.png',
                        height: 15,
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xffCB3A31),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: customText('$NotificationNum', 10, Colors.white,
                                FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  leading: _isExpandedDM ?
                  Icon(Icons.keyboard_arrow_down_rounded,color: grey): Icon(Icons.arrow_forward_ios_outlined,size: 13,color: grey),
                  title: Row(
                    children: [
                      customText('Direct Message', 14, grey, FontWeight.w600),
                    ],
                  ),
                  trailing: const SizedBox(
                    width: 0,
                    height: 0,
                  ),
                  onExpansionChanged: (expanded){
                    setState(() {
                      _isExpandedDM = expanded;
                    });
                  },
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const User01(),));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle
                              ),
                              width: 30,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset('assets/images/circleP.png',fit: BoxFit.contain),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            customText('user********01', 14, grey, FontWeight.w200),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const User01(),));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle
                              ),
                              width: 30,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset('assets/images/circleP.png',fit: BoxFit.contain),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            customText('user********09', 14, grey, FontWeight.w200),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
              const SizedBox(height: 3,),
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  leading: _isExpandedCO ?
                  Icon(Icons.keyboard_arrow_down_rounded,color: grey,): Icon(Icons.arrow_forward_ios_outlined,size: 13,color: grey),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      _isExpandedCO = expanded;
                    });
                  },
                  trailing: const SizedBox(width: 0,height: 0),
                  title: Row(
                    children: [

                      customText('Chat Offer', 14, grey, FontWeight.w600),
                      const Spacer(),
                      Container(
                        width: 25,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xffCB3A31),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: customText('$NotificationNum', 10, Colors.white,
                                FontWeight.bold)),
                      ),
                    ],
                  ),
                  children: [
                    Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          primary: true,
                          itemCount: chatDetail.length,
                          itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatOffer_Chat(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        height: 30,
                                        width: 30,
                                        child: ClipOval(child: Image.asset(chatDetail[index].imagePath,)),
                                      ),
                                      const SizedBox(width: 10),
                                      customText(chatDetail[index].title, 14, grey, FontWeight.w500),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3,),
            ],
          ),
        ),
      ),
    );
  }
}

