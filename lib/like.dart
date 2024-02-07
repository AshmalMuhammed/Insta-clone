import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User(
          name: 'nubl',
          activity: ' started following \nyou',
          time: ' 18m',
          imagePath: 'assets/nubl.jpg',
          isFollowed: true,
          title: 'Follow requests'),
      User(
        name: 'naheel',
        activity: ' started following \nyou',
        time: ' 3h',
        imagePath: 'assets/naheel.jpg',
      ),
      User(
          name: 'rihan_babu',
          activity: ' started following you',
          time: '18h',
          imagePath: 'assets/rihan.jpg',
          isFollowed: true),
      User(
          name: 'badusha',
          activity: ' started following you',
          time: '  23h',
          imagePath: 'assets/badusha.jpg',
          title: 'Today'),
      User(
        name: 'sanin',
        activity: ' started following \nyou',
        time: ' 1d',
        imagePath: 'assets/sanin.jpg',
      ),
      User(
        name: 'ajmal_smartboy',
        activity: ' started following you',
        time: '  1d',
        imagePath: 'assets/ajmal.jpg',
      ),
      User(
          name: 'thamjid',
          activity: ' started following you',
          time: ' 3d',
          imagePath: 'assets/thamjid.jpg',
          title: 'Last week'),
      User(
          name: 'feril',
          activity: ' started following \nyou',
          time: ' 3d',
          imagePath: 'assets/feril.jpg',
          isFollowed: true),
      User(
        name: 'bilal_x',
        activity: ' started following you',
        time: ' 3d',
        imagePath: 'assets/bilal.jpg',
      ),
      User(
          name: 'ashmel',
          activity: ' started following you',
          time: ' 3w',
          imagePath: 'assets/ashmel.jpg',
          title: 'Last Month'),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: const TabBar(
            padding: EdgeInsets.only(bottom: 40),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.black,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Following',
              ),
              Tab(
                text: '    You     ',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: users.length,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            users[index].title != null
                                ? Text(
                                    users[index].title!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : const SizedBox(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                child: ListTile(
                                  contentPadding:
                                      const EdgeInsets.only(left: 0, right: 0),
                                  leading: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 0, top: 8),
                                    child: Container(
                                      height: 60,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                users[index].imagePath),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  title: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 0),
                                    child: RichText(
                                      text: TextSpan(
                                        text: users[index].name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: users[index].activity,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4),
                                            children: [
                                              TextSpan(
                                                text: users[index].time,
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  trailing: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 0),
                                    child: SizedBox(
                                      width: 119,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: users[index]
                                                      .isFollowed ==
                                                  true
                                              ? MaterialStateProperty.all(
                                                  Colors.blue)
                                              : const MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 37, 36, 36)),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          users[index].isFollowed == true
                                              ? "Follow back"
                                              : 'Following',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Follow Requests',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: Text(
                        'New',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/nubl.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'nubl_rahman',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  Liked your photo.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: ' 1h',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image: AssetImage('post.jpg'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                height: 90,
                                width: 90,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 25, left: 15),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage: AssetImage(
                                            'assets/ajmal.jpg',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 8,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage: AssetImage(
                                            'assets/badusha.jpg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 0),
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'badusha , ajmal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' and',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: ' 26 others',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                            children: [
                                              TextSpan(
                                                text: '\nLiked your photo.',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.3,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: ' 3h',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 45),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                      image: AssetImage('post.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'This Week',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/rihan.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'rihan_babu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' mentioned you in a\ncomment:',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: '  @ashmell',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w300),
                                          children: [
                                            TextSpan(
                                              text: '  Exactly...\nWow!!',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300,
                                                height: 1.4,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: ' 2d',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    letterSpacing: 1.3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 40),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image: AssetImage('post.jpg'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/naheel.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'naheel_kk',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  Started\nFollowing you.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
                                      children: [
                                        TextSpan(
                                          text: ' 1h',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75, top: 20),
                              child: SizedBox(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Color.fromARGB(255, 28, 27, 27)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ))),
                                  onPressed: null,
                                  child: const Text(
                                    'Message',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/badusha.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'badusha',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  Started\nFollowing you.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
                                      children: [
                                        TextSpan(
                                          text: ' 1h',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 20),
                              child: SizedBox(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Color.fromARGB(255, 28, 27, 27)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ))),
                                  onPressed: null,
                                  child: const Text(
                                    'Message',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/sanin.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'sanin_popz',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  Started Following \nyou.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
                                      children: [
                                        TextSpan(
                                          text: ' 1h',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child: SizedBox(
                                height: 28,
                                width: 90,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Colors.blue),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ))),
                                  onPressed: null,
                                  child: const Text(
                                    'Follow',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: Text(
                        'This Month',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 13),
                              child: SizedBox(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/feril.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: RichText(
                                text: const TextSpan(
                                  text: 'mhd_feril',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  Started\nFollowing you.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4),
                                      children: [
                                        TextSpan(
                                          text: ' 3w',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 20),
                              child: SizedBox(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Color.fromARGB(255, 28, 27, 27)),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ))),
                                  onPressed: null,
                                  child: const Text(
                                    'Message',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String activity;
  final String time;
  final String imagePath;
  final String? title;
  final bool? isFollowed;
  User(
      {required this.name,
      required this.activity,
      required this.time,
      required this.imagePath,
      this.isFollowed,
      this.title});
}
