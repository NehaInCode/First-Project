import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/PostPages/postItems.dart';
import '../PostPages/postPageView.dart';
import '../PostPages/searchPost.dart';
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
        centerTitle: true,
        title: Text('Post'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPostPage(),
                    ));
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 310,
                ),
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Post.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PostDots(post: Post[index]),
                            ));
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 230,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  Post[index].imagePath[0],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              alignment: AlignmentDirectional.center,
                              child: customText(Post[index].title, 14, grey,
                                  FontWeight.w600,
                                  overflow: TextOverflow.ellipsis, maxLines: 2),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            child: customText(Post[index].userName,
                                                12, Colors.grey, FontWeight.normal,
                                                overflow: TextOverflow.ellipsis,
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
                                          child:
                                              Image.asset('assets/images/heart.png'),
                                        ),
                                        const SizedBox(width: 5),
                                        customText(Post[index].getFormattedLikes(),
                                            12, Colors.grey, FontWeight.normal),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

