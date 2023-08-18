import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../data/data.dart';

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
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(30.0),
      width: screenWidth < 700 ? screenWidth * 0.9 : screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Work Experience', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600)),
        Timeline.tileBuilder(
            shrinkWrap: true,
            builder: TimelineTileBuilder.fromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Data.workExp[index]['company']!, style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600)),
                        Text(Data.workExp[index]['position']!),
                        Text(Data.workExp[index]['duration']!),
                      ],
                    ),
                  ),
                );
              },
              itemCount: Data.workExp.length,
            ))
      ]),
    );
  }
}
