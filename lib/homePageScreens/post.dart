import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/postItems.dart';
import 'package:guido/homePageScreens/postPages.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../const.dart';

class PostPageWithGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PostPageWithGridViewState();
  }
}
class _PostPageWithGridViewState extends State<PostPageWithGridView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Post')),
          actions: [
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPostPage(),
                  ));
            }, icon: const Icon(Icons.search)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisSpacing: 5,
                  // crossAxisSpacing: 5),
                mainAxisExtent: 190,
              ),
              shrinkWrap: true,
              primary:false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Post.length,
              itemBuilder: (context, index) {
                return  Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PostDots(post: Post[index]),));
                          },
                          child: Image.asset(
                              Post[index].imagePath[0],),
                        ),
                      ),
                      Container(
                        height: 50,
                        // width: 165,
                        alignment: AlignmentDirectional.center,
                        child: customText(
                           Post[index].title,
                            14,
                            Colors.black,
                            FontWeight.normal,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        // width: 165,
                        height: 20,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 20,
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Image.asset(
                                      Post[index].profileImagePath,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Flexible(
                                      child: customText(
                                          Post[index].userName,
                                          12,
                                          Colors.grey,
                                          FontWeight.normal,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          maxLines: 1)),
                                ],
                              ),
                            ),
                            Container(
                              width: 65,
                              height: 20,
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Image.asset(
                                        'assets/images/heart.png'),
                                  ),
                                  const SizedBox(width: 5),
                                  customText(Post[index].getFormattedLikes(), 12, Colors.grey,
                                      FontWeight.normal),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),

    );
  }
}

class SearchPostPage extends StatefulWidget {
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
        child: Container(
          width: 310,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(
                  width: 310,
                  height: 45,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: '#SearchAnyThing',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100)),
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
                Container(
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
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostDots extends StatefulWidget {
  final PostItems post;

  PostDots({required this.post});

  @override
  State<StatefulWidget> createState() {
    return _PostDots(post: post);
  }
}
class _PostDots extends State<PostDots> {
  void ShowBottomPricePage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))

          ),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: AppBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
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
              Divider(
                height: 1,
                thickness: 1.0,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Row(
                    children: [
                      Container(
                          height: 18,
                          width: 18,
                          child: Image.asset(
                            'assets/images/cart.png',
                            fit: BoxFit.contain,
                            color: Color(0x77404040),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      customText('For Sale', 13, grey, FontWeight.w100),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: customText('Refrigerator', 16, grey, FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: customText('\$15-30', 14, grey, FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                  ),
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                        child: Image.asset('assets/images/message.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      customText('Chat', 13, grey, FontWeight.w500)
                    ],
                  ),),
              ),
              SizedBox(
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

  void ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 260,
          width: double.infinity,
          decoration: BoxDecoration(
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
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0x66404040),
                        borderRadius: BorderRadius.circular(2)),
                    height: 3,
                    width: 70,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                customText('Edit Listing', 18, grey, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText('Mark as Reserved', 18, grey, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText('Mark as Sold', 18, grey, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText('Delete Listing', 18, Colors.red, FontWeight.w500),
                SizedBox(
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
      child: Container(
          width: 15,
          height: 15,
          child: Image.asset('assets/images/pencil.png', width: 15)),
      radius: 10,
    ),
  );
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Post'),
        actions: [
          IconButton(
            onPressed: () {
              ShowBottomSheet(context);
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Container(
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
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.asset(
                            'assets/images/Images2.png',
                            width: 16,
                          ),
                        ),
                        radius: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: customText(post.userName, 12, grey,
                                    FontWeight.w500),
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
                SizedBox(
                  height: 15,
                ),

                Container(
                  width: double.infinity,
                  child: Column(
                      children: [
                    Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 500,


                            autoPlay: post.imagePath.length == 1 ? false : true,
                            reverse: false,
                            autoPlayInterval: Duration(seconds: 2),
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
                                   post.imagePath[0],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                );
                              },
                            );
                          }).toList(),

                        ),
                        if(post.imagePath.length > 1)
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 10,
                            child: DotsIndicator(
                              dotsCount: post.imagePath.length,
                              position: _currentPage,
                              decorator: DotsDecorator(
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

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
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
                                child: Image.asset('assets/images/cart.png'),
                                radius: 12,
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13.0, left: 13.0),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 190,
                          child: TextField(
                            decoration: InputDecoration(
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
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 55,
                          height: 13,
                          child: Row(
                            children: [
                              Image.asset('assets/images/heart.png'),
                              SizedBox(width: 3),
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
                        SizedBox(width: 8),
                        Container(
                          width: 55,
                          height: 13,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/commet.png',
                              ),
                              SizedBox(width: 3),
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
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 2,
                  width: 130,
                  color: grey,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostChatPage extends StatelessWidget {
  void ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 195,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0x66404040),
                        borderRadius: BorderRadius.circular(2)),
                    height: 3,
                    width: 70,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                customText('Leave Chat', 14, grey, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText(
                    'Block Chat', 14, Colors.red.shade800, FontWeight.w500),
                SizedBox(
                  height: 25,
                ),
                customText(
                    'Report Chat', 14, Colors.red.shade800, FontWeight.w500),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(3)),
                    height: 3,
                    width: 130,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText('supermarkets', 16, grey, FontWeight.w600),
            customText('Online', 12, grey, FontWeight.w200)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                ShowBottomSheet(context);
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#flowers', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#bucket', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#refrigerator', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#hunting', 10, Colors.white, FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x77404040),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 4.0, top: 4.0),
                      child: customText(
                          '#nearest', 10, Colors.white, FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      child: Image.asset(
                        'assets/images/Photo1.jpg',
                        width: 50,
                        fit: BoxFit.cover,
                      ))),
              title: Row(
                children: [
                  Container(
                      height: 18,
                      width: 18,
                      child: Image.asset(
                        'assets/images/cart.png',
                        fit: BoxFit.contain,
                        color: Color(0x77404040),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  customText('For Sale', 13, grey, FontWeight.w100),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 7.0, left: 7.0, top: 4.0, bottom: 4.0),
                      child: customText(
                          'Available', 10, Colors.white, FontWeight.normal),
                    ),
                  )
                ],
              ),
              subtitle: customText(
                  'How many cubes do we need to build a cylinder?',
                  15,
                  grey,
                  FontWeight.normal,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customText('\$15-30', 14, grey, FontWeight.w500),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(160, 45),
                        side: BorderSide(
                          width: 1,
                          color: Color(0x77404040),
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        )),
                    onPressed: () {},
                    child:
                    customText('Edit Price', 14, grey, FontWeight.normal)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(160, 45),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        )),
                    onPressed: () {},
                    child:
                    customText('Send Offer', 14, grey, FontWeight.normal)),
              ],
            ),
            SizedBox(
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                  Container(
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
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              height: 2,
              width: 130,
              color: grey,
            ),
            SizedBox(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}

class PostDotsFullPage extends StatefulWidget {
  final PostItems post;

  PostDotsFullPage({required this.post});

  @override
  State<StatefulWidget> createState() {
    return _PostDotsFullPage(post: post);
  }
}
class _PostDotsFullPage extends State<PostDotsFullPage> {
  final PostItems post;

  _PostDotsFullPage({required this.post});

  Color heartClr = Colors.white;
  bool isTapped = false;

  Widget pencil = Padding(
    padding: const EdgeInsets.all(15.0),
    child: InkWell(
      radius: 10,
      child: Container(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                width: double.infinity,
                child: Column(children: [
                  Stack(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 700,
                          autoPlay: true,
                          reverse: false,
                          autoPlayInterval: Duration(seconds: 5),
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
                          decorator: DotsDecorator(
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
                title: Text('Post'),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
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
                              color: Color(0xFF404040).withOpacity(0.4),
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
                                        child: Image.asset(
                                          'assets/images/cart.png',
                                        ),
                                        radius: 12,
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PostImageFullPage(post: post),
                                        ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset(
                                      'assets/images/Images2.png',
                                      width: 16,
                                    ),
                                  ),
                                  radius: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
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
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 15,
                                      child: InkWell(
                                        child: Image.asset(
                                          'assets/images/message.png',
                                          color: Colors.white,
                                        ),
                                        radius: 12,
                                      ),
                                    ),
                                    customText(
                                        'Chat', 13, Colors.white, FontWeight.w500)
                                  ],
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
                                  post.FPTitle,
                                  12,
                                  Colors.white,
                                  FontWeight.w600),
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
                        SizedBox(
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
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
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
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.infinity,
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 13.0, left: 13.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 190,
                                          height: 45,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                prefixIcon: pencil,
                                                hintText: 'Type your comment',
                                                hintStyle: TextStyle(
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
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                child: Image.asset(
                                                  'assets/images/heart.png',
                                                  color: heartClr,
                                                ),
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
                                              ),
                                              SizedBox(width: 3),
                                              customText('1.124', 12, Colors.white,
                                                  FontWeight.normal)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                  child: Image.asset(
                                                    'assets/images/commet.png',
                                                    color: Colors.white,
                                                  )),
                                              SizedBox(width: 3),
                                              customText('1.123', 12, Colors.white,
                                                  FontWeight.normal)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 2,
                                width: 130,
                                color: Colors.white,
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

class PostImageFullPage extends StatefulWidget {
  final PostItems post;

  PostImageFullPage({required this.post});

  @override
  State<StatefulWidget> createState() {
    return _PostImageFullPage(post: post);
  }
}
class _PostImageFullPage extends State<PostImageFullPage> {
  final PostItems post;

  _PostImageFullPage({required this.post});

  void ShowBottomSheetLikes(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white),
        );
      },
    );
  }

  void ShowBottomSheetComments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.white),
            child: Scaffold(
              appBar: AppBar(
                title: Text('Comments'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 20,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/commet.png',
                                ),
                                SizedBox(width: 3),
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
                      SizedBox(
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
                                      SizedBox(width: 8),
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

  Color heartClr = Colors.white;
  bool isTapped = false;

  Widget pencil = Padding(
    padding: const EdgeInsets.all(15.0),
    child: InkWell(
      radius: 10,
      child: Container(
          width: 15,
          height: 15,
          child: Image.asset(
            'assets/images/pencil.png',
            width: 15,
            color: Colors.white,
          )),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(post.imagePath[0]),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: AppBar(
                title: Text('Post'),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
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
                              color: Color(0xFF404040).withOpacity(0.4),
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
                                        child: Image.asset(
                                          'assets/images/cart.png',
                                        ),
                                        radius: 12,
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PostImageFullPage(
                                            post: post,
                                          ),
                                        ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Image.asset(
                                      'assets/images/Images2.png',
                                      width: 16,
                                    ),
                                  ),
                                  radius: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
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
                                            child: customText('supermarkets', 12,
                                                Colors.white, FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 15,
                                      child: InkWell(
                                        child: Image.asset(
                                          'assets/images/message.png',
                                          color: Colors.white,
                                        ),
                                        radius: 12,
                                      ),
                                    ),
                                    customText(
                                        'Chat', 13, Colors.white, FontWeight.w500)
                                  ],
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
                                  'How many cubes do we need to build a cylinder?',
                                  12,
                                  Colors.white,
                                  FontWeight.w600),
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
                                    'To build a solid cylinder, you would typically not use cubes but rather cylindrical objects such as cylinders or circular disks. However, if you intend to approximate a cylinder using cubes, the number required would depend on various factors such as the desired height, radius, and size of the cubes.Assuming all cubes are identical and fit perfectly together, you would need an infinite number of infinitesimally small cubes to create a mathematically precise representation of a cylinder.',
                                    12,
                                    Colors.white,
                                    FontWeight.w400,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
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
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
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
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.infinity,
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 13.0, left: 13.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 190,
                                          height: 45,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                prefixIcon: pencil,
                                                hintText: 'Type your comment',
                                                hintStyle: TextStyle(
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
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Container(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/heart.png',
                                                color: heartClr,
                                              ),
                                              SizedBox(width: 3),
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
                                        SizedBox(width: 8),
                                        Container(
                                          width: 55,
                                          height: 13,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/commet.png',
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 3),
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
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 2,
                                width: 130,
                                color: Colors.white,
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
