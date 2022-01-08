import 'package:first_task_facebook_ui/models/post_model.dart';
import 'package:first_task_facebook_ui/models/story_model.dart';
import 'package:flutter/cupertino.dart';

class DetailsModel {
  StoryModel storyCreator;
  PostModel postCreator;
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;
  String imageUrl4;
  String imageUrl5;

  DetailsModel({
    @required this.postCreator,
    @required this.imageUrl1,
    @required this.imageUrl2,
    @required this.imageUrl3,
    @required this.imageUrl4,
    @required this.imageUrl5,
    @required this.storyCreator,
  });
}
