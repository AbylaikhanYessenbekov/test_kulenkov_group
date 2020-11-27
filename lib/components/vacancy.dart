import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/constants.dart';

class Vacancy extends StatelessWidget {

  final String jobType;
  final String jobPosition;
  final String company;
  final String publishedAt;
  final double salary;
  final String jobPlace;

  Vacancy({
    this.jobType,
    this.jobPosition,
    this.company,
    this.publishedAt,
    this.salary,
    this.jobPlace
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(0XFFF0EFF5), width: 3.0
            ),
        ),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  jobType,
                style: TextStyle(
                  color: kHyperReferenceColor
                ),
              ),
              Text(
                jobPosition,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              Text(
                company,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0XFF676767),
                ),
              ),
              Row(
                children: [
                  Icon(
                      Icons.access_time,
                      color: Color(0XFF676767),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    publishedAt,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0XFF676767),
                    ),
                  ),
                ],
              ),
              Text(
                '${salary.toString()} рублей/месяц',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0XFF233D7A),
                  fontWeight: FontWeight.w700,
                )
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0XFF676767),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    jobPlace,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0XFF676767),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Icon(
                Icons.person,
                size: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
