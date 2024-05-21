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
  final supabase = SupaFlow.client;
  final checkinArray = infoRow.checkIn;
  final last = infoRow.lastCheckIn;
  int streak = infoRow.checkInStreak!;
  final idReference = infoRow.idReference;
  final idClient = infoRow.idClient;
  final now = DateTime.now().toUtc();

  final planRes = await supabase
      .from('view_clients_plans')
      .select('*')
      .eq('id_client', idClient);

  if (last != null) {
    if ((last.year == now.year &&
            last.month == now.month &&
            last.day + 1 == now.day) ||
        planRes[0]["everStreak"]) {
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

  final response1 = await supabase.from('pointUpdates').insert({
    'id_reference': idReference,
    'pointChange': pointValue * planRes[0]["multiplier"],
    'event': 'check in'
  });

  final response2 = await supabase
      .from('client_companies')
      .update({'checkInStreak': streak}).match({'id': idReference}).select();

  return ClientCompaniesRow(response2[0]);
}
