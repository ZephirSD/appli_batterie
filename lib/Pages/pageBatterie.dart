import 'package:flutter/material.dart';

import '../Composants/drawerMenu.dart';

class NavPgBatterie extends StatelessWidget {
  final String nomAppareil;
  NavPgBatterie({Key? key, required this.nomAppareil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(nomAppareil),
          ),
          backgroundColor: Colors.grey,
        ),
        body: Center(child: PageBatterie(nomAppareil: nomAppareil)),
        drawer: const MenuDrawer(),
      ),
    );
  }
}

class PageBatterie extends StatefulWidget {
  final String nomAppareil;
  PageBatterie({Key? key, required this.nomAppareil}) : super(key: key);

  @override
  State<PageBatterie> createState() => _PageBatterieState();
}

class _PageBatterieState extends State<PageBatterie> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
