// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:guido/const.dart';

import 'communityChannel.dart';

class ComposeChat extends StatefulWidget {
  const ComposeChat({super.key});

  @override
  State<ComposeChat> createState() => _ComposeChatState();
}

class _ComposeChatState extends State<ComposeChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: customText('Compose Chat', 16, grey, FontWeight.w600)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/pp.png'),
                ),
                const SizedBox(width: 10),
                customText('Private Channel', 14, grey, FontWeight.w500)
              ],
            ),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CommunityChannel(),));
              },
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/images/ppp.png'),
                  ),
                  const SizedBox(width: 10),
                  customText('Community Channel', 14, grey, FontWeight.w500)
                ],
              ),
            ),
            const SizedBox(height: 50,),
            customText('Recent', 14, grey, FontWeight.w700),
            const SizedBox(height: 50,),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset('assets/images/circleP.png'),
                  ),
                ),
                const SizedBox(width: 10),
                customText('user********01', 14, grey, FontWeight.w200),
                const Spacer(),
                InkWell(
                  child: customText('Add', 12, const Color(0xff4468FA), FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset('assets/images/circleP.png'),
                  ),
                ),
                const SizedBox(width: 10),
                customText('user********09', 14, grey, FontWeight.w200),
                const Spacer(),
                InkWell(
                  child: customText('Add', 12, const Color(0xff4468FA), FontWeight.w500),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
