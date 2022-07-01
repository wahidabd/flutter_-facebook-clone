import 'package:flutter/material.dart';

import 'make_comment_button.dart';
import 'make_like.dart';
import 'make_like_button.dart';
import 'make_love.dart';
import 'make_share_button.dart';

Widget makeFeed({imageUrl, userImage, userName, feetTime, feetText, feedImage}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(feedImage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Text(
                      feetTime,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                      ),
                    )
                  ],
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],)
            )
          ],
        ),
        SizedBox(height: 20,),
        Text(
          feetText,
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
              height: 1.5,
              letterSpacing: .7
          ),
        ),
        SizedBox(height: 20,),
         feedImage != '' ?
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(feedImage),
                  fit: BoxFit.cover
              )
          ),
        ) : Container(),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                makeLike(),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: makeLove(),
                ),
                SizedBox(width: 5,),
                Text('2.5k', style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
              ],
            ),
            Text('400 comments', style: TextStyle(fontSize: 13, color: Colors.grey[800]),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            makeLikeButton(isActive: true),
            makeCommentButton(),
            makeShareButton()
          ],
        )
      ],
    ),
  );
}