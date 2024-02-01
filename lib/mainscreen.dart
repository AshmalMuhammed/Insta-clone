import 'package:flutter/material.dart';
import 'package:instagramui/homescreen.dart';
import 'package:instagramui/like.dart';
import 'package:instagramui/searchscreen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen ({super.key});

  @override
  State<Mainscreen> createState() => MainscreenState();
}

class MainscreenState extends State<Mainscreen> {
  int myIndex = 0;
  List<Widget> widgetList= [
    const Homescreen(),
    SearchScreen(),
    const Text('add',style: TextStyle(fontSize: 40)),
    const Like(), const Text('favuorite',style: TextStyle(fontSize: 40)),
    const Text('person',style: TextStyle(fontSize: 40)),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar:  BottomNavigationBar(
    
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.black,
    showSelectedLabels: false,
    showUnselectedLabels: false,
     currentIndex: myIndex,
     iconSize: 28,
     selectedItemColor: Colors.white,
     unselectedItemColor: Colors.grey,
      onTap: (index){
        setState(() {
                  myIndex=index;

        });
      },
      items: const [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home',
        ),
        BottomNavigationBarItem(icon:Icon(Icons.search),label: 'Search',
        ),
        BottomNavigationBarItem(icon:Icon(Icons.add_box_rounded),label: 'Add',
        ),
                BottomNavigationBarItem(icon:Icon(Icons.favorite),label: 'Like',
        ),
                BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined ),label: 'Person',
                
        ),
      ],
    ));
  }
}