import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/checkin_modal/checkin_modal_widget.dart';
import '/components/client_nav_widget.dart';
import '/components/points_received/points_received_widget.dart';
import '/components/review/review_widget.dart';
import '/components/simple_header_widget.dart';
import '/components/unfollow/unfollow_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'company_view_widget.dart' show CompanyViewWidget;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class CompanyViewModel extends FlutterFlowModel<CompanyViewWidget> {
  ///  Local state fields for this page.

  bool unfollowWidget = false;

  String? checkInMessage;

  int tabSelected = 1;

  bool isClick = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in companyView widget.
  List<ClientCompaniesRow>? ccInfo;
  // Stores action output result for [Backend Call - Query Rows] action in companyView widget.
  List<ViewClientsPlansRow>? planInfo;
  Completer<List<ViewCompanyViewRow>>? requestCompleter4;
  // Stores action output result for [Custom Action - doCheckin] action in Button widget.
  ClientCompaniesRow? ccUpdated;
  // Stores action output result for [Custom Action - postInteraction] action in Image widget.
  int? actionPointsCopy;
  bool requestCompleted3 = false;
  String? requestLastUniqueKey3;
  // Stores action output result for [Custom Action - votePoll] action in votebox widget.
  int? pointsPoll;
  bool requestCompleted2 = false;
  String? requestLastUniqueKey2;
  // Stores action output result for [Custom Action - postInteraction] action in Image widget.
  int? actionPointsSocial;
  bool requestCompleted1 = false;
  String? requestLastUniqueKey1;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  /// Query cache managers for this widget.

  final _offersManager = FutureRequestManager<List<ViewPostsViewRow>>();
  Future<List<ViewPostsViewRow>> offers({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ViewPostsViewRow>> Function() requestFn,
  }) =>
      _offersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOffersCache() => _offersManager.clear();
  void clearOffersCacheKey(String? uniqueKey) =>
      _offersManager.clearRequest(uniqueKey);

  final _socialManager = FutureRequestManager<List<ViewPostsViewRow>>();
  Future<List<ViewPostsViewRow>> social({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ViewPostsViewRow>> Function() requestFn,
  }) =>
      _socialManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSocialCache() => _socialManager.clear();
  void clearSocialCacheKey(String? uniqueKey) =>
      _socialManager.clearRequest(uniqueKey);

  final _pollsManager = FutureRequestManager<List<ViewPostsPollClientRow>>();
  Future<List<ViewPostsPollClientRow>> polls({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ViewPostsPollClientRow>> Function() requestFn,
  }) =>
      _pollsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPollsCache() => _pollsManager.clear();
  void clearPollsCacheKey(String? uniqueKey) =>
      _pollsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    simpleHeaderModel = createModel(context, () => SimpleHeaderModel());
    clientNavModel = createModel(context, () => ClientNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    simpleHeaderModel.dispose();
    clientNavModel.dispose();

    /// Dispose query cache managers for this widget.

    clearOffersCache();

    clearSocialCache();

    clearPollsCache();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted3;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
