import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/comment_section_component/comment_section_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_component_model.dart';
export 'post_component_model.dart';

class PostComponentWidget extends StatefulWidget {
  const PostComponentWidget({
    super.key,
    int? postId,
  }) : this.postId = postId ?? 0;

  final int postId;

  @override
  State<PostComponentWidget> createState() => _PostComponentWidgetState();
}

class _PostComponentWidgetState extends State<PostComponentWidget> {
  late PostComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.likedRow = await PostLikeRelationTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'post_id',
              widget!.postId,
            )
            .eqOrNull(
              'liked_by',
              currentUserUid,
            ),
      );
      if (_model.likedRow != null && (_model.likedRow)!.isNotEmpty) {
        _model.isLiked = true;
        safeSetState(() {});
      } else {
        _model.isLiked = false;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FullPostsViewRow>>(
      future: (_model.requestCompleter ??= Completer<List<FullPostsViewRow>>()
            ..complete(FullPostsViewTable().querySingleRow(
              queryFn: (q) => q.eqOrNull(
                'id',
                widget!.postId,
              ),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<FullPostsViewRow> postContainerFullPostsViewRowList =
            snapshot.data!;

        final postContainerFullPostsViewRow =
            postContainerFullPostsViewRowList.isNotEmpty
                ? postContainerFullPostsViewRowList.first
                : null;

        return Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          OtherUserPageWidget.routeName,
                          queryParameters: {
                            'userId': serializeParam(
                              postContainerFullPostsViewRow?.postedBy,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            postContainerFullPostsViewRow?.profilePic,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bizz-buzz-c77t4u/assets/xp8oofq82o3a/default.png',
                          ),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/error_image.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            postContainerFullPostsViewRow?.username,
                            'null',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  valueOrDefault<String>(
                    postContainerFullPostsViewRow?.imagePath,
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bizz-buzz-c77t4u/assets/xp8oofq82o3a/default.png',
                  ),
                  height: 400.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ToggleIcon(
                      onPressed: () async {
                        safeSetState(() => _model.isLiked = !_model.isLiked);
                        if (_model.isLiked) {
                          await PostLikeRelationTable().insert({
                            'post_id': widget!.postId,
                            'liked_by': currentUserUid,
                          });
                        } else {
                          await PostLikeRelationTable().delete(
                            matchingRows: (rows) => rows
                                .eqOrNull(
                                  'post_id',
                                  widget!.postId,
                                )
                                .eqOrNull(
                                  'liked_by',
                                  currentUserUid,
                                ),
                          );
                        }

                        safeSetState(() => _model.requestCompleter = null);
                        await _model.waitForRequestCompleted();
                      },
                      value: _model.isLiked,
                      onIcon: Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFFDFB629),
                        size: 28.0,
                      ),
                      offIcon: Icon(
                        Icons.favorite_border_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 28.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: CommentSectionComponentWidget(
                                    postId: widget!.postId,
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: FaIcon(
                            FontAwesomeIcons.solidComment,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '${postContainerFullPostsViewRow?.likeCount?.toString()} likes',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '@${postContainerFullPostsViewRow?.username}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        TextSpan(
                          text: '   ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: postContainerFullPostsViewRow!.description!,
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.nunito(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
