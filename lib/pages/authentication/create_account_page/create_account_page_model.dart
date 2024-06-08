import '/backend/schema/structs/index.dart';
import '/components/verify_email/verify_email_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  Local state fields for this page.

  bool isPassMiss = false;

  bool isEmailRegistered = false;

  bool signUpRes = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3cgp62ih' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  String? _passTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's7r7nhyy' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '831u8bbq' /* Password must be 6 or more cha... */,
      );
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
      return FFLocalizations.of(context).getText(
        'p0uzb123' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'tkhsptup' /* Password must be 6 or more cha... */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - isEmailRegistered] action in Button widget.
  bool? isEmail;
  // Stores action output result for [Custom Action - signUp] action in Button widget.
  ActionResponseStruct? signUp;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    passVisibility = false;
    passTextControllerValidator = _passTextControllerValidator;
    confirmPassVisibility = false;
    confirmPassTextControllerValidator = _confirmPassTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    confirmPassFocusNode?.dispose();
    confirmPassTextController?.dispose();
  }
}
