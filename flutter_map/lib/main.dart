/* 
🟡 Exercise 3 — Multiple Layers

Add:

TileLayer
MarkerLayer
PolylineLayer
Toggle polyline visibility with button

This teaches:
Conditional widget rendering

*/

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActive = true;

  void handleActive(bool value) {
    setState(() {
      isActive = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Map Practice')),
      body: Stack(
        children: [
          MapPage(isActive: isActive),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingSection(value: isActive, onChanged: handleActive),
          ),
        ],
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  final bool isActive;

  const MapPage({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    final LatLng point = LatLng(7.0639, 125.6083);

    return FlutterMap(
      options: MapOptions(initialCenter: point, initialZoom: 15),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        if (isActive)
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(7.0639, 125.6083),
                child: Icon(Icons.heart_broken, size: 50, color: Colors.blue),
              ),
            ],
          ),
        if (isActive)
          PolylineLayer(
            polylines: [
              Polyline(
                points: [point, LatLng(7.065, 125.61), LatLng(7.067, 125.605)],
                strokeWidth: 4,
                color: Colors.red,
              ),
            ],
          ),
      ],
    );
  }
}

class FloatingSection extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const FloatingSection({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white),
      child: Switch(value: value, focusColor: Colors.red, onChanged: onChanged),
    );
  }
}
