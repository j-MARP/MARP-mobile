import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
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
        SizedBox(
          height: screenheightFixed * 28,
          width: screenwidthFixed * 1,
        ),
        Container(
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
              const Text(
                '목적지를 입력해주세요.',
                style: TextStyle(color: Color(0xff949494), fontSize: 12),
              ),
              SizedBox(
                width: screenwidthFixed * 175,
              ),
              SizedBox(
                width: screenwidthFixed * 22,
                height: screenheightFixed * 22,
                child: const Icon(Icons.search),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenheightFixed * 41,
          width: screenwidthFixed * 1,
        ),
        Container(
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
                width: screenwidthFixed * 96,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheightFixed * 20,
                    ),
                    SizedBox(
                      width: screenwidthFixed * 96,
                      height: screenheightFixed * 25,
                      child: const Text(
                        'AR 사용하기',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 96,
                      height: screenheightFixed * 19,
                      child: const Text(
                        '현재 위치에서 AR 사용하기',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
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
        )
      ],
    );
  }
}
