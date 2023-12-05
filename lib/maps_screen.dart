import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<LatLng> points = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
            initialZoom: 13,
            initialCenter: LatLng(2.447516035983053, -76.602781008249)),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(markers: [
            Marker(
                point: const LatLng(2.447516035983053, -76.602781008249),
                width: 80,
                height: 80,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                  color: Colors.cyanAccent,
                  iconSize: 45,
                )),
            Marker(
                point: const LatLng(2.441274197272225, -76.60607391885165),
                width: 80,
                height: 80,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                  color: const Color.fromARGB(255, 24, 255, 70),
                  iconSize: 45,
                ))
          ]),
          PolylineLayer(polylines: [
            Polyline(points: points, color: Colors.black87, strokeWidth: 5),
          ])
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
