import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/company_nav_widget.dart';
import '/components/lil_explanation/lil_explanation_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'stats_widget.dart' show StatsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class StatsModel extends FlutterFlowModel<StatsWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  CompanyStatsStruct? stats;
  void updateStatsStruct(Function(CompanyStatsStruct) updateFn) =>
      updateFn(stats ??= CompanyStatsStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (companyStats)] action in Icon widget.
  ApiCallResponse? apiStatsResult;
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
    simpleHeaderModel.dispose();
    companyNavModel.dispose();
  }
}
