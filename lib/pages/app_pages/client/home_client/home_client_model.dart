import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/client_nav_widget.dart';
import '/components/plans/plans_widget.dart';
import '/components/points_received/points_received_widget.dart';
import '/components/upgrade_error/upgrade_error_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'home_client_widget.dart' show HomeClientWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeClientModel extends FlutterFlowModel<HomeClientWidget> {
  ///  Local state fields for this page.

  String errorMessageInsert = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  Completer<List<ViewHomeClient2Row>>? requestCompleter2;
  Completer<List<ViewHomeClientRow>>? requestCompleter1;
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  String? _codeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - followCompany] action in follow widget.
  ActionResponseStruct? followResult;
  // Stores action output result for [Backend Call - Query Rows] action in follow widget.
  List<ViewClientsPlansRow>? planInfo;
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  @override
  void initState(BuildContext context) {
    codeTextControllerValidator = _codeTextControllerValidator;
    clientNavModel = createModel(context, () => ClientNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    codeFocusNode?.dispose();
    codeTextController?.dispose();

    clientNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
