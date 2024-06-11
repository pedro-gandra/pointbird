import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/after_ad/after_ad_widget.dart';
import '/components/client_nav_widget.dart';
import '/components/points_received/points_received_widget.dart';
import '/components/simple_header_widget.dart';
import '/components/upgrade_error/upgrade_error_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'explore_company_widget.dart' show ExploreCompanyWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ExploreCompanyModel extends FlutterFlowModel<ExploreCompanyWidget> {
  ///  Local state fields for this page.

  String? checkInMessage;

  int tabSelected = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - followCompany] action in Button widget.
  ActionResponseStruct? followResult;
  // Stores action output result for [Custom Action - preAdFunction] action in Button widget.
  int? preAd;
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Button widget.
  bool? interstitialAdSuccess;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewClientsPlansRow>? planInfo;
  // Model for simpleHeader component.
  late SimpleHeaderModel simpleHeaderModel;
  // Model for clientNav component.
  late ClientNavModel clientNavModel;

  /// Query cache managers for this widget.

  final _offersManager = FutureRequestManager<List<PostsRow>>();
  Future<List<PostsRow>> offers({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<PostsRow>> Function() requestFn,
  }) =>
      _offersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOffersCache() => _offersManager.clear();
  void clearOffersCacheKey(String? uniqueKey) =>
      _offersManager.clearRequest(uniqueKey);

  final _socialManager = FutureRequestManager<List<PostsRow>>();
  Future<List<PostsRow>> social({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<PostsRow>> Function() requestFn,
  }) =>
      _socialManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSocialCache() => _socialManager.clear();
  void clearSocialCacheKey(String? uniqueKey) =>
      _socialManager.clearRequest(uniqueKey);

  final _pollsManager = FutureRequestManager<List<ViewPostsPollRow>>();
  Future<List<ViewPostsPollRow>> polls({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ViewPostsPollRow>> Function() requestFn,
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
}
