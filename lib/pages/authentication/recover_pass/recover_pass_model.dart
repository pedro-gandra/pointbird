import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/reset_pass/reset_pass_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'recover_pass_widget.dart' show RecoverPassWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecoverPassModel extends FlutterFlowModel<RecoverPassWidget> {
  ///  Local state fields for this page.

  bool noEmail = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Stores action output result for [Custom Action - isEmailRegistered] action in Button widget.
  bool? isEmail;
  // Stores action output result for [Custom Action - getUserType] action in Button widget.
  UsersRow? userInfo;
  // Stores action output result for [Custom Action - getUserId] action in Button widget.
  int? userId;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
