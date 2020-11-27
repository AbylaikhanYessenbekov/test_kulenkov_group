import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String publishedAt;
  final int countComments;
  final String headLine;
  final String imageAsset;
  Post({this.publishedAt, this.countComments, this.headLine, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Container(
        color: Colors.white,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Image.asset(imageAsset),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  // padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          publishedAt,
                          style: TextStyle(
                            color: Color(0XFF676767),
                          ),
                      ),
                      Text(
                        countComments.toString(),
                        style: TextStyle(
                            color: Color(0XFF676767),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    headLine,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
