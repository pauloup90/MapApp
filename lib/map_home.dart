import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState () => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Marker> markers = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(32.037933, 31.381523),
    ),
  ];
  GoogleMapController? gps;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Maps Sample App',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: const Color(
          0xff355E3B,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(

            markers: markers.toSet(),
            onTap: (LatLng latLng) {
              markers.add(Marker(
                  markerId: const MarkerId('1'),
                  position: LatLng(latLng.latitude, latLng.longitude)));
              setState(() {});
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: const CameraPosition(
              bearing: 220.8334901395799,
              target: LatLng(31.037933, 31.381523),
              tilt: 59.440717697143555,
              zoom: 12.0,
            ),
            onMapCreated: (googlemappcontroller) {
              gps = googlemappcontroller;
            },
          ),
        ],
      ),
    );
  }
}
