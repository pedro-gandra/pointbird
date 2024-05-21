import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/coupon_gen/coupon_gen_widget.dart';
import '/components/simple_header_widget.dart';
import '/components/upgrade_error/upgrade_error_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'exchange_points_widget.dart' show ExchangePointsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ExchangePointsModel extends FlutterFlowModel<ExchangePointsWidget> {
  ///  Local state fields for this page.

  bool enoughPoints = false;

  double minimum = 0.0;

  double couponValue = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for pointAmount widget.
  FocusNode? pointAmountFocusNode;
  TextEditingController? pointAmountTextController;
  String? Function(BuildContext, String?)? pointAmountTextControllerValidator;
  String? _pointAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - checkMinimum] action in pointAmount widget.
  double? min;
  // Stores action output result for [Custom Action - generateCoupon] action in Button widget.
  ActionResponseStruct? genResult;
  Completer<List<ViewHomeClientRow>>? requestCompleter;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    pointAmountTextControllerValidator = _pointAmountTextControllerValidator;
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pointAmountFocusNode?.dispose();
    pointAmountTextController?.dispose();

    simpleHeaderModel.dispose();
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
