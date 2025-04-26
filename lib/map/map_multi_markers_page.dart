import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMultiMarkersPage extends StatefulWidget {
  const MapMultiMarkersPage({super.key});

  @override
  State<MapMultiMarkersPage> createState() => _MapMultiMarkersPageState();
}

class _MapMultiMarkersPageState extends State<MapMultiMarkersPage> {
  Set<Marker> _multiMarkers() {
    Set<Marker> markers = {};
    markers.add(
      Marker(
        markerId: MarkerId("Hotel Mercure Padang"),
        position: LatLng(-0.9342631913070865, 100.35385787471103),
        infoWindow: InfoWindow(
          title: 'Hotel Mercure Padang',
          snippet: 'Mercure',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Santika Premiere Hotel Padang"),
        position: LatLng(-0.9405214199270231, 100.3580423551323),
        infoWindow: InfoWindow(
          title: 'Santika Premiere Hotel Padang',
          snippet: 'Santika Premiere',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("favehotel Olo Padang"),
        position: LatLng(-0.9438894207790651, 100.35467389898369),
        infoWindow: InfoWindow(
          title: 'favehotel Olo Padang',
          snippet: 'favehotel Olo',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Hotel ibis Padang"),
        position: LatLng(-0.9282041320776254, 100.36314316015735),
        infoWindow: InfoWindow(
          title: 'Hotel ibis Padang',
          snippet: 'Hotel ibis',
        ),
      ),
    );

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multi Markers")),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-0.9449125523525431, 100.37081068169533),
          zoom: 13,
        ),
        markers: _multiMarkers(),
      ),
    );
  }
}
