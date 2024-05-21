import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'account_type_widget.dart' show AccountTypeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountTypeModel extends FlutterFlowModel<AccountTypeWidget> {
  ///  Local state fields for this page.

  int selected = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsersRow? userInfo;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ClientsRow? client;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CompaniesRow? business;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
