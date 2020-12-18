import 'package:aphive/blocs/map_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {

  @override
  _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {

  final MapBloc _mapBloc = MapBloc();

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomControlsEnabled: false,
      compassEnabled: false,
      initialCameraPosition: CameraPosition(
        target: _mapBloc.state[MapBloc.currentPosition],
      ),
    );
  }

  @override
  void dispose() {
    _mapBloc.close();
    super.dispose();
  }
}