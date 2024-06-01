import '/backend/supabase/supabase.dart';
import '/components/client_nav_widget.dart';
import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'explore_widget.dart' show ExploreWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  Local state fields for this page.

  List<ViewExploreRow> listCompanies = [];
  void addToListCompanies(ViewExploreRow item) => listCompanies.add(item);
  void removeFromListCompanies(ViewExploreRow item) =>
      listCompanies.remove(item);
  void removeAtIndexFromListCompanies(int index) =>
      listCompanies.removeAt(index);
  void insertAtIndexInListCompanies(int index, ViewExploreRow item) =>
      listCompanies.insert(index, item);
  void updateListCompaniesAtIndex(
          int index, Function(ViewExploreRow) updateFn) =>
      listCompanies[index] = updateFn(listCompanies[index]);

  bool selectedOnce = false;

  bool category = true;

  bool searchOnce = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Custom Action - exploreCompanies] action in category widget.
  List<ViewExploreRow>? companiesInfo;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - exploreCompanies2] action in Icon widget.
  List<ViewExploreRow>? companiesInfo2;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  @override
  void initState(BuildContext context) {
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
    clientNavModel = createModel(context, () => ClientNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    simpleHeaderModel.dispose();
    clientNavModel.dispose();
  }
}
