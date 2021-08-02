import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
    "images/bgImg1.jpg",
  ];

  List<String> postImage = [
    "images/post1.jpg",
    "images/post2.jpg",
    "images/post3.jpg",
    "images/post4.jpg",
    "images/post5.jpg",
    "images/post6.jpg",
    "images/post7.jpg",
    "images/post8.jpg",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/instalogo.png', height: 50.0,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              //  STORY

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) => Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/instastory.jpg"),
                          radius: 35.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(profileImage[index]),
                            radius: 32.0,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'pratyush_agarwal',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(8, (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // HEADER POST

                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/instastory.jpg"),
                            radius: 14,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(profileImage[index]),
                              radius: 12,
                            ),
                          ),
                        ),
                        Text('pratyush_agarwal'),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),

                    // IMAGE POST

                    Image.asset(postImage[index]),

                    // POST FOOTER

                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.chat_bubble_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.label_important_outline),
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          onPressed: () {},
                        ),
                      ],
                    ),

                    // POST COMMENT SECTION

                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: 'Liked by'),
                                TextSpan(
                                  text: ' pratyush_agarwal',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' and'),
                                TextSpan(
                                  text: ' others',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'pratyush_agarwal ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'This is the best post ever and the best UI design you have ever made!',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'view all 12 comments',
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
