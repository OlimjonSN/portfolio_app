import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/widgets/network_about.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
      child: Column(children: [
        SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/about.jpg',
              fit: BoxFit.cover,
            )),
        const Text('Yakhshiboyev Olimjon', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600)),
        const Text('I am a developer and I am looking for dev roles!', textAlign: TextAlign.center),
        const Chip(label: Text('Flutter'), avatar: Icon(Icons.code)),
        const Divider(),
        const SizedBox(
          child: Networks(
            icon: FontAwesomeIcons.githubAlt,
            networkName: 'Github',
            userName: 'olimjon_sn',
          ),
        ),
        const SizedBox(
          child: Networks(
            icon: FontAwesomeIcons.linkedinIn,
            networkName: 'LinkedIn',
            userName: 'Olimjon Yaxshiboyev',
          ),
        )
      ]),
    );
  }
}
