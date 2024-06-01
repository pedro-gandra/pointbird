import '/backend/supabase/supabase.dart';
import '/components/company_nav_widget.dart';
import '/components/deactivate_coupon/deactivate_coupon_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'company_coupons_widget.dart' show CompanyCouponsWidget;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompanyCouponsModel extends FlutterFlowModel<CompanyCouponsWidget> {
  ///  Local state fields for this page.

  String? search;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<ViewCouponsCompanyRow>>? requestCompleter;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;
  // Model for companyNav component.
  late CompanyNavModel companyNavModel;

  @override
  void initState(BuildContext context) {
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
    companyNavModel = createModel(context, () => CompanyNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    simpleHeaderModel.dispose();
    companyNavModel.dispose();
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
