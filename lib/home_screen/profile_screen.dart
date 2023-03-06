import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.chevron_left,size: 25),
        title: Text("abc123"),
        centerTitle: true,
        actions: [
          Icon(Icons.more_horiz),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10,),

          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
              SizedBox(width: 25,),
              Text("posts 0",style: TextStyle(color: Colors.white,fontSize: 22),),
              SizedBox(width: 25,),
              Text("follower 0",style: TextStyle(color: Colors.white,fontSize: 22),),
              SizedBox(width: 25,),
              Text("following 0",style: TextStyle(color: Colors.white,fontSize: 22),),
            ],
          ),
        ],
      ),
    );
  }
}
