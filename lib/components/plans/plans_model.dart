import '/components/purchase_confirm/purchase_confirm_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'plans_widget.dart' show PlansWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlansModel extends FlutterFlowModel<PlansWidget> {
  ///  Local state fields for this component.

  bool annual = true;

  int? index;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Custom Action - makePurchase] action in Button widget.
  bool? crowY;
  // Stores action output result for [Custom Action - makePurchase] action in Button widget.
  bool? crowM;
  // Stores action output result for [Custom Action - makePurchase] action in Button widget.
  bool? eagleY;
  // Stores action output result for [Custom Action - makePurchase] action in Button widget.
  bool? eagleM;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
