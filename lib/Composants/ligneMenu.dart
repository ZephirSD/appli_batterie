import 'package:flutter/material.dart';

class LigneMenu extends StatelessWidget {
  final String titre;
  final IconData icone;
  final Widget page;

  LigneMenu(this.titre, this.icone, this.page);

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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
