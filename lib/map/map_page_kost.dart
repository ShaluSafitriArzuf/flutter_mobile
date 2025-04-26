import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPageKost extends StatefulWidget {
  const MapPageKost({super.key});

  @override
  State<MapPageKost> createState() => _MapPageState();
}

class _MapPageState extends State<MapPageKost> {
  Set<Marker> marker = {};
  void _singleMarker(){
    marker.add(
      Marker(
        markerId:MarkerId ("Kost Pasar Ambacang"),
        position: LatLng(-0.9328019345632845, 100.4040980233149),
        infoWindow: InfoWindow(title: 'Jl. Tunggang No.22, Ps. Ambacang, Kec. Kuranji, Kota Padang, Sumatera Barat 25176, Sumbar', snippet: 'Padang'),
      ),
    );
  }
  @override
  void initState(){
    super.initState();
    _singleMarker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Map Flutter")),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-0.9328019345632845, 100.4040980233149),
          zoom: 16,
        ),
        markers: marker,
      ),
    );
  }
}
