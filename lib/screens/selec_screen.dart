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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenwidthFixed * 393,
            height: screenheightFixed * 852,
            color: const Color(0xff363636),
          ),
          const CirComp(),
          SizedBox(
            width: screenwidthFixed * 393,
            height: screenheightFixed * 852,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                SizedBox(
                  height: screenheightFixed * 387,
                  width: screenwidthFixed * 393,
                  child: Image.asset('assets/images/minimap_comp.png'),
                ),
                SizedBox(
                  height: screenheightFixed * 102,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const SelecBottom(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
