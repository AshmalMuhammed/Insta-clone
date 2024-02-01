import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> searchScreen = [
    {"images": 'assets/ashmel.jpg'},
    {"images": 'assets/car1.jpg'},
    {"images": 'assets/car2.jpg'},
    {"images": 'assets/badusha.jpg'},
    {"images": 'assets/car3.jpg'},
    {"images": 'assets/car4.jpg'},
    {"images": 'assets/post.jpg'},
    {"images": 'assets/bike.jpg'},
    {"images": 'assets/ajmal.jpg'},
    {"images": 'assets/nubl.jpg'},
    {"images": 'assets/rihan.jpg'},
    {"images": 'assets/feril.jpg'},
    {"images": 'assets/post.jpg'},
    {"images": 'assets/badusha.jpg'},
    {"images": 'assets/bike.jpg'},
    {"images": 'assets/ashmel.jpg'},
     {"images": 'assets/post.jpg'},
    {"images": 'assets/bilal.jpg'},
    {"images": 'assets/thamjid.jpg'},
    {"images": 'assets/ashmel.jpg'},
    {"images": 'assets/ashmel.jpg'},
    {"images": 'assets/ashmel.jpg'},
    {"images": 'assets/ashmel.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: 320,
                  child: TextField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 183, 181, 181),
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.only(left: 10),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 33, 32, 32),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 149, 148, 148),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor:
                          const Color.fromARGB(255, 142, 141, 141),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/scan.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 38,
                width: 73,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 33, 32, 32),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/igtv.png',
                      height: 22,
                      width: 22,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'IGTV',
                        style: TextStyle(
                          fontFamily: 'SF pro',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 38,
                    width: 73,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 33, 32, 32),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Shop',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF pro',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 7,
                        ),
                        height: 36,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 33, 32, 32),
                        ),
                        child: const Text(
                          'Style',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 7,
                            ),
                            height: 36,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 33, 32, 32),
                            ),
                            child: const Text(
                              'Sports',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 17,
                                  vertical: 6,
                                ),
                                height: 36,
                                width: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 33, 32, 32),
                                ),
                                child: const Text(
                                  'Auto',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
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
            ],
          ),
         const SizedBox(height: 10,),
          Expanded(
    
            child: GridView.builder(
              itemCount: searchScreen.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  searchScreen[index]["images"]!,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
