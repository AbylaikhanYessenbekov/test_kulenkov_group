import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';
import 'package:test_kulenkov_part2/components/post.dart';


class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Блог'),
      ),
      body: Container(
        color: Color(0Xf5f5f5),
        child: Center(
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            primary: true,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/interview.png',
                    ),
                    Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image1.jpeg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/interview_3.jpg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/interview_5.jpg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image2.jpeg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image3.jpeg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image4.jpeg',
                    ),
                    Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image5.jpeg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image6.jpeg',
                    ),Post(
                      publishedAt: '23.12.1999',
                      countComments: 15,
                      headLine: 'How to be successful if you feel depressed',
                      imageAsset: 'images/image7.jpeg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
