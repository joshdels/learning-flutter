/* 
🟡 Exercise 4 — Floating UI Controls

Wrap map in Stack

Add:

Positioned(
  bottom: 20,
  right: 20,
  child: FloatingActionButton(...)
)

Practice:
Zoom in button
Zoom out button
Center map button

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
  final LatLng point = LatLng(7.0639, 125.6083);
  final MapController _mapController = MapController();

  void _zoomIn() {
    final zoom = _mapController.camera.zoom;
    _mapController.move(_mapController.camera.center, zoom + 1);
  }

  void _zoomOut() {
    final zoom = _mapController.camera.zoom;
    _mapController.move(_mapController.camera.center, zoom - 1);
  }

  void _centerMap() {
    _mapController.move(point, 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Map Practice')),
      body: Stack(
        children: [
          MapPage(controller: _mapController, center: point),
          Positioned(
            top: 20,
            left: 20,
            child: Positioned(
              right: 20,
              bottom: 20,
              child: Column(
                children: [
                  FloatingActionButton(
                    heroTag: "zoomIn",
                    mini: true,
                    onPressed: _zoomIn,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 10),
                  FloatingActionButton(
                    heroTag: "zoomOut",
                    mini: true,
                    onPressed: _zoomOut,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(height: 10),
                  FloatingActionButton(
                    heroTag: "center",
                    mini: true,
                    onPressed: _centerMap,
                    child: const Icon(Icons.center_focus_strong),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  final MapController controller;
  final LatLng center;

  const MapPage({super.key, required this.controller, required this.center});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: controller,
      options: MapOptions(initialCenter: center, initialZoom: 15),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
      ],
    );
  }
}
