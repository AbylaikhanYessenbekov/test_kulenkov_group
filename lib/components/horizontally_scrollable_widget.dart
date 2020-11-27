import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/constants.dart';


enum SelectedButtons{
  text1,
  text2,
  text3,
  text4,
  text5,
  text6
}


class HorizontallyScrollableWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  HorizontallyScrollableWidget({
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
  });

  @override
  _HorizontallyScrollableWidgetState createState() => _HorizontallyScrollableWidgetState();
}

class _HorizontallyScrollableWidgetState extends State<HorizontallyScrollableWidget> {
  bool visible = true;
  var _selectedButton;
  Color _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 40.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text1;
                });
              },
              child: Visibility(
                visible: widget.text1 != null ? visible : false,
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text1
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                      child: Text(
                          widget.text1 != null ? widget.text1 : "null",
                          style: TextStyle(
                            color: _selectedButton == SelectedButtons.text1
                              ? Colors.white
                              : Colors.black
                          ),
                      ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text2;
                });
              },
              child: Visibility(
                visible: widget.text2 != null ? visible : false,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text2
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                    child: Text(
                      widget.text2 != null ? widget.text2 : "null",
                      style: TextStyle(
                          color: _selectedButton == SelectedButtons.text2
                              ? Colors.white
                              : Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text3;
                });
              },
              child: Visibility(
                visible: widget.text3 != null ? visible : false,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text3
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                    child: Text(
                      widget.text3 != null ? widget.text3 : "null",
                      style: TextStyle(
                          color: _selectedButton == SelectedButtons.text3
                              ? Colors.white
                              : Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text4;
                });
              },
              child: Visibility(
                visible: widget.text4 != null ? visible : false,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text4
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                    child: Text(
                      widget.text4 != null ? widget.text4 : "null",
                      style: TextStyle(
                          color: _selectedButton == SelectedButtons.text4
                              ? Colors.white
                              : Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text5;
                });
              },
              child: Visibility(
                visible: widget.text5 != null ? visible : false,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text5
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                    child: Text(
                      widget.text5 != null ? widget.text5 : "null",
                      style: TextStyle(
                          color: _selectedButton == SelectedButtons.text5
                              ? Colors.white
                              : Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedButton = SelectedButtons.text6;
                });
              },
              child: Visibility(
                visible: widget.text6 != null ? visible : false,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 120.0,
                  decoration: BoxDecoration(
                      color: _selectedButton == SelectedButtons.text6
                          ? kActiveScrollableWidgetColor
                          : kInactiveScrollableWidgetColor,
                      border: Border.all(color: Colors.deepPurple)
                  ),
                  child: Center(
                    child: Text(
                      widget.text6 != null ? widget.text6 : "null",
                      style: TextStyle(
                          color: _selectedButton == SelectedButtons.text6
                              ? Colors.white
                              : Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
