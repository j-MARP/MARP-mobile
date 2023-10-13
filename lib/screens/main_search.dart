import 'package:flutter/material.dart';

class MainSearch extends StatefulWidget {
  const MainSearch({super.key});

  @override
  State<MainSearch> createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Material(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: screenheightFixed * 642,
              ),
              Container(
                width: screenwidthFixed * 393,
                height: screenheightFixed * 210,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            width: screenwidthFixed * 393,
            height: screenheightFixed * 852,
            child: const Image(
              image: AssetImage(
                'assets/images/main_map.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenheightFixed * 54,
                width: screenwidthFixed * 1,
              ),
              Container(
                width: screenwidthFixed * 393,
                height: screenheightFixed * 797,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenheightFixed * 54,
                      ),
                      Container(
                        width: screenwidthFixed * 348,
                        height: screenheightFixed * 48,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 236, 236),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: screenwidthFixed * 300,
                              height: screenheightFixed * 50,
                              child: const TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.search,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenheightFixed * 14,
                      ),
                      Container(
                        width: screenwidthFixed * 348,
                        height: screenheightFixed * 89,
                        child: Row(children: [
                          Container(
                            width: screenwidthFixed * 70,
                            height: screenheightFixed * 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(width: screenwidthFixed * 4),
                          SizedBox(
                            width: screenwidthFixed * 230,
                            height: screenheightFixed * 58,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '한국디지털미디어고등학교',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '★★★★★',
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        '5.0',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(width: screenwidthFixed * 6),
                                      Container(
                                        width: screenwidthFixed * 28,
                                        height: screenheightFixed * 14,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff73D783),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '실내',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.pin_drop_outlined,
                                        size: 25,
                                      ),
                                      SizedBox(width: screenwidthFixed * 2),
                                      const Text(
                                        '경기도 안산시 단원구 사세충열로 94',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color(0xffDB5858),
                            elevation: 0,
                            onPressed: () {},
                            child: const Icon(
                              Icons.pin_drop_outlined,
                              size: 30,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
