import 'package:flutter/material.dart';
import 'package:gypc/views/widgets/feeddata/storydata.dart';
import 'package:gypc/views/widgets/homescreen/storyclick.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => StoryClick(
                          story: story,
                        )));
          },
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border:
                    Border.all(color: Colors.deepPurple.shade700, width: 2.0)),
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: NetworkImage(story.avatarUrl),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(story.userName),
      ],
    ),
  );
}
