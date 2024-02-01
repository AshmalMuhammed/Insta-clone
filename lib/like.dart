import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: const Color.fromARGB(255, 203, 51, 51),
          bottom:TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.black,
              indicatorColor: Colors.white,
              dividerHeight: 0,
              tabs: [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                ),
              ],
            ),
          )),
    );
  }
}
