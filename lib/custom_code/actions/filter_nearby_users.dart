// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:math' as math;
import '/flutter_flow/lat_lng.dart';

Future<List<dynamic>> filterNearbyUsers(
  List<dynamic> userList, // Change this to your Row type
  LatLng currentUserLocation,
  double maxDistanceKm,
) async {
  List<dynamic> nearbyUsers = [];

  for (var user in userList) {
    // When using Rows, access properties directly like this:
    double userLat = user.lat?.toDouble() ?? 0.0;
    double userLng = user.lng?.toDouble() ?? 0.0;

    double distance = _calculateDistance(
      currentUserLocation.latitude,
      currentUserLocation.longitude,
      userLat,
      userLng,
    );

    if (distance <= maxDistanceKm) {
      nearbyUsers.add(user);
    }
  }
  return nearbyUsers;
}

double _calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double p = 0.017453292519943295;
  double a = 0.5 -
      math.cos((lat2 - lat1) * p) / 2 +
      math.cos(lat1 * p) *
          math.cos(lat2 * p) *
          (1 - math.cos((lon2 - lon1) * p)) /
          2;
  return 12742 * math.asin(math.sqrt(a));
}
