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

Future<ClientCompaniesRow> doCheckin(ViewCompanyViewRow infoRow) async {
  // Add your function code here!
  final checkinArray = infoRow.checkIn;
  final last = infoRow.lastCheckIn;
  int streak = infoRow.checkInStreak!;
  final idReference = infoRow.idReference;
  final now = DateTime.now().toUtc();

  if (last != null) {
    if (last.year == now.year &&
        last.month == now.month &&
        last.day + 1 == now.day) {
      if (streak < checkinArray.length)
        streak = streak + 1;
      else
        streak = 1;
    } else {
      streak = 1;
    }
  } else {
    streak = 1;
  }

  final pointValue = checkinArray[streak - 1];

  final supabase = SupaFlow.client;

  final response1 = await supabase.from('pointUpdates').insert({
    'id_reference': idReference,
    'pointChange': pointValue,
    'event': 'check in'
  });

  final response2 = await supabase
      .from('client_companies')
      .update({'checkInStreak': streak}).match({'id': idReference}).select();

  return ClientCompaniesRow(response2[0]);
}
