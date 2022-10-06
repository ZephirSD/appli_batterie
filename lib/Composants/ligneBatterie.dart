import 'package:flutter/material.dart';

import '../Pages/pageBatterie.dart';

class LigneBatterie extends StatefulWidget {
  final String nom;
  final String identifiant;
  final int signal;
  late bool isSwitched;
  LigneBatterie(this.nom, this.identifiant, this.signal,
      {this.isSwitched = false});

  @override
  State<LigneBatterie> createState() => _LigneBatterieState();
}

class _LigneBatterieState extends State<LigneBatterie> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                Text(
                  widget.nom,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  widget.identifiant,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            if (widget.signal == 1)
              const Icon(
                Icons.signal_cellular_alt_1_bar_sharp,
                color: Colors.white,
              )
            else if (widget.signal == 2)
              const Icon(
                Icons.signal_cellular_alt_2_bar,
                color: Colors.white,
              )
            else if (widget.signal == 3)
              const Icon(
                Icons.signal_cellular_alt_sharp,
                color: Colors.white,
              ),
            Switch(
              activeColor: Colors.green,
              value: widget.isSwitched,
              onChanged: (bool value) => setState(() {
                widget.isSwitched = value;
                print(value);
                print(widget.nom);
                if (value == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavPgBatterie(
                        nomAppareil: widget.nom,
                      ),
                    ),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
