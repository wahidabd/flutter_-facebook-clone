import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget makeCommentButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade200),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.chat, color: Colors.grey, size: 18),
          SizedBox(width: 5,),
          Text("Comment", style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  );
}