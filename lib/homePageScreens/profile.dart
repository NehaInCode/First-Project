import 'package:flutter/material.dart';
import '../ProfilePages/community.dart';
import '../ProfilePages/edit.dart';
import '../ProfilePages/setting.dart';
import '../ProfilePages/topup.dart';
import '../const.dart';
import '../homePages/searchPage.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

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
        centerTitle: true,
        title: customText('@kimwexler', 16, grey, FontWeight.w600),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings(),));
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
           SizedBox(
             width: double.infinity,
             height: 90,
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 90,
                   width: 85,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                   ),
                   child: CircleAvatar(
                     child: ClipOval(child: Image.asset('assets/images/profileImg.png',fit: BoxFit.cover)),
                   ),
                 ),
                 SizedBox(width: 5),
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: primaryColor,
                     ),
                     height: 90,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const SizedBox(width: 15,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const EWallet(),));
                          },
                          child: Container(
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
                                      const SizedBox(width: 10),
                                      customText('GuidoProtect', 10, const Color(0xff4468FA), FontWeight.normal)
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  customText('\$25', 14, grey, FontWeight.w700),
                                ],
                              ),
                            ),
                          ),
                        ),
                         InkWell(
                           onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => const TopUp(),));
                           },
                           child: SizedBox(
                             width: 50,
                             // color: Colors.white,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset('assets/images/plusCircle.png',height: 18,),
                                 const SizedBox(height: 8,),
                                 customText('Top Up', 10, grey, FontWeight.w500)
                               ],
                             ),
                           ),
                         ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const History(),));
                           },
                           child: SizedBox(
                             width: 50,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset('assets/images/history.png',height: 18,),
                                 const SizedBox(height: 8,),
                                 customText('History', 10, grey, FontWeight.w500)
                               ],
                             ),
                           ),
                         ),
                         const SizedBox(width: 5,)
                       ],
                     ),
                   ),
                 )
               ],
             ),
           ),
              const SizedBox(height: 30,),
              customText('kimwexler', 16, grey, FontWeight.w700),
              const SizedBox(height: 20,),
              customText('I know he\'s not perfect, and I know he cuts corners. But you\'re the one who made him this way. He idolizes you, he accepts you, he takes care of you. And all he ever wanted was your love and support.', 14, grey, FontWeight.w400),
              const SizedBox(height: 20,),
              Row(
                children: [
                  customText(likes, 12, grey, FontWeight.w700),
                  customText('Likes', 12, grey, FontWeight.w500)
                ],
              ),
              const SizedBox(height: 20,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: const Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#homebasedbusiness', 10, const Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   const SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: const Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#rental', 10, const Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   const SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: const Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#dumplings', 10, const Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   const SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: const Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('#hiddengem', 10, const Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                   const SizedBox(width: 5,),
                   Container(
                     height: 25,
                     decoration: BoxDecoration(
                       color: const Color(0xff404040),
                       borderRadius: BorderRadius.circular(13)
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: customText('+1', 10, const Color(0xffFFD464), FontWeight.normal),
                     )),
                   ),
                 ],
               ),
             ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white,
                          fixedSize: Size(165, 50),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Color(0xffDEDEDE),width: 1,),
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile(),));
                    }, child: customText('Edit Profile', 14, grey, FontWeight.normal)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                            fixedSize: Size(165, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const JoinCommunity(),));
                    }, child: customText('Join Community', 14, grey, FontWeight.normal)),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: TabBar(
                        tabs: [
                         customTab('Post', 150.0),
                          customTab('Likes', 150.0),
                    ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
                        },
                        child: const Icon(Icons.search)),
                  ),
                ],
              ),
               const Expanded(
                 child: TabBarView(

                     children: [
                   SizedBox(
                     height: 500,
                     child: Center(child: Text('Post Tab Content')),
                   ),
                   SizedBox(
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

class EWallet extends StatefulWidget {
  const EWallet({super.key});

  @override
  State<EWallet> createState() => _EWalletState();
}

class _EWalletState extends State<EWallet> {

  var title = 'E-Wallet Top Up Successfully';
  var subTitle = '23/05/2022, 2:43PM';
  var amount = '+500 SGD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: customText('E-Wallet', 16, grey, FontWeight.w600),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('My GuidoProtect', 14, grey, FontWeight.w700),
              const SizedBox(height: 25,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Row(
                        children: [
                          Image.asset('assets/images/protect.png',height: 18,),
                          const SizedBox(width: 10),
                          customText('GuidoProtect', 12, const Color(0xff4468FA), FontWeight.normal)
                        ],
                      ),
                      const SizedBox(height: 8,),
                      customText('\$25', 24, grey, FontWeight.w700),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TopUp(),));
                  }, child: customText('Top Up', 12, const Color(0xff4468FA), FontWeight.w500))
                ],
              ),
              const SizedBox(height: 25,),
              const Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('Recent Transaction', 14, grey,FontWeight.w700),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const History(),));
                      },
                      child: customText('See All History', 12, const Color(0xff4468FA),FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 30,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(title, 14, grey, FontWeight.w500),
                          const SizedBox(height: 5),
                          customText(subTitle, 12, grey, FontWeight.w200),
                        ],
                      ),
                      const Spacer(),
                      customText(amount, 14, const Color(0xff43936C), FontWeight.normal),
                      const Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                    ],
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class EWalletDetail{
  final Widget title;
  final Widget subTitle;
  final Widget amount;

  EWalletDetail({required this.title,required this.subTitle,required this.amount});
}
List<EWalletDetail> detail =[
  EWalletDetail(title: customText('Amount Refunded', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
  EWalletDetail(title: customText('E-Wallet Top Up Successfully', 14, grey, FontWeight.w500),subTitle: customText('23/05/2022, 2:43PM', 12, grey, FontWeight.w400),amount:customText('+50 SGD', 14, const Color(0xff43936C), FontWeight.normal) ),
];

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('History', 16, grey, FontWeight.w600),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,

              itemCount: detail.length,
              itemBuilder: (context, index) {

              return Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       detail[index].title,
                        const SizedBox(height: 5),
                        detail[index].subTitle
                      ],
                    ),
                    const Spacer(),
                   detail[index].amount,
                    const Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ],
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
