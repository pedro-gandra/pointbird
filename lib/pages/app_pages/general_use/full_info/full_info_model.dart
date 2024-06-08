import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'full_info_widget.dart' show FullInfoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FullInfoModel extends FlutterFlowModel<FullInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;

  @override
  void initState(BuildContext context) {
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    simpleHeaderModel.dispose();
  }
}
