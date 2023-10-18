import 'package:flutter/material.dart';
import '../containers/circomp.dart';
import '../containers/main_bottom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Stack(
      children: [
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
              height: screenheightFixed * 642,
              width: screenwidthFixed * 1,
            ),
            Container(
              width: screenwidthFixed * 393,
              height: screenheightFixed * 210,
              color: const Color.fromARGB(255, 255, 255, 255),
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: screenheightFixed * 612,
            ),
            Container(
              width: screenwidthFixed * 393,
              height: screenheightFixed * 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const BottomContainer(),
            ),
          ],
        ),
        const CirComp()
      ],
    );
  }
}
