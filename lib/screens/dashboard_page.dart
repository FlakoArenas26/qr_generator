import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  DashboardPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Bienvenido, $username'),
            SizedBox(height: 20),
            // QrImage(
            //   data: username,
            //   version: QrVersions.auto,
            //   size: 200.0,
            // ),
          ], // Aquí está QrImage dentro de la lista de children
        ),
      ),
    );
  }
}
