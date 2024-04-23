// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<ActionResponseStruct> configPoints(
    int initial,
    int discount,
    String code,
    int id,
    int d1,
    int d2,
    int d3,
    int d4,
    int d5,
    int d6,
    int d7,
    int d8,
    int d9,
    int d10) async {
  final supabase = SupaFlow.client;
  ActionResponseStruct actionResponse = new ActionResponseStruct();
  final lowerCode = code.toLowerCase();

  final response =
      await supabase.from('companies').select('*').eq('code', lowerCode);

  if (response.length != 0 && response[0]["id"] != id) {
    actionResponse.message = "This code is already in use";
    actionResponse.color = "erro";
    return actionResponse;
  }

  List<int> checkIn = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10];

  await supabase.from('companies').update({
    'initialPoints': initial,
    'percentageLimit': discount,
    'code': lowerCode,
    'checkIn': checkIn
  }).match({'id': id});

  actionResponse.message = "Settings updated successfully!";
  actionResponse.color = "a4";
  return actionResponse;
}
