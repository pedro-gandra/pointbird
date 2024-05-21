import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'delete_acc_widget.dart' show DeleteAccWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteAccModel extends FlutterFlowModel<DeleteAccWidget> {
  ///  Local state fields for this component.

  String? messageAction;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - deleteAccount] action in Text widget.
  bool? deletion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
