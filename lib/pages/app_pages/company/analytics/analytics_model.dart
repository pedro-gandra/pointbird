import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/company_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'analytics_widget.dart' show AnalyticsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnalyticsModel extends FlutterFlowModel<AnalyticsWidget> {
  ///  Local state fields for this page.

  CompanyStatsStruct? stats;
  void updateStatsStruct(Function(CompanyStatsStruct) updateFn) =>
      updateFn(stats ??= CompanyStatsStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (companyStats)] action in analytics widget.
  ApiCallResponse? apiStatsResult;
  // Stores action output result for [Backend Call - API (companyStats)] action in Column widget.
  ApiCallResponse? apiStatsResultReload;
  // Model for companyNav component.
  late CompanyNavModel companyNavModel;

  @override
  void initState(BuildContext context) {
    companyNavModel = createModel(context, () => CompanyNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    companyNavModel.dispose();
  }
}
