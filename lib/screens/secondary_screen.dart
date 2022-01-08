import 'package:first_task_facebook_ui/data/dummy_data.dart';
import 'package:first_task_facebook_ui/widgets/like_heart.dart';
import 'package:first_task_facebook_ui/widgets/post_details_widget.dart';
import 'package:flutter/material.dart';

class SecondaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('feed'),
      ),
      body: Container(
        child: Column(
          children: [
            PostDetailsWidget(
              detailsModel: postDetails[0],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 80,
              child: Column(
                children: [
                  Row(
                    children: [
                      LikeHeart(),
                      SizedBox(width: 5),
                      Text(
                        '155',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Text(
                        '120 Comments',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,),
                      SizedBox(width: 20,),
                      Container(
                        padding: const EdgeInsets.only(left: 10),

                        width: 280,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(

                                autofocus: false,
                                readOnly: false,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.gif_outlined),

                                  hintText: 'Add a Comment',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

      ),

    );
  }
}
