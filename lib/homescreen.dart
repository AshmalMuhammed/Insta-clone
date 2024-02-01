import 'package:flutter/material.dart';
import 'package:instagramui/post.dart';
import 'package:instagramui/story.dart';
//
class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar:AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/camera.png',
            width: 38,
            height: 34,
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
            'assets/instagramlogo.png',
            height: 65,
            width: 115,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/igtv.png',
                height: 38,
                width: 34,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/send.png',
                height: 38,
                width: 34,
              ),
            ),
          ),
        ],
      ),
      body:Column(children: [
        Story(),
        const Divider(color:Color.fromARGB(255, 47, 46, 46),),
         const Expanded(child:Post()),
      ],)
      
    );
  }
}