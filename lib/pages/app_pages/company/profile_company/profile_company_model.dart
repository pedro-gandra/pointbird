import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/company_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_company_widget.dart' show ProfileCompanyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileCompanyModel extends FlutterFlowModel<ProfileCompanyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
