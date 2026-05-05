import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'community_page_widget.dart' show CommunityPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommunityPageModel extends FlutterFlowModel<CommunityPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> nearbyUsersList = [];
  void addToNearbyUsersList(dynamic item) => nearbyUsersList.add(item);
  void removeFromNearbyUsersList(dynamic item) => nearbyUsersList.remove(item);
  void removeAtIndexFromNearbyUsersList(int index) =>
      nearbyUsersList.removeAt(index);
  void insertAtIndexInNearbyUsersList(int index, dynamic item) =>
      nearbyUsersList.insert(index, item);
  void updateNearbyUsersListAtIndex(int index, Function(dynamic) updateFn) =>
      nearbyUsersList[index] = updateFn(nearbyUsersList[index]);

  LatLng? userLocation;

  double? userLat;

  double? userLng;

  List<LatLng> otherLocations = [];
  void addToOtherLocations(LatLng item) => otherLocations.add(item);
  void removeFromOtherLocations(LatLng item) => otherLocations.remove(item);
  void removeAtIndexFromOtherLocations(int index) =>
      otherLocations.removeAt(index);
  void insertAtIndexInOtherLocations(int index, LatLng item) =>
      otherLocations.insert(index, item);
  void updateOtherLocationsAtIndex(int index, Function(LatLng) updateFn) =>
      otherLocations[index] = updateFn(otherLocations[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
