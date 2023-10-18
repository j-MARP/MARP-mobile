import 'dart:async';
import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:ditredi/ditredi.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marp_mobile/screens/main_screen.dart';

class NaviScreen extends StatefulWidget {
  const NaviScreen(this.cam, {super.key});
  final CameraDescription cam;

  @override
  State<NaviScreen> createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late Timer timer;
  int distance = 0;
  double len1 = 16;
  bool turned = false;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cam,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (len1 > 1) {
        setState(() {
          len1 -= 0.5;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    // len1 = 16;
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // 미리보기
                return CameraPreview(_controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          DiTreDi(
            controller: DiTreDiController(
              userScale: 3.5,
              rotationY: 0,
              rotationX: -20,
            ),
            figures: [
              Point3D(
                vector.Vector3(0, 0, -1),
              ),
              Face3D(
                vector.Triangle.points(
                  vector.Vector3(0.5 - 0.75 + 0.01 * (16 - len1), 0,
                      len1 + 0.85 - 0.1 * (16 - len1)),
                  vector.Vector3(-0.45 + 0.02 * (16 - len1), 0, len1 - 1),
                  vector.Vector3(0.45 - 0.02 * (16 - len1), 0, len1 - 1),
                ),
                color: const Color(0xFF6938D3),
              ),
              Line3D(
                vector.Vector3(0, 0, 0),
                vector.Vector3(0, 0, len1 - 1),
                width: 20,
                color: const Color(0xFF6938D3).withOpacity(0.8),
              ),
              Line3D(
                vector.Vector3(0, 0, len1),
                vector.Vector3(0, 0, 16),
                width: 20,
                color: Colors.transparent,
              ),
              Line3D(
                vector.Vector3(0.05, 0, len1 - 0.05 - 0.05 * (16 - len1)),
                vector.Vector3(1.55, 0, len1 + 4.95 - 0.05 * (16 - len1)),
                width: 20,
                color: const Color(0xFF6938D3).withOpacity(0.8),
              ),
              Line3D(
                vector.Vector3(0, 0, len1),
                vector.Vector3(-1.5, 0, len1 + 1.5),
                width: 20,
                color: Colors.transparent,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(
                  top: screenheightFixed * 18,
                  bottom: screenheightFixed * 34,
                  left: screenwidthFixed * 20,
                  right: screenwidthFixed * 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/target_icon.png',
                          scale: 10,
                        ),
                        SizedBox(
                          width: screenwidthFixed * 5,
                        ),
                        const Text(
                          '한국디지털미디어고등학교 내 301호',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheightFixed * 12,
                    ),
                    Row(
                      children: [
                        Container(
                          width: screenwidthFixed * 50,
                          height: screenwidthFixed * 50,
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color(0xFF575757),
                          ),
                        ),
                        SizedBox(
                          width: screenwidthFixed * 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${distance}m'),
                            Text((turned) ? '목적지' : '우회전'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheightFixed * 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => const MainScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFE85757),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenwidthFixed * 15,
                          vertical: screenheightFixed * 18,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AR 모드 중단하기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '중단하고 지도 보기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.map_outlined,
                              color: Colors.white,
                              size: screenwidthFixed * 35,
                            ),
                          ],
                        ),
                      ),
                    ),
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
