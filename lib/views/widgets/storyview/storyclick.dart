import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gypc/views/widgets/feeddata/storydata.dart';

class StoryClick extends StatefulWidget {
  final StoryData story;
  StoryClick({Key key, @required this.story}) : super(key: key);

  @override
  _StoryClickState createState() => _StoryClickState();
}

class _StoryClickState extends State<StoryClick> {
  double percent = 0.0;
  Timer _timer;
  void startTimer() {
    _timer = Timer.periodic(Duration(microseconds: 15), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.story.storyUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: percent,
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.story.avatarUrl),
                      radius: 30.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.story.userName,
                      style: TextStyle(color: colors.white, fontSize: 18.0),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
