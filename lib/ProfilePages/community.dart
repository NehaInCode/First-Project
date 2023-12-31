import 'package:flutter/material.dart';
import 'package:guido/const.dart';

class JoinCommunity extends StatefulWidget {
  const JoinCommunity({super.key});

  @override
  State<JoinCommunity> createState() => _JoinCommunityState();
}

class _JoinCommunityState extends State<JoinCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Join Community Channel', 16, grey, FontWeight.w600),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  cursorColor: grey,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey)
                    ),
                    hintText: 'WFA',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: grey
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffDEDEDE)
                      )
                    )
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              customText('Maximum of 25 words', 12, grey, FontWeight.w100),
              const SizedBox(height: 25,),
              const Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
              const SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  cursorColor: grey,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: grey)
                      ),
                      hintText: '#Searchanything',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: grey
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffDEDEDE)
                          )
                      )
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              customText('Search for hashtags to be able to create a community channel', 12, grey, FontWeight.w100),
              const SizedBox(height: 30,),
              customText('Hashtag Channel  (5)', 14, grey, FontWeight.w700),
              const SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#coffee', 14, grey, FontWeight.w400),
                  customText('Delete', 12, const Color(0xffCB3A31), FontWeight.w500)
                ],
              ),
              const SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#restaurant', 14, grey, FontWeight.w400),
                  customText('Delete', 12, const Color(0xffCB3A31), FontWeight.w500)
                ],
              ),
              const SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#workingspace', 14, grey, FontWeight.w400),
                  customText('Delete', 12, const Color(0xffCB3A31), FontWeight.w500)
                ],
              ),
              const SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#area', 14, grey, FontWeight.w400),
                  customText('Delete', 12, const Color(0xffCB3A31), FontWeight.w500)
                ],
              ),
              const SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#food', 14, grey, FontWeight.w400),
                  customText('Delete', 12, const Color(0xffCB3A31), FontWeight.w500)
                ],
              ),
              const SizedBox(height: 70,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: primaryColor,
                      fixedSize: const Size(double.infinity, 50)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const WFA(),));
                }, child: customText('Join Channel', 14, grey, FontWeight.normal)),
              ),
              const SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WFA extends StatefulWidget {
  const WFA({super.key});

  @override
  State<WFA> createState() => _WFAState();
}

class _WFAState extends State<WFA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('WFA', 16, grey, FontWeight.w600),
            const SizedBox(height: 4,),
            customText('20k member', 12, grey, FontWeight.w200),
          ],
        ),
        actions: const [
         Padding(
           padding: EdgeInsets.only(right: 15.0),
           child: Icon(Icons.more_vert),
         )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height:15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xdd404040),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: customText('#coffee', 10, const Color(0xffFFD464), FontWeight.normal),
                    )),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xdd404040),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: customText('#restaurant', 10, const Color(0xffFFD464), FontWeight.normal),
                    )),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xdd404040),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: customText('#workingspace', 10, const Color(0xffFFD464), FontWeight.normal),
                    )),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xdd404040),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: customText('#area', 10, const Color(0xffFFD464), FontWeight.normal),
                    )),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xdd404040),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: customText('#food', 10, const Color(0xffFFD464), FontWeight.normal),
                    )),
                  ),
                ],
              ),
            ),
const Spacer(),
            Row(
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
                SizedBox(
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
          ],
        ),
      ),
    );
  }
}
