import 'package:flutter/material.dart';

import '../Composants/drawerMenu.dart';

class NavSauvFich extends StatelessWidget {
  const NavSauvFich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Sauvegarde des Fichiers'),
          ),
          backgroundColor: Colors.grey,
        ),
        body: const Center(child: SauvFichPage()),
        drawer: const MenuDrawer(),
      ),
    );
  }
}

class SauvFichPage extends StatefulWidget {
  const SauvFichPage({super.key});

  @override
  State<SauvFichPage> createState() => _SauvFichPageState();
}

class _SauvFichPageState extends State<SauvFichPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
