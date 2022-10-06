import 'package:flutter/material.dart';
import '../Composants/drawerMenu.dart';
import '../Composants/ligneBatterie.dart';

class NavAccueilBat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text('Listes des appareils'),
            ),
            backgroundColor: Colors.grey,
            actions: [
              GestureDetector(
                child: const Icon(Icons.refresh),
                onTap: () async {},
              )
            ]),
        body: PageAccueilBat(),
        drawer: const MenuDrawer(),
      ),
    );
  }
}

class PageAccueilBat extends StatefulWidget {
  @override
  State<PageAccueilBat> createState() => _PageAccueilBatState();
}

class _PageAccueilBatState extends State<PageAccueilBat> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LigneBatterie(
          "Smart test",
          "02305021",
          2,
          isSwitched: false,
        ),
        LigneBatterie(
          "Smart Lithium",
          "05045025",
          3,
          isSwitched: false,
        ),
      ],
    );
  }
}
