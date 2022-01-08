import 'package:first_task_facebook_ui/data/icon/facebook_like_icons.dart';
import 'package:flutter/material.dart';

class LikeHeart extends StatelessWidget {
  const LikeHeart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom:4 ,
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.blue,
              child: Icon(
                FacebookLike.thumb_up,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 28,
            bottom:0 ,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22)
              ),

             // margin: EdgeInsets.all(2),
              child: Icon(
                FacebookLike.heart_circled,
                color: Colors.red,
                size: 34,
              ),
            ),
          )
        ],
      ),
    );
  }
}
