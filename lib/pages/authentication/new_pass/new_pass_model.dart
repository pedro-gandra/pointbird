import '/auth/supabase_auth/auth_util.dart';
import '/components/reset_pass2/reset_pass2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'new_pass_widget.dart' show NewPassWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewPassModel extends FlutterFlowModel<NewPassWidget> {
  ///  Local state fields for this page.

  bool isPassMiss = false;

  bool isEmailRegistered = false;

  bool signUpRes = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  String? _passTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Password must be 6 or more characters';
    }

    return null;
  }

  // State field(s) for confirmPass widget.
  FocusNode? confirmPassFocusNode;
  TextEditingController? confirmPassTextController;
  late bool confirmPassVisibility;
  String? Function(BuildContext, String?)? confirmPassTextControllerValidator;
  String? _confirmPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Password must be 6 or more characters';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    passTextControllerValidator = _passTextControllerValidator;
    confirmPassVisibility = false;
    confirmPassTextControllerValidator = _confirmPassTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passFocusNode?.dispose();
    passTextController?.dispose();

    confirmPassFocusNode?.dispose();
    confirmPassTextController?.dispose();
  }
}
