import 'package:flutter/material.dart';
import 'package:instagram/home_screen/insta_screen.dart';
import 'package:instagram/home_screen/profile_screen.dart';
import 'package:instagram/home_screen/search_screen.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 10),
          Icon(Icons.comment),
          SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(onTap: () {
            setState(() {
              i=0;
            });
          },
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(onTap: () {
            setState(() {
              i=1;
            });
          },
            child: Icon(
              Icons.search,
              size: 35,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.add_box_outlined,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.smart_display,
            size: 35,
            color: Colors.white,
          ),
          InkWell(onTap: () {
            setState(() {
              i=2;
            });
          },
            child: Icon(
              Icons.person_2_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
        body: IndexedStack(
         index: i,
         children: [
           instaScreen(),
           searchScreen(),
           profileScreen(),
         ],
       ),
     );
  }
}
