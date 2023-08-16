import 'package:flutter/material.dart';
import 'package:portfolio_app/components/about.dart';
import 'package:portfolio_app/components/work_exp.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Experience')),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Education')),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(

        //? App Bar
        appBar: AppBar(
          title: const Text('Olimjon Yakhshiboyev'),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile ? Drawer(child: ListView(children: navItems)) : null,

        //? Body
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                children: [About(), WorkExp()],
              )
            ],
          ),
        ));
  }
}
