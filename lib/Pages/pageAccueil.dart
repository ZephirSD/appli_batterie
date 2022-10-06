import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';
// import 'package:permission_handler/permission_handler.dart';
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
                onTap: () async {
                  // var permissionBluetoothScan =
                  //     await Permission.bluetoothScan.request().isGranted;
                  // var permissionBluetoothConnect =
                  //     await Permission.bluetoothConnect.request().isGranted;
                  // if (permissionBluetoothScan && permissionBluetoothConnect) {
                  //   var FlutterBlue;
                  //   FlutterBlue flutterBlue = FlutterBlue.instance;
                  //   flutterBlue.startScan(timeout: const Duration(seconds: 4));
                  //   flutterBlue.scanResults.listen((event) {
                  //     for (ScanResult r in event) {
                  //       print('${r.device.name}');
                  //     }
                  // });
                  // flutterBlue.stopScan();
                  // }
                },
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
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 200),
        //   child: TextButton(
        //     onPressed: () {},
        //     child: Text('Ok'),
        //     style: ButtonStyle(
        //       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        //       backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
        //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //         RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(18.0),
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
