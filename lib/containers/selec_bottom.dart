import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marp_mobile/screens/navi_screen.dart';

class SelecBottom extends StatefulWidget {
  const SelecBottom({super.key});

  @override
  State<SelecBottom> createState() => _SelecBottomState();
}

class _SelecBottomState extends State<SelecBottom> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Column(
      children: [
        SizedBox(
          height: screenheightFixed * 8,
        ),
        Container(
          width: screenwidthFixed * 54,
          height: screenheightFixed * 4,
          color: const Color(0xffd9d9d9),
        ),
        SizedBox(
          height: screenheightFixed * 27,
        ),
        Container(
          width: screenwidthFixed * 393,
          padding: EdgeInsets.symmetric(
            horizontal: screenwidthFixed * 25,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: screenwidthFixed * 194,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xff5e94ff),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenheightFixed * 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '1분',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(
                            width: screenwidthFixed * 60,
                          ),
                          const Text(
                            'MARP 추천',
                            style: TextStyle(
                              color: Color(0xff5e94ff),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '한국디지털미디어고등학교',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '오전 9:17 도착',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '0.3KM   0원',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenheightFixed * 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenwidthFixed * 14,
                ),
                Container(
                  width: screenwidthFixed * 194,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xff898989),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenheightFixed * 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '2분',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '한국디지털미디어고등학교',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '오전 9:18 도착',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenwidthFixed * 13,
                          ),
                          const Text(
                            '0.4KM   0원',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenheightFixed * 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenheightFixed * 9,
        ),
        SizedBox(
          width: screenwidthFixed * 393,
          height: screenheightFixed * 45,
          child: Row(
            children: [
              SizedBox(
                width: screenwidthFixed * 27,
              ),
              Container(
                width: screenwidthFixed * 45,
                height: screenwidthFixed * 45,
                decoration: BoxDecoration(
                  color: const Color(0xffC9C9C9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 13,
              ),
              GestureDetector(
                onTap: () async {
                  var cameras = await availableCameras();
                  Get.to(() => NaviScreen(cameras.first));
                },
                child: Container(
                  width: screenwidthFixed * 288,
                  height: screenheightFixed * 45,
                  decoration: BoxDecoration(
                    color: const Color(0xff5E94FF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '안내 시작',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenheightFixed * 15,
        ),
      ],
    );
  }
}
