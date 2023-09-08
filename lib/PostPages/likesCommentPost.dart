// ignore_for_file: non_constant_identifier_names, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import '../const.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LikesPage();
  }
}
class profileItems {
  final String imagePath;
  final String title;

  profileItems({required this.imagePath, required this.title});
}
List<profileItems> items = [
  profileItems(imagePath: 'assets/images/LikeProfile.png', title: 'nomadik'),
  profileItems(
      imagePath: 'assets/images/LikeProfile.png', title: 'coffee_lover'),
  profileItems(
    imagePath: 'assets/images/LikeProfile.png',
    title: 'beachcomber',
  ),
  profileItems(imagePath: 'assets/images/LikeProfile.png', title: 'quirkymind'),
  profileItems(
    imagePath: 'assets/images/LikeProfile.png',
    title: 'bookworm87',
  ),
  profileItems(
      imagePath: 'assets/images/LikeProfile.png', title: 'adventure_addict'),
  profileItems(
      imagePath: 'assets/images/LikeProfile.png', title: 'wanderlustheart'),
  profileItems(
    imagePath: 'assets/images/LikeProfile.png',
    title: 'cosmic_dreamer',
  ),
  profileItems(
      imagePath: 'assets/images/LikeProfile.png', title: 'adventureratheart'),
  profileItems(imagePath: 'assets/images/LikeProfile.png', title: 'thehiker'),
  profileItems(
      imagePath: 'assets/images/LikeProfile.png', title: 'starrynight'),
];
class _LikesPage extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        backgroundImage: AssetImage(items[index].imagePath),
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
    );
  }
}

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CommentPage();
  }
}
class CommentsItem {
  final String ImagePath;
  // ignore: non_constant_identifier_names
  final Widget Title;
  final Widget Subtitle;
  final num Likes;

  CommentsItem(
      {required this.ImagePath,
      required this.Title,
      required this.Subtitle,
      required this.Likes});
}
List<CommentsItem> cItems = [
  CommentsItem(
      ImagePath: 'assets/images/LikeProfile.png',
      Title: customText('ocean_oasis', 15, grey, FontWeight.normal),
      Subtitle: customText('Is it still available?', 13, grey, FontWeight.w100),
      Likes: 12.029),
  CommentsItem(
      ImagePath: 'assets/images/LikeProfile.png',
      Title: customText('nomadik', 15, grey, FontWeight.normal),
      Subtitle: customText('Is it still available?', 13, grey, FontWeight.w100),
      Likes: 12),
  CommentsItem(
      ImagePath: 'assets/images/LikeProfile.png',
      Title: customText('coffee_lover', 15, grey, FontWeight.normal),
      Subtitle: customText('Is it still available?', 13, grey, FontWeight.w100),
      Likes: 0),
  CommentsItem(
      ImagePath: 'assets/images/LikeProfile.png',
      Title: customText('beachcomber', 15, grey, FontWeight.normal),
      Subtitle: customText('Is it still available?', 13, grey, FontWeight.w100),
      Likes: 29),
];
class _CommentPage extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    builder: (context) => const CommentPage(),
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
                        Image.asset('assets/images/heart.png', width: 15),
                        customText(cItems[index].Likes.toString(), 12, grey,
                            FontWeight.normal)
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
                              customText('15m ago', 10, grey, FontWeight.w100)
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
                                child: customText(
                                    'Reply', 13, Colors.blue, FontWeight.w500),
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
    );
  }
}

