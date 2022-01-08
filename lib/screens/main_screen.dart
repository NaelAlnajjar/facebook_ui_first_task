import 'package:first_task_facebook_ui/screens/secondary_screen.dart';

import '../data/dummy_data.dart';
import '../data/icon/facebook_like_icons.dart';
import '../widgets/post_widget.dart';
import '../widgets/story_widget.dart';

import '../data/icon/messenger_facebook.dart';
import '../widgets/search_field.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_rounded,
                    size: 30,
                  ),
                ),
                Expanded(child: SearchField()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    MyFlutterApp.facebook_messenger,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Stories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Expanded(child: Container()),
                TextButton(
                  child: Row(
                    children: [
                      Text(
                        'See Archive',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: storyComponents.map((e) {
                  return StoryWidget(storyModel: e);
                }).toList(),
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: postComponents.map((e) {
                return PostWidget(postModel: e);
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.wysiwyg),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(FacebookLike.users),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(FacebookLike.ondemand_video),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(FacebookLike.alarm),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.OTnv_ly0SoV22jAPsLlK8gHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondaryScreen()));
        },
        backgroundColor: Colors.indigo,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
