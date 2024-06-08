import '/backend/supabase/supabase.dart';
import '/components/client_nav_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'coupon_list_widget.dart' show CouponListWidget;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CouponListModel extends FlutterFlowModel<CouponListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<ViewCouponsClientRow>>? requestCompleter;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  @override
  void initState(BuildContext context) {
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
    clientNavModel = createModel(context, () => ClientNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    simpleHeaderModel.dispose();
    clientNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
