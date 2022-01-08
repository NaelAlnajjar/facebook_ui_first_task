import '../models/story_model.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel storyModel;

  const StoryWidget({Key key, @required this.storyModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 140,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              storyModel.storyImageUrl,
              fit: BoxFit.cover,
              width: 90,
              height: 140,
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              padding:EdgeInsets.all(2) ,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(storyModel.userImageUrl,),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 8,
            child: Text(
              storyModel.userName,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
