import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/delete_acc/delete_acc_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_client_widget.dart' show EditProfileClientWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileClientModel extends FlutterFlowModel<EditProfileClientWidget> {
  ///  Local state fields for this page.

  String? resMessage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6vl1x0jh' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'iqhnf64h' /* Minimum of 3 characters */,
      );
    }
    if (val.length > 30) {
      return FFLocalizations.of(context).getText(
        'atjdtdiy' /* Maximum of 30 characters */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    simpleHeaderModel.dispose();
  }
}
