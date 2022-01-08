import 'package:first_task_facebook_ui/models/details_model.dart';
import 'package:flutter/material.dart';

import 'like_heart.dart';

class PostDetailsWidget extends StatelessWidget {
  const PostDetailsWidget({Key key,@required this.detailsModel}) : super(key: key);
final DetailsModel detailsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                  radius: 12,
                  backgroundImage: NetworkImage(
                    detailsModel.storyCreator.userImageUrl,
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
                          detailsModel.storyCreator.userName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          detailsModel.postCreator.postType,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      detailsModel.postCreator.timeAgo,
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
            height: 350,
            child: ListView(children: [
              SizedBox(height: 10),
              buildImageContainer(detailsModel.imageUrl5),
              SizedBox(height: 10),
              buildImageContainer(detailsModel.imageUrl4),
              SizedBox(height: 10),
              buildImageContainer(detailsModel.imageUrl3),
              SizedBox(height: 10),
              buildImageContainer(detailsModel.imageUrl2),
              SizedBox(height: 10),
              buildImageContainer(detailsModel.imageUrl1),
              SizedBox(height: 10),
            ],),
          )


        ],
      ),
    );
  }

  Container buildImageContainer(String imageUrl) {
    return Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
  }
}
