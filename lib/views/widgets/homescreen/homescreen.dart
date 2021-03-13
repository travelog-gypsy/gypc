import 'package:flutter/material.dart';
import 'package:gypc/views/widgets/feeddata/storybutton.dart';
import 'package:gypc/views/widgets/feeddata/storydata.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get child => null;

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                //margin: EdgeInsets.all(12.0),
                //padding: EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 50,
                  color: Colors.purple.shade700,
                  onPressed: () {},
                ),
              ),
              Container(
                //margin: EdgeInsets.all(15.0),
                //padding: EdgeInsets.all(8.0),
                child: Text(
                  "Gypc",
                  style: TextStyle(color: Colors.purple.shade700, fontSize: 30),
                ),
              ),
              Container(
                //margin: EdgeInsets.all(12.0),
                //padding: EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.message_rounded),
                  iconSize: 50,
                  color: Colors.purple.shade700,
                  onPressed: () {},
                ),
              )
            ]),
      ),
    );
  }
}

class StoryView extends StatefulWidget {
  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
//create list of stories objects
  List<StoryData> stories = [
    new StoryData("Vel", "https://randomuser.me/api/portraits/men/54.jpg",
        "https://unsplash.com/photos/8se2FqykreI"),
    new StoryData("Harris", "https://randomuser.me/api/portraits/men/54.jpg",
        "https://unsplash.com/photos/8se2FqykreI"),
    new StoryData("Aathil", "https://randomuser.me/api/portraits/men/54.jpg",
        "https://unsplash.com/photos/8se2FqykreI"),
    new StoryData(
        "Jumbalakka",
        "https://randomuser.me/api/portraits/men/54.jpg",
        "https://unsplash.com/photos/8se2FqykreI"),
    new StoryData(
        "Pimpilakkadi",
        "https://randomuser.me/api/portraits/men/54.jpg",
        "https://unsplash.com/photos/8se2FqykreI"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            storyButton(stories[0], context),
            storyButton(stories[1], context),
            storyButton(stories[2], context),
            storyButton(stories[3], context),
            storyButton(stories[4], context),
          ],
        ));
  }
}
