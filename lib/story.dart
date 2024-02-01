import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  Story({super.key});

  final List<dynamic> story = [
    {
      "images": 'assets/ashmel.jpg',
      "username": 'Your Story',
    },
    {
      "images": 'assets/sanin.jpg',
      "username": 'sanin',
    },
    {
      "images": 'assets/ajmal.jpg',
      "username": 'ajmal',
    },
    {
      "images": 'assets/nubl.jpg',
      "username": 'nubl',
    },
    {
      "images": 'assets/rihan.jpg',
      "username": 'rihan',
    },
    {
      "images": 'assets/badusha.jpg',
      "username": 'badusha',
    },
    {
      "images": 'assets/feril.jpg',
      "username": 'feril',
    },
    {
      "images": 'assets/bilal.jpg',
      "username": 'bilal',
    },
    {
      "images": 'assets/naheel.jpg',
      "username": 'naheel',
    },
    {
      "images": 'assets/thamjid.jpg',
      "username": 'thamjid',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.5),
                    child: Column(
                      children: [
                        Container(
                          width: 67,
                          height: 67,
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF982282),
                                    Color(0xFFEEA863),
                                  ])),
                          child: Container(
                            width: 67,
                            height: 67,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Container(
                                width: 67,
                                height: 67,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      '${story[index]["images"]}',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            ('${story[index]["username"]}'),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
