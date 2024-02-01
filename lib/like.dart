import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: TabBar(
          padding: EdgeInsets.symmetric(vertical: 20),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          dividerColor: Colors.black,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: 'Following',
            ),
            Tab(
              text: 'You',
            ),
          ],
        ),
      ),
    );
  }
}