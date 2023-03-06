import 'package:flutter/material.dart';

class instaScreen extends StatefulWidget {
  const instaScreen({Key? key}) : super(key: key);

  @override
  State<instaScreen> createState() => _instaScreenState();
}

class _instaScreenState extends State<instaScreen> {
  int i = 0;
  List name = ["name1", "name2"];
  List Img = [
    "assets/images/home1.jpg",
    "assets/images/home2.png",
    "assets/images/home3.jpeg",
    "assets/images/home4.jpeg",
    "assets/images/home5.jpg"
  ];
  List PImg = [
    "assets/images/home1.jpg",
    "assets/images/home2.png",
    "assets/images/home3.jpeg",
    "assets/images/home4.jpeg",
    "assets/images/home5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Img.asMap()
                      .entries
                      .map((e) => Story(
                            Img[e.key],
                          ))
                      .toList(),
                ),
              ),
              Divider(height: 1,color: Colors.white),
              SizedBox(height: 10,),
            Column(
              children: PImg.asMap()
                  .entries
                  .map((e) => Post(
                PImg[e.key],
              ))
                  .toList(),
            ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Story(String Img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage("$Img"),
      ),
    );
  }
  Widget Post(String PImg) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("$PImg"),
          SizedBox(height: 20,),
          Row(
            children: [
              Icon(Icons.favorite_border,color: Colors.white,size: 25,),
              SizedBox(width: 10,),
              Icon(Icons.comment,color: Colors.white,size: 25,),
              Spacer(),
              Icon(Icons.bookmark,color: Colors.white,size: 25,),
            ],
          ),
          SizedBox(height: 35,),
        ],
      ),

    );
  }
}
