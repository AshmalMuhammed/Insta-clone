import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(221, 89, 87, 87),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/ashmel.jpg'),
                  ),
                ),
              ),
              title: const Text(
                'ashmelll',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'Koduvally, India',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 400,
              child: PageView.builder(
                itemCount: 2,
                itemBuilder: (context, pageIndex) {
                  return Image.asset(
                    pageIndex == 0 ? 'assets/post.jpg' : 'assets/bike.jpg',
                    fit: BoxFit.cover,
                  );
                },
                onPageChanged: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    height: 32,
                    width: 32,
                    child: ImageIcon(
                      AssetImage('assets/comment.png'),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    height: 32,
                    width: 32,
                    child: ImageIcon(
                      AssetImage(
                        'assets/send.png',
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        2,
                        (index) => Container(
                          margin: const EdgeInsets.only(top: 3.0, left: 5),
                          width: 6.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == currentPageIndex
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  const SizedBox(
                    height: 38,
                    width: 38,
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 5),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: const DecorationImage(
                      image: AssetImage('assets/nubl.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                RichText(
                    text: const TextSpan(
                        text: 'Liked by',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <InlineSpan>[
                      WidgetSpan(
                        child: SizedBox(
                          width: 5,
                        ),
                      ),
                      TextSpan(
                        text: 'nubl_rahman',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: SizedBox(
                              width: 5,
                            ),
                          ),
                          TextSpan(
                              text: 'and',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              children: <InlineSpan>[
                                WidgetSpan(
                                  child: SizedBox(
                                    width: 5,
                                  ),
                                ),
                                TextSpan(
                                  text: '1,038,673 others',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ]))
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                const SizedBox(
                  height: 1,
                  width: 5,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'ashmelll',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text:
                            ' Utharakand the elagent and exabolarating , Cultural \nBeauty of india...',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
