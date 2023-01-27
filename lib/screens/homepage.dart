import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  CameraPosition _initialPosition =
      CameraPosition(target: LatLng(26.8206, 30.8025));
// Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? _controller;

  void _onMapCreated(GoogleMapController? controller) {
    // _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps in Flutter'),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: _initialPosition,
            ),
          ],
        ));
  }
}
