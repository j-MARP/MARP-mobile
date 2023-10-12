import 'package:flutter/material.dart';

class CirComp extends StatefulWidget {
  const CirComp({super.key});

  @override
  State<CirComp> createState() => _CirCompState();
}

class _CirCompState extends State<CirComp> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Column(
      children: [
        SizedBox(
          height: screenheightFixed * 48,
          width: screenwidthFixed * 1,
        ),
        SizedBox(
          width: screenwidthFixed * 393,
          height: screenheightFixed * 88,
          child: Column(
            children: [
              SizedBox(
                width: screenwidthFixed * 393,
                height: screenheightFixed * 44,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenwidthFixed * 16,
                      height: screenheightFixed * 1,
                    ),
                    Container(
                      width: screenwidthFixed * 40,
                      height: screenheightFixed * 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff1F1F1F),
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: screenwidthFixed * 284,
                      height: screenheightFixed * 1,
                    ),
                    Container(
                        width: screenwidthFixed * 40,
                        height: screenheightFixed * 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff1F1F1F),
                        ),
                        child: Transform.rotate(
                          angle: 100,
                          child: const Icon(
                            Icons.send,
                            color: Colors.blue,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: screenwidthFixed * 393,
                height: screenheightFixed * 44,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenwidthFixed * 340,
                      height: screenheightFixed * 1,
                    ),
                    Container(
                        width: screenwidthFixed * 40,
                        height: screenheightFixed * 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff1F1F1F),
                        ),
                        child: Transform.rotate(
                          angle: 100,
                          child: const Icon(
                            Icons.explore,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
