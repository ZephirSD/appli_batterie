import 'package:flutter/material.dart';
import 'Composants/drawerMenu.dart';
import 'Composants/ligneBatterie.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(HomePageWidget());
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

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
              // GestureDetector(
              //   onTap: ,
              // )
              IconButton(
                  onPressed: (() {
                    print('test');
                  }),
                  icon: const Icon(Icons.refresh))
            ]),
        body: const Center(child: Home2Widget()),
        drawer: const MenuDrawer(),
      ),
    );
  }
}

class Home2Widget extends StatefulWidget {
  const Home2Widget({super.key});

  @override
  State<Home2Widget> createState() => _Home2WidgetState();
}

class _Home2WidgetState extends State<Home2Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LigneBatterie("Smart Lithium", "02305021", 2, true),
        LigneBatterie("Smart Lithium", "05045025", 3, false),
      ],
    );
  }
}
