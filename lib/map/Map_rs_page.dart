import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapRsPage extends StatefulWidget {
  const MapRsPage({super.key});

  @override
  State<MapRsPage> createState() => _MapRsPageState();
}

class _MapRsPageState extends State<MapRsPage> {
  Set<Marker> _multiMarkers() {
    Set<Marker> markers = {};
    markers.add(
      Marker(
        markerId: MarkerId("RSKB Kartika Docta"),
        position: LatLng(-0.9212013751339794, 100.36589880173823),
        infoWindow: InfoWindow(
          title: 'RSKB Kartika Docta',
          snippet: 'RSKB',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RS. Bhayangkara Padang"),
        position: LatLng(-0.9301266016280063, 100.36624212447018),
        infoWindow: InfoWindow(
          title: 'RS. Bhayangkara Padang',
          snippet: 'RS. Bhayangkara',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Yos Sudarso"),
        position: LatLng(-0.9330444592502967, 100.36332388124875),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Yos Sudarso',
          snippet: 'Yos Sudarso',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RSUP Dr. M. Djamil Padang"),
        position: LatLng(-0.9388801672271698, 100.36641378583614),
        infoWindow: InfoWindow(
          title: 'RSUP Dr. M. Djamil Padang',
          snippet: 'Djamil Padang',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RSU BUNDA BMC PADANG"),
        position: LatLng(-0.9483202624225825, 100.36692876993403),
        infoWindow: InfoWindow(
          title: 'RSU BUNDA BMC PADANG',
          snippet: 'RSU BUNDA',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RS NAILI DBS"),
        position: LatLng(-0.9426562083783894, 100.36023397666133),
        infoWindow: InfoWindow(
          title: 'RS NAILI DBS',
          snippet: 'RS NAILI DBS',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Ibu Dan Anak Siti Hawa"),
        position: LatLng(-0.9452307795439255, 100.37722845189207),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Ibu Dan Anak Siti Hawa',
          snippet: 'Rumah Sakit Ibu Dan Anak',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Semen Padang Hospital"),
        position: LatLng(-0.9378503371137995, 100.39868612263797),
        infoWindow: InfoWindow(
          title: 'Semen Padang Hospital',
          snippet: 'Semen Padang Hospital',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RSIA CICIK"),
        position: LatLng(-0.9474620730102886, 100.38581152019043),
        infoWindow: InfoWindow(
          title: 'RSIA CICIK',
          snippet: 'RSIA CICIK',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Ibu & Anak Mutiara Bunda"),
        position: LatLng(-0.9146790800879414, 100.35044927770257),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Ibu & Anak Mutiara Bunda',
          snippet: 'Rumah Sakit Ibu & Anak Mutiara Bunda',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Umum Aisyiyah"),
        position: LatLng(-0.9442009513664699, 100.36383886483029),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Umum Aisyiyah',
          snippet: 'Rumah Sakit Umum Aisyiyah',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Universitas Andalas"),
        position: LatLng(-0.9160521956360645, 100.45653600470466),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Universitas Andalas',
          snippet: 'Rumah Sakit Universitas Andalas',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Umum Daerah dr. Rasidin"),
        position: LatLng(-0.8774331175657292, 100.39628286517328),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Umum Daerah dr. Rasidin',
          snippet: 'Rumah Sakit Umum Daerah dr. Rasidin',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("Rumah Sakit Islam Siti Rahmah"),
        position: LatLng(-0.8686794034966447, 100.38821478046745),
        infoWindow: InfoWindow(
          title: 'Rumah Sakit Islam Siti Rahmah',
          snippet: 'Rumah Sakit Islam Siti Rahmah',
        ),
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId("RSKM Padang Eye Center"),
        position: LatLng(-0.9421639196689844, 100.35446404949357),
        infoWindow: InfoWindow(
          title: 'RSKM Padang Eye Center',
          snippet: 'RSKM Padang Eye Center',
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
          target: LatLng(-0.9404475376651398, 100.38107156342672),
          zoom: 13,
        ),
        markers: _multiMarkers(),
      ),
    );
  }
}
