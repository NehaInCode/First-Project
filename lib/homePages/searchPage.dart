// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../const.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchPage();
  }
}

class _SearchPage extends State<SearchPage> {
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: grey
                        )
                      ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: grey,width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: '#SearchAnyThing',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText('Favorite', 14, grey, FontWeight.w700),
                    TextButton(
                        onPressed: () {},
                        child: customText('Delete All', 12, Colors.red.shade900,
                            FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#coffee', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#restaurant', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#workingspace', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#area', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#food', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Delete', 12, Colors.red.shade900,
                                FontWeight.w500))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    customText('Suggestion', 14, grey, FontWeight.w700),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#coffee', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#restaurant', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#workingspace', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#area', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText('#food', 14, grey, FontWeight.w400),
                        TextButton(
                            onPressed: () {},
                            child: customText('Add', 12, Colors.blue.shade700,
                                FontWeight.w500))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}