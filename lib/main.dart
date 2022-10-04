import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';

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
              IconButton(
                  onPressed: (() {
                    print('test');
                  }),
                  icon: const Icon(Icons.refresh))
            ]),
        body: const Center(child: Home2Widget()),
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.grey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              LigneMenu('Listes des appareils', Icons.menu),
              LigneMenu('Demo', Icons.play_arrow),
              LigneMenu('Sauvegarde de fichier', Icons.file_download),
              LigneMenu('Téléchargement', Icons.download),
              LigneMenu('Paramètres', Icons.settings),
            ],
          ),
        ),
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
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.battery_0_bar,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    const Text(
                      'Smart Lithium',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      '10560505012',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.signal_cellular_alt,
                  color: Colors.white,
                ),
                Switch(
                  activeColor: Colors.green,
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      // if(value == true){

                      // }else{

                      // }
                      print(value);
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LigneMenu extends StatelessWidget {
  final String titre;
  final IconData icone;

  LigneMenu(this.titre, this.icone);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(icone, color: Colors.white),
          Text(
            titre,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      onTap: () {
        print('menu1');
      },
    );
  }
}
