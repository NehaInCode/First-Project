// ignore: file_names
import 'package:flutter/material.dart';

import '../const.dart';

class SearchPostPage extends StatefulWidget {
  const SearchPostPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchPostPage();
  }
}

class _SearchPostPage extends State<SearchPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText('Search', 16, grey, FontWeight.normal),
      ),
      body: Center(
        child: SizedBox(
          width: 310,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 310,
                  height: 45,
                  child: TextField(
                    cursorColor: grey,
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
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    customText('Suggestion', 14, grey, FontWeight.w700),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText('#coffee', 14, grey, FontWeight.w400),
                      const SizedBox(
                        height: 20,
                      ),
                      customText('#restaurant', 14, grey, FontWeight.w400),
                      const SizedBox(
                        height: 20,
                      ),
                      customText('#workingspace', 14, grey, FontWeight.w400),
                      const SizedBox(
                        height: 20,
                      ),
                      customText('#area', 14, grey, FontWeight.w400),
                      const SizedBox(
                        height: 20,
                      ),
                      customText('#food', 14, grey, FontWeight.w400),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 380,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}