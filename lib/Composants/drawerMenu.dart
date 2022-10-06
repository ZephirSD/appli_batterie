import 'package:flutter/material.dart';
import '../Pages/pageAccueil.dart';
import '../Pages/sauvFich.dart';
import 'ligneMenu.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          LigneMenu('Listes des appareils', Icons.menu, NavAccueilBat()),
          LigneMenu('Demo', Icons.play_arrow, const NavSauvFich()),
          LigneMenu('Sauvegarde de fichier', Icons.file_download,
              const NavSauvFich()),
          LigneMenu('Téléchargement', Icons.download, const NavSauvFich()),
          LigneMenu('Paramètres', Icons.settings, const NavSauvFich()),
        ],
      ),
    );
  }
}
