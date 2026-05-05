import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchUsersCall {
  static Future<ApiCallResponse> call({
    String? searchString = 'null',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchUsers',
      apiUrl:
          'https://jocndjkcftmbfrsafdgp.supabase.co/rest/v1/user_data?username=ilike.*${searchString}*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpvY25kamtjZnRtYmZyc2FmZGdwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzAxMTc4ODUsImV4cCI6MjA4NTY5Mzg4NX0.mAKJgZx1Fx_giD3Qq9f-wStsBci-SZmSQ6KeaJ3z_YQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpvY25kamtjZnRtYmZyc2FmZGdwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzAxMTc4ODUsImV4cCI6MjA4NTY5Mzg4NX0.mAKJgZx1Fx_giD3Qq9f-wStsBci-SZmSQ6KeaJ3z_YQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
