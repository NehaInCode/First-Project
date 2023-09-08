import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:guido/PostPages/postChatPage.dart';
import 'package:guido/PostPages/postPageFullView.dart';
import '../const.dart';
import 'postItems.dart';
import 'likesCommentPost.dart';

class PostDots extends StatefulWidget {
  final PostItems post;

  const PostDots({super.key, required this.post});

  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _PostDots(post: post);
  }
}

class _PostDots extends State<PostDots> {
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
              Center(
                child: Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  final PostItems post;

  _PostDots({required this.post});

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

  Widget pencil = Padding(
    padding: const EdgeInsets.all(15.0),
    child: InkWell(
      radius: 10,
      child: SizedBox(
          width: 15,
          height: 15,
          child: Image.asset('assets/images/pencil.png', width: 15)),
    ),
  );
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: customText(
                                    post.userName, 12, grey, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: grey,
                              ),
                              customText('Jurong East, Singapore', 10, grey,
                                  FontWeight.w100)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: grey,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PostChatPage(),
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 15,
                              child: Image.asset('assets/images/message.png'),
                            ),
                            customText('Chat', 13, grey, FontWeight.w500)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(children: [
                    Stack(
                      children: [
                        post.imagePath.length == 1 ?
                        Image.asset(post.imagePath[0]) : CarouselSlider(
                          options: CarouselOptions(
                            height: 500,
                            autoPlay: true,
                            reverse: false,
                            autoPlayInterval: const Duration(seconds: 2),
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1.0,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentPage = index;
                              });
                            },
                          ),
                          items: Post.map((imagePath) {
                            return Builder(
                              builder: (BuildContext context) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PostDotsFullPage(
                                                post: post,
                                              ),
                                        ));
                                  },
                                  child: Image.asset(
                                    post.imagePath[2],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        if (post.imagePath.length > 1)
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 10,
                            child: DotsIndicator(
                              dotsCount: post.imagePath.length,
                              position: _currentPage,
                              decorator: const DotsDecorator(
                                size: Size.square(10.0),
                                // activeSize: Size(20.0, 10.0),
                                // activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                activeColor: Colors.white,
                                spacing: EdgeInsets.all(5.0),
                              ),
                            ),
                          )
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xFF404040),
                      borderRadius: BorderRadius.only(
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
                                child: Image.asset('assets/images/cart.png'),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 18.0, right: 8.0),
                              child: customText('For Sale', 14, Colors.white,
                                  FontWeight.w200),
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
                            child: customText('See Detail', 12, primaryColor,
                                FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 190,
                        child: TextField(
                          cursorColor: grey,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)
                            ),
                              prefixIcon: pencil,
                              hintText: 'Type your comment',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 14,
                                color: grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
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
                            Image.asset('assets/images/heart.png'),
                            const SizedBox(width: 3),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LikesPage(),
                                      ));
                                },
                                child: customText(
                                    '1.124', 12, grey, FontWeight.normal))
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
                                    '1.123', 12, grey, FontWeight.normal))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}