// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:io';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:google_maps_flutter_platform_interface/src/types/location.dart'
    as latLong;

var parent_id;
const kGoogleApiKey = "AIzaSyCu9sBYR1kAS-YimdB5itOC4tEzQtEI-m4";

//old key android
//AIzaSyDNfhO9boq1lx1tcKG9ETDXAMP68sl9pTU
///
//new key android
//AIzaSyCu9sBYR1kAS-YimdB5itOC4tEzQtEI-m4
///
//wed site key
//AIzaSyBPcI2TAgjELMjPu4bQTIcpRdRWonCvIXs

class Googlemap extends StatefulWidget {
  const Googlemap({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  _google_mapState createState() => _google_mapState();
}

class _google_mapState extends State<Googlemap> {
  GoogleMapController? mapController;
  // final Set<Marker> markers = Set();

  // String? latitude;
  // String? longitude;
  // bool? loading;
  // BitmapDescriptor? customIcon;
  //List bp_crop_name = [];
  // List bp_lattitut = [];
  // List bp_longittut = [];
  // List bp_address = [];
  // var response = [];

  @override
  void initState() {
    print("check data");

    // loading = false;
    super.initState();
  }

  MapType _currentMapType = MapType.satellite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("School Map"),
        backgroundColor: const Color(0xffB70021),
      ),
      body: Stack(
        children: [
          GoogleMap(
            //Map widget from google_maps_flutter package

            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: latLong.LatLng(0.00, 0.00), //initial position
              zoom: 12.1, //initial zoom level
            ),

            //markers to show on map
            mapType: _currentMapType,
            //map type

            onMapCreated: (GoogleMapController controller) {
              // _controller.complete(controller);
            },
          ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(height: MediaQuery.of(context).size.height / 15),
          //       Padding(
          //         padding: const EdgeInsets.only(right: 5),
          //         child: FloatingActionButton(
          //           onPressed: _onMapTypeButtonPressed,
          //           materialTapTargetSize: MaterialTapTargetSize.padded,
          //           backgroundColor: Colors.green,
          //           child: const Icon(Icons.map, size: 36.0),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
}
