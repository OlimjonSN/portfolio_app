import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Networks extends StatelessWidget {
  final IconData icon;
  final String networkName;
  final String userName;

  const Networks({
    required this.userName,
    required this.networkName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FaIcon(
              icon,
              size: 20.0,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(networkName),
            Text(userName),
          ],
        )
      ],
    );
  }
}
