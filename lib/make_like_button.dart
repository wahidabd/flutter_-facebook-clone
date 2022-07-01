import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget makeLikeButton({isActive}) {
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
          Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
        ],
      ),
    ),
  );
}