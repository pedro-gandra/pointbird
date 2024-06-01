import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CompanyStatsCall {
  static Future<ApiCallResponse> call({
    String? endDate = '',
    String? startDate = '',
    String? authEmail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'companyStats',
      apiUrl:
          'https://sogsgbdchhaufgpcqpin.supabase.co/rest/v1/rpc/get_company_stats',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvZ3NnYmRjaGhhdWZncGNxcGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcwOTA0NDAsImV4cCI6MjAyMjY2NjQ0MH0.BaC8iub9AhDobeUQucWIVFQOiLcACEG6WtaBhRqxI0g',
      },
      params: {
        'start_date': startDate,
        'end_date': endDate,
        'auth_email': authEmail,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPostsCall {
  static Future<ApiCallResponse> call({
    int? idCompany,
    String? type = '',
    int? limit,
    int? offset,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPosts',
      apiUrl:
          'https://sogsgbdchhaufgpcqpin.supabase.co/rest/v1/view_posts_view?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvZ3NnYmRjaGhhdWZncGNxcGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcwOTA0NDAsImV4cCI6MjAyMjY2NjQ0MH0.BaC8iub9AhDobeUQucWIVFQOiLcACEG6WtaBhRqxI0g',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvZ3NnYmRjaGhhdWZncGNxcGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcwOTA0NDAsImV4cCI6MjAyMjY2NjQ0MH0.BaC8iub9AhDobeUQucWIVFQOiLcACEG6WtaBhRqxI0g',
      },
      params: {
        'id_company': "eq.${idCompany}",
        'postType': "eq.${type}",
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
