import 'package:flutter/material.dart';

class LocateScreen extends StatefulWidget {
  const LocateScreen({super.key});

  @override
  State<LocateScreen> createState() => _LocateScreenState();
}

class _LocateScreenState extends State<LocateScreen> {
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
                'assets/images/Map.png',
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
                child: Column(
                  children: [
                    SizedBox(height: screenheightFixed * 31),
                    SizedBox(
                      width: screenwidthFixed * 144,
                      height: screenwidthFixed * 144,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: const Image(
                          image: AssetImage('assets/images/dimigo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: screenheightFixed * 9),
                    const Text(
                      '한국디지털미디어고등학교',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: screenheightFixed * 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 35),
                        const Icon(Icons.star, color: Colors.yellow, size: 35),
                        const Icon(Icons.star, color: Colors.yellow, size: 35),
                        const Icon(Icons.star, color: Colors.yellow, size: 35),
                        const Icon(Icons.star, color: Colors.yellow, size: 35),
                        SizedBox(width: screenwidthFixed * 5),
                        const Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenheightFixed * 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.pin_drop_outlined, size: 30),
                        SizedBox(width: screenwidthFixed * 5),
                        const Text(
                          '경기도 안산시 단원구 사세충열로 94',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: screenheightFixed * 22),
                    const Image(
                        image: AssetImage('assets/images/comments.png')),
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
