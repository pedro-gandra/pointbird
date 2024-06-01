import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/client_nav_widget.dart';
import '/components/plans/plans_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_client_widget.dart' show ProfileClientWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileClientModel extends FlutterFlowModel<ProfileClientWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  @override
  void initState(BuildContext context) {
    clientNavModel = createModel(context, () => ClientNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    clientNavModel.dispose();
  }
}
