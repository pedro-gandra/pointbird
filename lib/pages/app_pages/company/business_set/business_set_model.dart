import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/lil_explanation/lil_explanation_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'business_set_widget.dart' show BusinessSetWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BusinessSetModel extends FlutterFlowModel<BusinessSetWidget> {
  ///  Local state fields for this page.

  String? resMessage;

  Color? resColor;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for initial widget.
  FocusNode? initialFocusNode;
  TextEditingController? initialTextController;
  String? Function(BuildContext, String?)? initialTextControllerValidator;
  String? _initialTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return 'Can\'t be 0';
    }
    return null;
  }

  // State field(s) for d1 widget.
  FocusNode? d1FocusNode;
  TextEditingController? d1TextController;
  String? Function(BuildContext, String?)? d1TextControllerValidator;
  String? _d1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return ' > 0';
    }
    return null;
  }

  // State field(s) for d2 widget.
  FocusNode? d2FocusNode;
  TextEditingController? d2TextController;
  String? Function(BuildContext, String?)? d2TextControllerValidator;
  String? _d2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d3 widget.
  FocusNode? d3FocusNode;
  TextEditingController? d3TextController;
  String? Function(BuildContext, String?)? d3TextControllerValidator;
  String? _d3TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d4 widget.
  FocusNode? d4FocusNode;
  TextEditingController? d4TextController;
  String? Function(BuildContext, String?)? d4TextControllerValidator;
  String? _d4TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d5 widget.
  FocusNode? d5FocusNode;
  TextEditingController? d5TextController;
  String? Function(BuildContext, String?)? d5TextControllerValidator;
  String? _d5TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d6 widget.
  FocusNode? d6FocusNode;
  TextEditingController? d6TextController;
  String? Function(BuildContext, String?)? d6TextControllerValidator;
  String? _d6TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d7 widget.
  FocusNode? d7FocusNode;
  TextEditingController? d7TextController;
  String? Function(BuildContext, String?)? d7TextControllerValidator;
  String? _d7TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d8 widget.
  FocusNode? d8FocusNode;
  TextEditingController? d8TextController;
  String? Function(BuildContext, String?)? d8TextControllerValidator;
  String? _d8TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d9 widget.
  FocusNode? d9FocusNode;
  TextEditingController? d9TextController;
  String? Function(BuildContext, String?)? d9TextControllerValidator;
  String? _d9TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for d10 widget.
  FocusNode? d10FocusNode;
  TextEditingController? d10TextController;
  String? Function(BuildContext, String?)? d10TextControllerValidator;
  String? _d10TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return '> 0';
    }
    return null;
  }

  // State field(s) for discount widget.
  FocusNode? discountFocusNode;
  TextEditingController? discountTextController;
  String? Function(BuildContext, String?)? discountTextControllerValidator;
  String? _discountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return ' Can\'t be 0';
    }
    return null;
  }

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  String? _codeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Minimum is 3 characters';
    }

    if (!RegExp('^[a-zA-Z0-9._]+\$').hasMatch(val)) {
      return 'Use only letters, numbers, \'.\' and \'_\'';
    }
    return null;
  }

  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - configPoints] action in Button widget.
  ActionResponseStruct? configResponse;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    initialTextControllerValidator = _initialTextControllerValidator;
    d1TextControllerValidator = _d1TextControllerValidator;
    d2TextControllerValidator = _d2TextControllerValidator;
    d3TextControllerValidator = _d3TextControllerValidator;
    d4TextControllerValidator = _d4TextControllerValidator;
    d5TextControllerValidator = _d5TextControllerValidator;
    d6TextControllerValidator = _d6TextControllerValidator;
    d7TextControllerValidator = _d7TextControllerValidator;
    d8TextControllerValidator = _d8TextControllerValidator;
    d9TextControllerValidator = _d9TextControllerValidator;
    d10TextControllerValidator = _d10TextControllerValidator;
    discountTextControllerValidator = _discountTextControllerValidator;
    codeTextControllerValidator = _codeTextControllerValidator;
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    initialFocusNode?.dispose();
    initialTextController?.dispose();

    d1FocusNode?.dispose();
    d1TextController?.dispose();

    d2FocusNode?.dispose();
    d2TextController?.dispose();

    d3FocusNode?.dispose();
    d3TextController?.dispose();

    d4FocusNode?.dispose();
    d4TextController?.dispose();

    d5FocusNode?.dispose();
    d5TextController?.dispose();

    d6FocusNode?.dispose();
    d6TextController?.dispose();

    d7FocusNode?.dispose();
    d7TextController?.dispose();

    d8FocusNode?.dispose();
    d8TextController?.dispose();

    d9FocusNode?.dispose();
    d9TextController?.dispose();

    d10FocusNode?.dispose();
    d10TextController?.dispose();

    discountFocusNode?.dispose();
    discountTextController?.dispose();

    codeFocusNode?.dispose();
    codeTextController?.dispose();

    simpleHeaderModel.dispose();
  }
}
