/* 
🟢 Exercise 1 — Basic Map

Goal:
Show OpenStreetMap
Set center to your location (Libertad PH 👀)
Set zoom to 15

*/

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Map Practice')),
      body: Column(children: [Expanded(child: MapPage())]),
    );
  }
}

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LatLng point = LatLng(7.0639, 125.6083);

    return FlutterMap(
      options: MapOptions(initialCenter: point, initialZoom: 15),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(7.0639, 125.6083),
              child: Icon(Icons.heart_broken, size: 50, color: Colors.red),
            ),
            Marker(point: LatLng(7.0668, 125.6064), child: FlutterLogo()),
          ],
        ),
      ],
    );
  }
}
