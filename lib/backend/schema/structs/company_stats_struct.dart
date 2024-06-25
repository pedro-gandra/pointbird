// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStatsStruct extends BaseStruct {
  CompanyStatsStruct({
    int? companyId,
    String? email,
    int? followers,
    int? activeCoupons,
    int? coupons,
    double? couponValue,
    double? couponPurchase,
    int? positivePoints,
    int? negativePoints,
    int? difExchanges,
    int? checkins,
    int? difCheckins,
    int? checkinsValue,
    int? postInteractions,
    int? difInteractions,
    int? postInteractionsValue,
    int? votes,
    int? difVotes,
    int? votesValue,
    int? posts,
    int? polls,
  })  : _companyId = companyId,
        _email = email,
        _followers = followers,
        _activeCoupons = activeCoupons,
        _coupons = coupons,
        _couponValue = couponValue,
        _couponPurchase = couponPurchase,
        _positivePoints = positivePoints,
        _negativePoints = negativePoints,
        _difExchanges = difExchanges,
        _checkins = checkins,
        _difCheckins = difCheckins,
        _checkinsValue = checkinsValue,
        _postInteractions = postInteractions,
        _difInteractions = difInteractions,
        _postInteractionsValue = postInteractionsValue,
        _votes = votes,
        _difVotes = difVotes,
        _votesValue = votesValue,
        _posts = posts,
        _polls = polls;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "followers" field.
  int? _followers;
  int get followers => _followers ?? 0;
  set followers(int? val) => _followers = val;

  void incrementFollowers(int amount) => followers = followers + amount;

  bool hasFollowers() => _followers != null;

  // "active_coupons" field.
  int? _activeCoupons;
  int get activeCoupons => _activeCoupons ?? 0;
  set activeCoupons(int? val) => _activeCoupons = val;

  void incrementActiveCoupons(int amount) =>
      activeCoupons = activeCoupons + amount;

  bool hasActiveCoupons() => _activeCoupons != null;

  // "coupons" field.
  int? _coupons;
  int get coupons => _coupons ?? 0;
  set coupons(int? val) => _coupons = val;

  void incrementCoupons(int amount) => coupons = coupons + amount;

  bool hasCoupons() => _coupons != null;

  // "coupon_value" field.
  double? _couponValue;
  double get couponValue => _couponValue ?? 0.0;
  set couponValue(double? val) => _couponValue = val;

  void incrementCouponValue(double amount) =>
      couponValue = couponValue + amount;

  bool hasCouponValue() => _couponValue != null;

  // "coupon_purchase" field.
  double? _couponPurchase;
  double get couponPurchase => _couponPurchase ?? 0.0;
  set couponPurchase(double? val) => _couponPurchase = val;

  void incrementCouponPurchase(double amount) =>
      couponPurchase = couponPurchase + amount;

  bool hasCouponPurchase() => _couponPurchase != null;

  // "positive_points" field.
  int? _positivePoints;
  int get positivePoints => _positivePoints ?? 0;
  set positivePoints(int? val) => _positivePoints = val;

  void incrementPositivePoints(int amount) =>
      positivePoints = positivePoints + amount;

  bool hasPositivePoints() => _positivePoints != null;

  // "negative_points" field.
  int? _negativePoints;
  int get negativePoints => _negativePoints ?? 0;
  set negativePoints(int? val) => _negativePoints = val;

  void incrementNegativePoints(int amount) =>
      negativePoints = negativePoints + amount;

  bool hasNegativePoints() => _negativePoints != null;

  // "dif_exchanges" field.
  int? _difExchanges;
  int get difExchanges => _difExchanges ?? 0;
  set difExchanges(int? val) => _difExchanges = val;

  void incrementDifExchanges(int amount) =>
      difExchanges = difExchanges + amount;

  bool hasDifExchanges() => _difExchanges != null;

  // "checkins" field.
  int? _checkins;
  int get checkins => _checkins ?? 0;
  set checkins(int? val) => _checkins = val;

  void incrementCheckins(int amount) => checkins = checkins + amount;

  bool hasCheckins() => _checkins != null;

  // "dif_checkins" field.
  int? _difCheckins;
  int get difCheckins => _difCheckins ?? 0;
  set difCheckins(int? val) => _difCheckins = val;

  void incrementDifCheckins(int amount) => difCheckins = difCheckins + amount;

  bool hasDifCheckins() => _difCheckins != null;

  // "checkins_value" field.
  int? _checkinsValue;
  int get checkinsValue => _checkinsValue ?? 0;
  set checkinsValue(int? val) => _checkinsValue = val;

  void incrementCheckinsValue(int amount) =>
      checkinsValue = checkinsValue + amount;

  bool hasCheckinsValue() => _checkinsValue != null;

  // "post_interactions" field.
  int? _postInteractions;
  int get postInteractions => _postInteractions ?? 0;
  set postInteractions(int? val) => _postInteractions = val;

  void incrementPostInteractions(int amount) =>
      postInteractions = postInteractions + amount;

  bool hasPostInteractions() => _postInteractions != null;

  // "dif_interactions" field.
  int? _difInteractions;
  int get difInteractions => _difInteractions ?? 0;
  set difInteractions(int? val) => _difInteractions = val;

  void incrementDifInteractions(int amount) =>
      difInteractions = difInteractions + amount;

  bool hasDifInteractions() => _difInteractions != null;

  // "post_interactions_value" field.
  int? _postInteractionsValue;
  int get postInteractionsValue => _postInteractionsValue ?? 0;
  set postInteractionsValue(int? val) => _postInteractionsValue = val;

  void incrementPostInteractionsValue(int amount) =>
      postInteractionsValue = postInteractionsValue + amount;

  bool hasPostInteractionsValue() => _postInteractionsValue != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  set votes(int? val) => _votes = val;

  void incrementVotes(int amount) => votes = votes + amount;

  bool hasVotes() => _votes != null;

  // "dif_votes" field.
  int? _difVotes;
  int get difVotes => _difVotes ?? 0;
  set difVotes(int? val) => _difVotes = val;

  void incrementDifVotes(int amount) => difVotes = difVotes + amount;

  bool hasDifVotes() => _difVotes != null;

  // "votes_value" field.
  int? _votesValue;
  int get votesValue => _votesValue ?? 0;
  set votesValue(int? val) => _votesValue = val;

  void incrementVotesValue(int amount) => votesValue = votesValue + amount;

  bool hasVotesValue() => _votesValue != null;

  // "posts" field.
  int? _posts;
  int get posts => _posts ?? 0;
  set posts(int? val) => _posts = val;

  void incrementPosts(int amount) => posts = posts + amount;

  bool hasPosts() => _posts != null;

  // "polls" field.
  int? _polls;
  int get polls => _polls ?? 0;
  set polls(int? val) => _polls = val;

  void incrementPolls(int amount) => polls = polls + amount;

  bool hasPolls() => _polls != null;

  static CompanyStatsStruct fromMap(Map<String, dynamic> data) =>
      CompanyStatsStruct(
        companyId: castToType<int>(data['company_id']),
        email: data['email'] as String?,
        followers: castToType<int>(data['followers']),
        activeCoupons: castToType<int>(data['active_coupons']),
        coupons: castToType<int>(data['coupons']),
        couponValue: castToType<double>(data['coupon_value']),
        couponPurchase: castToType<double>(data['coupon_purchase']),
        positivePoints: castToType<int>(data['positive_points']),
        negativePoints: castToType<int>(data['negative_points']),
        difExchanges: castToType<int>(data['dif_exchanges']),
        checkins: castToType<int>(data['checkins']),
        difCheckins: castToType<int>(data['dif_checkins']),
        checkinsValue: castToType<int>(data['checkins_value']),
        postInteractions: castToType<int>(data['post_interactions']),
        difInteractions: castToType<int>(data['dif_interactions']),
        postInteractionsValue: castToType<int>(data['post_interactions_value']),
        votes: castToType<int>(data['votes']),
        difVotes: castToType<int>(data['dif_votes']),
        votesValue: castToType<int>(data['votes_value']),
        posts: castToType<int>(data['posts']),
        polls: castToType<int>(data['polls']),
      );

  static CompanyStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company_id': _companyId,
        'email': _email,
        'followers': _followers,
        'active_coupons': _activeCoupons,
        'coupons': _coupons,
        'coupon_value': _couponValue,
        'coupon_purchase': _couponPurchase,
        'positive_points': _positivePoints,
        'negative_points': _negativePoints,
        'dif_exchanges': _difExchanges,
        'checkins': _checkins,
        'dif_checkins': _difCheckins,
        'checkins_value': _checkinsValue,
        'post_interactions': _postInteractions,
        'dif_interactions': _difInteractions,
        'post_interactions_value': _postInteractionsValue,
        'votes': _votes,
        'dif_votes': _difVotes,
        'votes_value': _votesValue,
        'posts': _posts,
        'polls': _polls,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'followers': serializeParam(
          _followers,
          ParamType.int,
        ),
        'active_coupons': serializeParam(
          _activeCoupons,
          ParamType.int,
        ),
        'coupons': serializeParam(
          _coupons,
          ParamType.int,
        ),
        'coupon_value': serializeParam(
          _couponValue,
          ParamType.double,
        ),
        'coupon_purchase': serializeParam(
          _couponPurchase,
          ParamType.double,
        ),
        'positive_points': serializeParam(
          _positivePoints,
          ParamType.int,
        ),
        'negative_points': serializeParam(
          _negativePoints,
          ParamType.int,
        ),
        'dif_exchanges': serializeParam(
          _difExchanges,
          ParamType.int,
        ),
        'checkins': serializeParam(
          _checkins,
          ParamType.int,
        ),
        'dif_checkins': serializeParam(
          _difCheckins,
          ParamType.int,
        ),
        'checkins_value': serializeParam(
          _checkinsValue,
          ParamType.int,
        ),
        'post_interactions': serializeParam(
          _postInteractions,
          ParamType.int,
        ),
        'dif_interactions': serializeParam(
          _difInteractions,
          ParamType.int,
        ),
        'post_interactions_value': serializeParam(
          _postInteractionsValue,
          ParamType.int,
        ),
        'votes': serializeParam(
          _votes,
          ParamType.int,
        ),
        'dif_votes': serializeParam(
          _difVotes,
          ParamType.int,
        ),
        'votes_value': serializeParam(
          _votesValue,
          ParamType.int,
        ),
        'posts': serializeParam(
          _posts,
          ParamType.int,
        ),
        'polls': serializeParam(
          _polls,
          ParamType.int,
        ),
      }.withoutNulls;

  static CompanyStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStatsStruct(
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        followers: deserializeParam(
          data['followers'],
          ParamType.int,
          false,
        ),
        activeCoupons: deserializeParam(
          data['active_coupons'],
          ParamType.int,
          false,
        ),
        coupons: deserializeParam(
          data['coupons'],
          ParamType.int,
          false,
        ),
        couponValue: deserializeParam(
          data['coupon_value'],
          ParamType.double,
          false,
        ),
        couponPurchase: deserializeParam(
          data['coupon_purchase'],
          ParamType.double,
          false,
        ),
        positivePoints: deserializeParam(
          data['positive_points'],
          ParamType.int,
          false,
        ),
        negativePoints: deserializeParam(
          data['negative_points'],
          ParamType.int,
          false,
        ),
        difExchanges: deserializeParam(
          data['dif_exchanges'],
          ParamType.int,
          false,
        ),
        checkins: deserializeParam(
          data['checkins'],
          ParamType.int,
          false,
        ),
        difCheckins: deserializeParam(
          data['dif_checkins'],
          ParamType.int,
          false,
        ),
        checkinsValue: deserializeParam(
          data['checkins_value'],
          ParamType.int,
          false,
        ),
        postInteractions: deserializeParam(
          data['post_interactions'],
          ParamType.int,
          false,
        ),
        difInteractions: deserializeParam(
          data['dif_interactions'],
          ParamType.int,
          false,
        ),
        postInteractionsValue: deserializeParam(
          data['post_interactions_value'],
          ParamType.int,
          false,
        ),
        votes: deserializeParam(
          data['votes'],
          ParamType.int,
          false,
        ),
        difVotes: deserializeParam(
          data['dif_votes'],
          ParamType.int,
          false,
        ),
        votesValue: deserializeParam(
          data['votes_value'],
          ParamType.int,
          false,
        ),
        posts: deserializeParam(
          data['posts'],
          ParamType.int,
          false,
        ),
        polls: deserializeParam(
          data['polls'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CompanyStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyStatsStruct &&
        companyId == other.companyId &&
        email == other.email &&
        followers == other.followers &&
        activeCoupons == other.activeCoupons &&
        coupons == other.coupons &&
        couponValue == other.couponValue &&
        couponPurchase == other.couponPurchase &&
        positivePoints == other.positivePoints &&
        negativePoints == other.negativePoints &&
        difExchanges == other.difExchanges &&
        checkins == other.checkins &&
        difCheckins == other.difCheckins &&
        checkinsValue == other.checkinsValue &&
        postInteractions == other.postInteractions &&
        difInteractions == other.difInteractions &&
        postInteractionsValue == other.postInteractionsValue &&
        votes == other.votes &&
        difVotes == other.difVotes &&
        votesValue == other.votesValue &&
        posts == other.posts &&
        polls == other.polls;
  }

  @override
  int get hashCode => const ListEquality().hash([
        companyId,
        email,
        followers,
        activeCoupons,
        coupons,
        couponValue,
        couponPurchase,
        positivePoints,
        negativePoints,
        difExchanges,
        checkins,
        difCheckins,
        checkinsValue,
        postInteractions,
        difInteractions,
        postInteractionsValue,
        votes,
        difVotes,
        votesValue,
        posts,
        polls
      ]);
}

CompanyStatsStruct createCompanyStatsStruct({
  int? companyId,
  String? email,
  int? followers,
  int? activeCoupons,
  int? coupons,
  double? couponValue,
  double? couponPurchase,
  int? positivePoints,
  int? negativePoints,
  int? difExchanges,
  int? checkins,
  int? difCheckins,
  int? checkinsValue,
  int? postInteractions,
  int? difInteractions,
  int? postInteractionsValue,
  int? votes,
  int? difVotes,
  int? votesValue,
  int? posts,
  int? polls,
}) =>
    CompanyStatsStruct(
      companyId: companyId,
      email: email,
      followers: followers,
      activeCoupons: activeCoupons,
      coupons: coupons,
      couponValue: couponValue,
      couponPurchase: couponPurchase,
      positivePoints: positivePoints,
      negativePoints: negativePoints,
      difExchanges: difExchanges,
      checkins: checkins,
      difCheckins: difCheckins,
      checkinsValue: checkinsValue,
      postInteractions: postInteractions,
      difInteractions: difInteractions,
      postInteractionsValue: postInteractionsValue,
      votes: votes,
      difVotes: difVotes,
      votesValue: votesValue,
      posts: posts,
      polls: polls,
    );
