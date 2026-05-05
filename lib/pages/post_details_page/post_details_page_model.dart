import '/backend/supabase/supabase.dart';
import '/components/post_component/post_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'post_details_page_widget.dart' show PostDetailsPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostDetailsPageModel extends FlutterFlowModel<PostDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PostComponent component.
  late PostComponentModel postComponentModel;

  @override
  void initState(BuildContext context) {
    postComponentModel = createModel(context, () => PostComponentModel());
  }

  @override
  void dispose() {
    postComponentModel.dispose();
  }
}
