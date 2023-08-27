import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';

import '../AddPostScreens/search.dart';

class CommunityChannel extends StatefulWidget {
  const CommunityChannel({super.key});

  @override
  State<CommunityChannel> createState() => _CommunityChannelState();
}

class _CommunityChannelState extends State<CommunityChannel> {
  TextEditingController name = TextEditingController();
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Create Community Channel', 16, grey, FontWeight.w500),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  controller: name,
                  cursorColor: grey,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: grey
                      )
                    ),
                    hintText: 'Community Channel Name',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: grey,
                      fontSize: 14
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              customText('Maximum of 25 words', 12, grey, FontWeight.w200),
              SizedBox(height: 20,),
              Divider(height: 8,color: Color(0xffFAFAFA),thickness: 8),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  controller: search,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchAddPage(),));
                  },
                  cursorColor: grey,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: '#Searchanything',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: grey,
                        fontSize: 14
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
              SizedBox(height: 5,),
              customText('Search for hashtags to be able to create a community channel', 12, grey, FontWeight.w100),
              SizedBox(height: 30,),
              customText('Suggestion', 14, grey, FontWeight.w700),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#coffee', 14, grey, FontWeight.w400),
                  InkWell(
                    child: customText('Add', 12, Color(0xff4468FA), FontWeight.w500),
                  )
                ],
              ),
               SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#restaurant', 14, grey, FontWeight.w400),
                  InkWell(
                    child: customText('Add', 12, Color(0xff4468FA), FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#workingspace', 14, grey, FontWeight.w400),
                  InkWell(
                    child: customText('Add', 12, Color(0xff4468FA), FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#area', 14, grey, FontWeight.w400),
                  InkWell(
                    child: customText('Add', 12, Color(0xff4468FA), FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText('#food', 14, grey, FontWeight.w400),
                  InkWell(
                    child: customText('Add', 12, Color(0xff4468FA), FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: name!= null && search == '' ? Color(0xffE0E0E0) : primaryColor,

                      fixedSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: () {},
                    child: customText('Join Channel', 14, Colors.white, FontWeight.normal)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
