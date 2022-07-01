import 'dart:ui';

import 'package:flutter/material.dart';

Widget makeStory({storyImage, userImage, userName}) {
  return AspectRatio(
    aspectRatio: 1.6/2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(storyImage),
          fit: BoxFit.cover
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: NetworkImage(userImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(
              userName,
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    ),
  );
}