import 'package:flutter/material.dart';

class WorkExp extends StatefulWidget {
  const WorkExp({super.key});

  @override
  State<WorkExp> createState() => _WorkExpState();
}

class _WorkExpState extends State<WorkExp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth < 700 ? screenWidth * 0.9 : screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
