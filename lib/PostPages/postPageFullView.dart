
// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:guido/PostPages/postChatPage.dart';
import '../const.dart';
import 'postItems.dart';
import 'likesCommentPost.dart';

class PostDotsFullPage extends StatefulWidget {
  final PostItems post;

  const PostDotsFullPage({super.key, required this.post});

  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _PostDotsFullPage(post: post);
  }
}

class _PostDotsFullPage extends State<PostDotsFullPage> {
  final PostItems post;

  _PostDotsFullPage({required this.post});

  // ignore: non_constant_identifier_names
  void ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 260,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0x66404040),
                        borderRadius: BorderRadius.circular(2)),
                    height: 3,
                    width: 70,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                customText('Edit Listing', 18, grey, FontWeight.w500),
                const SizedBox(
                  height: 25,
                ),
                customText('Mark as Reserved', 18, grey, FontWeight.w500),
                const SizedBox(
                  height: 25,
                ),
                customText('Mark as Sold', 18, grey, FontWeight.w500),
                const SizedBox(
                  height: 25,
                ),
                customText('Delete Listing', 18, Colors.red, FontWeight.w500),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(3)),
                    height: 3,
                    width: 130,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Color heartClr = Colors.white;
  bool isTapped = false;

  Widget pencil = Padding(
    padding: const EdgeInsets.all(15.0),
    child: InkWell(
      radius: 10,
      child: SizedBox(
          width: 15,
          height: 15,
          child: Image.asset(
            'assets/images/pencil.png',
            width: 15,
            color: Colors.white,
          )),
    ),
  );
  final imagesArr = [
    'assets/images/Images.jpg',
    'assets/images/Photo1.jpg',
    'assets/images/Photo2.png',
    'assets/images/Small.png',
    'assets/images/Wrapper.png'
  ];
  int _currentPage = 0;

  // ignore: non_constant_identifier_names
  void ShowBottomPricePage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0))),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreferredSize(
                preferredSize: const Size(double.infinity, 50),
                child: AppBar(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  backgroundColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customText('Price', 16, grey, FontWeight.w500),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1.0,
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(children: [
                  SizedBox(
                      height: 18,
                      width: 18,
                      child: Image.asset(
                        'assets/images/cart.png',
                        fit: BoxFit.contain,
                        color: const Color(0x77404040),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  customText('For Sale', 13, grey, FontWeight.w100),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: customText('Refrigerator', 16, grey, FontWeight.w600),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: customText('\$15-30', 14, grey, FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                        child: Image.asset('assets/images/message.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      customText('Chat', 13, grey, FontWeight.w500)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),

            ],
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  void ShowBottomSheetLikes(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Like'),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 20,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                radius: 12,
                                child: Image.asset('assets/images/heart.png'),
                              ),
                              const SizedBox(width: 3),
                              customText('1.124', 16, grey, FontWeight.normal)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                              AssetImage(items[index].imagePath),
                            ),
                            title: customText(
                                items[index].title, 14, grey, FontWeight.w600),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  void ShowBottomSheetComments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.white),
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Comments'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 20,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/commet.png',
                                ),
                                const SizedBox(width: 3),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CommentPage(),
                                          ));
                                    },
                                    child: customText(
                                        '1.123', 16, grey, FontWeight.normal))
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: cItems.length,
                          itemBuilder: (context, index) {
                            Widget trailWidg = Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/heart.png',
                                    width: 15),
                                customText(cItems[index].Likes.toString(), 12,
                                    grey, FontWeight.normal)
                              ],
                            );
                            return Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                      backgroundImage:
                                      AssetImage(cItems[index].ImagePath)),
                                  title: Row(
                                    children: [
                                      cItems[index].Title,
                                      const SizedBox(width: 8),
                                      customText(
                                          '15m ago', 10, grey, FontWeight.w100)
                                    ],
                                  ),
                                  subtitle: cItems[index].Subtitle,
                                  trailing: trailWidg,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: customText('Reply', 13,
                                            Colors.blue, FontWeight.w500),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SizedBox(
                width: double.infinity,
                child: Column(children: [
                  Stack(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 700,
                          autoPlay: true,
                          reverse: false,
                          autoPlayInterval: const Duration(seconds: 5),
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          viewportFraction: 1.0,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                        ),
                        items: imagesArr.map((imagePath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 260,
                        child: DotsIndicator(
                          dotsCount: imagesArr.length,
                          position: _currentPage,
                          decorator: const DotsDecorator(
                            size: Size.square(5.0),
                            // activeSize: Size(20.0, 10.0),
                            // activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            activeColor: Colors.white,
                            spacing: EdgeInsets.all(3.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: AppBar(
                title: const Text('Post'),
                actions: [
                  IconButton(
                    onPressed: () {
                      ShowBottomSheet(context);
                    },
                    icon: const Icon(Icons.more_vert),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFF404040).withOpacity(0.4),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 18.0,
                                          left: 18.0,
                                          right: 8.0,
                                          bottom: 8.0),
                                      child: InkWell(
                                        radius: 12,
                                        child: Image.asset(
                                          'assets/images/cart.png',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 18.0, right: 8.0),
                                      child: customText('For Sale', 14,
                                          Colors.white, FontWeight.w200),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 18.0,
                                      ),
                                      child: customText(
                                          '\$', 14, Colors.white, FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 18.0,
                                      ),
                                      child: customText(
                                          '15', 14, Colors.white, FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 18.0,
                                    right: 18.0,
                                    left: 10.0,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      ShowBottomPricePage(context);
                                    },
                                    child: customText('See Detail', 12,
                                        primaryColor, FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: InkWell(
                                  onTap: () {

                                  },
                                  radius: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset(
                                      'assets/images/Images2.png',
                                      width: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 190,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 4.0),
                                            child: customText(post.userName, 12,
                                                Colors.white, FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostChatPage(),
                                      ));
                                },
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 15,
                                        child: InkWell(
                                          radius: 12,
                                          child: Image.asset(
                                            'assets/images/message.png',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      customText(
                                          'Chat', 13, Colors.white, FontWeight.w500)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            children: [
                              customText(
                                  post.FPTitle, 12, Colors.white, FontWeight.w600),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: customText(
                                    post.FPSubtitle,
                                    12,
                                    Colors.white,
                                    FontWeight.w400,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: customText(
                                    'See More', 12, Colors.white, FontWeight.w600),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 2,
                                width: 60,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 13.0, left: 13.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 190,
                                          height: 45,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                prefixIcon: pencil,
                                                hintText: 'Type your comment',
                                                hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                )),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        SizedBox(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                radius: 12,
                                                onTap: () {
                                                  setState(() {
                                                    if (isTapped) {
                                                      heartClr = Colors.white;
                                                      isTapped = true;
                                                    } else {
                                                      heartClr = Colors.red;
                                                      isTapped = false;
                                                    }
                                                  });
                                                },
                                                child: Image.asset(
                                                  'assets/images/heart.png',
                                                  color: heartClr,
                                                ),
                                              ),
                                              const SizedBox(width: 3),
                                              InkWell(
                                                onTap: () {
                                                  ShowBottomSheetLikes(context);
                                                },
                                                child: customText(
                                                    '1.124',
                                                    12,
                                                    Colors.white,
                                                    FontWeight.normal),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        SizedBox(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/commet.png',
                                                color: Colors.white,
                                              ),
                                              const SizedBox(width: 3),
                                              InkWell(
                                                onTap: () {
                                                  ShowBottomSheetComments(context);
                                                },
                                                child: customText(
                                                    '1.123',
                                                    12,
                                                    Colors.white,
                                                    FontWeight.normal),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}