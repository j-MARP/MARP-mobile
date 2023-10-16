import 'package:flutter/material.dart';
import 'package:marp_mobile/containers/circomp.dart';
import 'package:marp_mobile/containers/selec_bottom.dart';

class SelecScreen extends StatefulWidget {
  const SelecScreen({super.key});

  @override
  State<SelecScreen> createState() => _SelecScreenState();
}

class _SelecScreenState extends State<SelecScreen> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 393;
    double screenheightFixed = MediaQuery.of(context).size.height / 852;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: screenwidthFixed * 393,
              height: screenheightFixed * 812,
              color: const Color(0xff363636),
            ),
            Container(
              height: screenheightFixed * 40,
              width: screenwidthFixed * 393,
              color: Colors.white,
            )
          ],
        ),
        const CirComp(),
        SizedBox(
          width: screenwidthFixed * 393,
          height: screenheightFixed * 852,
          child: Column(
            children: [
              SizedBox(
                height: screenheightFixed * 136,
                width: screenwidthFixed * 1,
              ),
              SizedBox(
                height: screenheightFixed * 387,
                width: screenwidthFixed * 393,
                child: Image.asset('assets/images/minimap_comp.png'),
              ),
              SizedBox(
                height: screenheightFixed * 102,
                width: screenwidthFixed * 1,
              ),
              Container(
                width: screenwidthFixed * 393,
                height: screenheightFixed * 227,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const SelecBottom(),
              )
            ],
          ),
        )
      ],
    );
  }
}
