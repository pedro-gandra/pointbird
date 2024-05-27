import '/backend/supabase/supabase.dart';
import '/components/company_nav_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notifications_company_widget.dart' show NotificationsCompanyWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsCompanyModel
    extends FlutterFlowModel<NotificationsCompanyWidget> {
  ///  Local state fields for this page.

  int noptions = 2;

  bool errorOptions = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for companyNav component.
  late CompanyNavModel companyNavModel;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    companyNavModel = createModel(context, () => CompanyNavModel());
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    companyNavModel.dispose();
    simpleHeaderModel.dispose();
  }
}
