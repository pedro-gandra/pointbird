import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'send_message_widget.dart' show SendMessageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SendMessageModel extends FlutterFlowModel<SendMessageWidget> {
  ///  Local state fields for this page.

  bool success = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for subject widget.
  String? subjectValue;
  FormFieldController<String>? subjectValueController;
  // State field(s) for message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;
  String? _messageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h1j2rafg' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 500) {
      return 'Maximum 500 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    messageTextControllerValidator = _messageTextControllerValidator;
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messageFocusNode?.dispose();
    messageTextController?.dispose();

    simpleHeaderModel.dispose();
  }
}
