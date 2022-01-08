import 'package:first_task_facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class PostModel {
  StoryModel postCreator;
  String timeAgo;
  String numComment;
  String numLike;
  String postType;
  String postImage;

  PostModel({
    @required this.postCreator,
    @required this.timeAgo,
    @required this.numComment,
    @required this.numLike,
    @required this.postType,
    @required this.postImage,
  });
}
