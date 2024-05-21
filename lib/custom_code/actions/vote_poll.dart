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

Future<int> votePoll(
  ViewPostsPollClientRow pollInfo,
  int idClient,
  int idReference,
  int idOption,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final idPost = pollInfo.postId;
  final expiration = pollInfo.pointExpiration;
  final now = DateTime.now().toUtc();

  if (now.compareTo(expiration!) > 0) return 0;

  final response1 = await supabase.from('votes').insert({
    'id_option': idOption,
    'id_client': idClient,
  });

  final planRes = await supabase
      .from('view_clients_plans')
      .select('*')
      .eq('id_client', idClient);

  int finalPoints =
      ((pollInfo.actionPoints!) * planRes[0]["multiplier"]).toInt();

  final response2 = await supabase.from('pointUpdates').insert({
    'id_reference': idReference,
    'pointChange': finalPoints,
    'event': 'voting on poll'
  });

  return finalPoints;
}
