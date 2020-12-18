import 'package:aphive/utils/location_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum MapEvent {
  updateLocation
}

class MapBloc extends Bloc<MapEvent, Map<String, dynamic>> {

  /// Map State Keys
  static const currentPosition = 'currentPosition';

  MapBloc() : super({
    'currentPosition': LatLng(0.0, 0.0),
  });

  @override
  Stream<Map<String, dynamic>> mapEventToState(MapEvent event) async* {
    switch (event) {
      case MapEvent.updateLocation:
        var newState = Map<String, dynamic>.from(state);
        newState[currentPosition] = await LocationUtils.getCurrentLatLng();
        yield newState;
        break;
    }
  }
}