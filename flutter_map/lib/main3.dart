/* 
🟢 Exercise 2 — Tap to Add Marker

Goal:
When user taps map
Add marker to that location
Store markers in List

Hint:
List<Marker> markers = [];
setState(() {
  markers.add(newMarker);
});

This teaches:
State management
Map interaction
Layer updating

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

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<MapPageState> mapKey = GlobalKey<MapPageState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Map Practice')),
      body: Column(
        children: [Expanded(child: MapPage(key: mapKey))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => mapKey.currentState?.clearMarkers(),
        child: const Icon(Icons.delete),
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final List<Marker> markers = [];

  void clearMarkers() {
    setState(() {
      print("deleting");
      markers.clear();
    });
  }

  void addMarkers(LatLng latlng) {
    setState(() {
      print("Tapped at $latlng");
      markers.add(
        Marker(
          point: latlng,
          child: Icon(Icons.location_pin, color: Colors.blue, size: 30),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final LatLng point = LatLng(7.0639, 125.6083);

    return FlutterMap(
      options: MapOptions(
        initialCenter: point,
        initialZoom: 15,
        onTap: (tapPosition, latlng) {
          addMarkers(latlng);
        },
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        MarkerLayer(markers: markers),
      ],
    );
  }
}
