import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ProfilePages/edit.dart';
import '../ProfilePages/setting.dart';
import '../const.dart';
import 'home.dart';


class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  String likes = '20';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: customText('@kimwexler', 16, grey, FontWeight.w600),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(),));
                },
                child: Icon(Icons.settings_outlined,color: grey)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
             width: double.infinity,
             height: 90,
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 90,
                   width: 85,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                   ),
                   child: CircleAvatar(
                     child: ClipOval(child: Image.asset('assets/images/profileImg.png',fit: BoxFit.cover)),
                   ),
                 ),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: primaryColor,
                   ),
                   height: 90,
                   child: Row(
                     children: [
                       SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 65,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Row(
                                children: [
                                  Image.asset('assets/images/protect.png',height: 16,),
                                  SizedBox(width: 10),
                                  customText('GuidoProtect', 10, Color(0xff4468FA), FontWeight.normal)
                                ],
                              ),
                              SizedBox(height: 8,),
                              customText('\$25', 14, grey, FontWeight.w700),
                            ],
                          ),
                        ),
                      ),
                       Container(
                         width: 50,
                         // color: Colors.white,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/plusCircle.png',height: 18,),
                             SizedBox(height: 8,),
                             customText('Top Up', 10, grey, FontWeight.w500)
                           ],
                         ),
                       ),
                       Container(
                         width: 50,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/history.png',height: 18,),
                             SizedBox(height: 8,),
                             customText('History', 10, grey, FontWeight.w500)
                           ],
                         ),
                       ),
                       SizedBox(width: 5,)
                     ],
                   ),
                 )
               ],
             ),
           ),
              SizedBox(height: 30,),
              customText('kimwexler', 16, grey, FontWeight.w700),
              SizedBox(height: 20,),
              customText('I know he\'s not perfect, and I know he cuts corners. But you\'re the one who made him this way. He idolizes you, he accepts you, he takes care of you. And all he ever wanted was your love and support.', 14, grey, FontWeight.w400),
              SizedBox(height: 20,),
              Row(
                children: [
                  customText(likes, 12, grey, FontWeight.w700),
                  customText('Likes', 12, grey, FontWeight.w500)
                ],
              ),
              SizedBox(height: 20,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#homebasedbusiness', 10, Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#rental', 10, Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#dumplings', 10, Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#hiddengem', 10, Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('+1', 10, Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                 ],
               ),
             ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(165, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                  }, child: customText('Edit Profile', 14, grey, FontWeight.normal)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(165, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: () {

                  }, child: customText('Join Community', 14, grey, FontWeight.normal))
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Flexible(
                    child: TabBar(
                        tabs: [
                      // Tab(text: 'Post'),
                         customTab('Post', 150.0),
                          customTab('Likes', 150.0),
                      // Tab(text: 'Likes',),
                    ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                        },
                        child: Icon(Icons.search)),
                  ),
                ],
              ),
               Expanded(
                 child: TabBarView(

                     children: [
                   Container(
                     height: 500,
                     child: Center(child: Text('Post Tab Content')),
                   ),
                   Container(
                     height: 500,
                     child: Center(child: Text('Likes Tab Content')),
                   )
                 ]),
               ),





            ],
          ),
        ),

      ),

    );
  }
}


