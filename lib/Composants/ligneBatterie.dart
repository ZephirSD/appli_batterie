import 'package:flutter/material.dart';

class LigneBatterie extends StatelessWidget {
  final String nom;
  final String identifiant;
  final int signal;
  final bool isSwitched;
  LigneBatterie(this.nom, this.identifiant, this.signal, this.isSwitched);

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
                  nom,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  identifiant,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            if (signal == 1)
              const Icon(
                Icons.signal_cellular_alt_1_bar_sharp,
                color: Colors.white,
              )
            else if (signal == 2)
              const Icon(
                Icons.signal_cellular_alt_2_bar,
                color: Colors.white,
              )
            else if (signal == 3)
              const Icon(
                Icons.signal_cellular_alt_sharp,
                color: Colors.white,
              ),
            Switch(
              activeColor: Colors.green,
              value: isSwitched,
              onChanged: (value) {
                // setState(() {
                //   isSwitched = value;
                //   // if(value == true){

                //   // }else{

                //   // }
                //   print(value);
                // });
              },
            )
          ],
        ),
      ),
    );
  }
}
