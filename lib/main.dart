import 'package:facebook_redesign/make_feed.dart';
import 'package:facebook_redesign/make_like_button.dart';
import 'package:facebook_redesign/make_love.dart';
import 'package:facebook_redesign/make_share_button.dart';
import 'package:facebook_redesign/make_story.dart';
import 'package:flutter/material.dart';

import 'make_comment_button.dart';
import 'make_like.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Search'
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Icon(Icons.camera_alt, color: Colors.grey[300], size: 30,),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Stories',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 1.2
                          ),),
                        Text('See Archive'),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeStory(
                            storyImage: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
                            userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR63KoribGVDB_dswx8iUX99udIebJK_EsaYYTwg2vJoIeIECXhO8iWnI5VBU64wLJ-8gg&usqp=CAU',
                            userName: 'John Doe'
                          ),
                          makeStory(
                              storyImage: 'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb',
                              userImage: 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg',
                              userName: 'Morgan'
                          ),
                          makeStory(
                              storyImage: 'https://store-images.s-microsoft.com/image/apps.23032.13608622719434797.30372fd8-b4bd-41c0-beea-1c2a61e087c1.a8347bb5-9305-48e8-b668-08df54c5a91a?w=672&h=378&q=80&mode=letterbox&background=%23FFE4E4E4&format=jpg',
                              userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1fmtO1xNV_yphS6OAtcQuuDzupas7MMZotNVJuyvYIoISmh8L827nvt7anM_ZHsKr8EM&usqp=CAU',
                              userName: 'Arnold'
                          )
                          ,makeStory(
                              storyImage: 'https://picsum.photos/200/300',
                              userImage: 'https://picsum.photos/200',
                              userName: 'Alex'
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    makeFeed(
                      userName: 'Billy',
                      userImage: 'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                      feetTime: '29 minutes ago',
                      feetText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                      feedImage: 'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/heha-sky-view.jpg'
                    ),
                    makeFeed(
                        userName: 'John Doe',
                        userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR63KoribGVDB_dswx8iUX99udIebJK_EsaYYTwg2vJoIeIECXhO8iWnI5VBU64wLJ-8gg&usqp=CAU',
                        feetTime: '1 hour ago',
                        feetText: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.',
                        feedImage: 'https://images.unsplash.com/photo-1506112573664-1a1b66d93ff3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80'
                    ),
                    makeFeed(
                        userName: 'Morgan',
                        userImage: 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg',
                        feetTime: '3 hour ago',
                        feetText: 'Contrary to popular belief, Lorem Ipsum is not simply random text.',
                        feedImage: 'https://images.pexels.com/photos/674268/pexels-photo-674268.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}