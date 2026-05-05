import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.

  List<UserStruct> searchedUsers = [];
  void addToSearchedUsers(UserStruct item) => searchedUsers.add(item);
  void removeFromSearchedUsers(UserStruct item) => searchedUsers.remove(item);
  void removeAtIndexFromSearchedUsers(int index) =>
      searchedUsers.removeAt(index);
  void insertAtIndexInSearchedUsers(int index, UserStruct item) =>
      searchedUsers.insert(index, item);
  void updateSearchedUsersAtIndex(int index, Function(UserStruct) updateFn) =>
      searchedUsers[index] = updateFn(searchedUsers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in SearchPage widget.
  List<FullPostsViewRow>? results;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // Stores action output result for [Backend Call - API (SearchUsers)] action in TextField widget.
  ApiCallResponse? apiResult;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
