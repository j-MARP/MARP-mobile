import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:marp_mobile/screens/main_search.dart';
import 'package:marp_mobile/screens/selec_screen.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Column(
      children: [
        SizedBox(
          height: screenheightFixed * 8,
          width: screenwidthFixed * 1,
        ),
        Container(
          width: screenwidthFixed * 54,
          height: screenheightFixed * 4,
          color: const Color(0xffd9d9d9),
        ),
        SizedBox(
          height: screenheightFixed * 28,
          width: screenwidthFixed * 1,
        ),
        GestureDetector(
          onTap: () async {
            await Get.to(() => const MainSearch());
            setState(() {
              selected = true;
            });
          },
          child: Container(
            width: screenwidthFixed * 348,
            height: screenheightFixed * 48,
            decoration: BoxDecoration(
                color: const Color(0xffECECEC),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                SizedBox(
                  width: screenwidthFixed * 22,
                ),
                if (!selected)
                  const Text(
                    '목적지를 입력해주세요.',
                    style: TextStyle(color: Color(0xff949494), fontSize: 12),
                  ),
                if (selected)
                  const Text(
                    '한국디지털미디어고등학교',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                Expanded(child: SizedBox()),
                const Icon(Icons.search)
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenheightFixed * 41,
          width: screenwidthFixed * 1,
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const SelecScreen());
          },
          child: Container(
            width: screenwidthFixed * 348,
            height: screenheightFixed * 75,
            decoration: BoxDecoration(
              color: const Color(0xff1F1F1F),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: screenwidthFixed * 19,
                  height: screenheightFixed * 1,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenheightFixed * 20,
                      ),
                      const Text(
                        'AR 사용하기',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Text(
                        '현재 위치에서 AR 사용하기',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenwidthFixed * 175,
                  height: screenheightFixed * 1,
                ),
                SizedBox(
                  width: screenwidthFixed * 40,
                  height: screenheightFixed * 40,
                  child: const Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
