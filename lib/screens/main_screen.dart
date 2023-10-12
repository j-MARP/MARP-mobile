import 'package:flutter/material.dart';
import '../widgets/tmap_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double screenwidthFixed = MediaQuery.of(context).size.width / 1080;
    double screenheightFixed = MediaQuery.of(context).size.height / 2340;
    return MaterialApp(
      home: Stack(
        children: [
          Column(),
          Column(
            children: [TmapMain()],
          ),
        ],
      ),
    );
  }
}
