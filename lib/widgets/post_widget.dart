import 'package:first_task_facebook_ui/data/icon/facebook_like_icons.dart';
import 'package:first_task_facebook_ui/models/post_model.dart';
import 'package:first_task_facebook_ui/widgets/like_heart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;

  const PostWidget({
    Key key,
    @required this.postModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                    postModel.postCreator.userImageUrl,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          postModel.postCreator.userName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          postModel.postType,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      postModel.timeAgo,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                postModel.postImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              LikeHeart(),
              SizedBox(width: 5),
              Text(
                postModel.numLike,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              Text(
                postModel.numComment + ' Comments',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Divider(),
          Container(
              width: double.infinity,
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Like',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Expanded(
                    child: TextButton.icon(
                      label: Text(
                        'Comment',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
