import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/company_nav_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  Local state fields for this page.

  int noptions = 2;

  bool errorOptions = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for accountType widget.
  String? accountTypeValue;
  FormFieldController<String>? accountTypeValueController;
  // State field(s) for title widget.
  FocusNode? titleFocusNode1;
  TextEditingController? titleTextController1;
  String? Function(BuildContext, String?)? titleTextController1Validator;
  // State field(s) for desc widget.
  FocusNode? descFocusNode1;
  TextEditingController? descTextController1;
  String? Function(BuildContext, String?)? descTextController1Validator;
  // State field(s) for link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  String? _linkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'This must be a valid link';
    }
    return null;
  }

  // State field(s) for points widget.
  FocusNode? pointsFocusNode1;
  TextEditingController? pointsTextController1;
  String? Function(BuildContext, String?)? pointsTextController1Validator;
  String? _pointsTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return 'Can\'t be 0';
    }
    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for title widget.
  FocusNode? titleFocusNode2;
  TextEditingController? titleTextController2;
  String? Function(BuildContext, String?)? titleTextController2Validator;
  String? _titleTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for desc widget.
  FocusNode? descFocusNode2;
  TextEditingController? descTextController2;
  String? Function(BuildContext, String?)? descTextController2Validator;
  // State field(s) for points widget.
  FocusNode? pointsFocusNode2;
  TextEditingController? pointsTextController2;
  String? Function(BuildContext, String?)? pointsTextController2Validator;
  String? _pointsTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?!0+\$).*').hasMatch(val)) {
      return 'Can\'t be 0';
    }
    return null;
  }

  // State field(s) for op1 widget.
  FocusNode? op1FocusNode;
  TextEditingController? op1TextController;
  String? Function(BuildContext, String?)? op1TextControllerValidator;
  String? _op1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for op2 widget.
  FocusNode? op2FocusNode;
  TextEditingController? op2TextController;
  String? Function(BuildContext, String?)? op2TextControllerValidator;
  String? _op2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for op3 widget.
  FocusNode? op3FocusNode;
  TextEditingController? op3TextController;
  String? Function(BuildContext, String?)? op3TextControllerValidator;
  // State field(s) for op4 widget.
  FocusNode? op4FocusNode;
  TextEditingController? op4TextController;
  String? Function(BuildContext, String?)? op4TextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PostsRow? postInfo;
  // Model for companyNav component.
  late CompanyNavModel companyNavModel;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    linkTextControllerValidator = _linkTextControllerValidator;
    pointsTextController1Validator = _pointsTextController1Validator;
    titleTextController2Validator = _titleTextController2Validator;
    pointsTextController2Validator = _pointsTextController2Validator;
    op1TextControllerValidator = _op1TextControllerValidator;
    op2TextControllerValidator = _op2TextControllerValidator;
    companyNavModel = createModel(context, () => CompanyNavModel());
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleFocusNode1?.dispose();
    titleTextController1?.dispose();

    descFocusNode1?.dispose();
    descTextController1?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();

    pointsFocusNode1?.dispose();
    pointsTextController1?.dispose();

    titleFocusNode2?.dispose();
    titleTextController2?.dispose();

    descFocusNode2?.dispose();
    descTextController2?.dispose();

    pointsFocusNode2?.dispose();
    pointsTextController2?.dispose();

    op1FocusNode?.dispose();
    op1TextController?.dispose();

    op2FocusNode?.dispose();
    op2TextController?.dispose();

    op3FocusNode?.dispose();
    op3TextController?.dispose();

    op4FocusNode?.dispose();
    op4TextController?.dispose();

    companyNavModel.dispose();
    simpleHeaderModel.dispose();
  }
}
