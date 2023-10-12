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
                    borderRadius: BorderRadius.circular(30)),
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
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
