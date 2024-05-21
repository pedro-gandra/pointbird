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

Future<int> postInteraction(
  ViewPostsViewRow postInfo,
  int idReference,
  int idClient,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final idPost = postInfo.id;
  final idReferenceList = postInfo.idReference;
  final expiration = postInfo.pointExpiration;
  final now = DateTime.now().toUtc();

  if (idReferenceList.contains(idReference)) return 0;

  if (now.compareTo(expiration!) > 0) return 0;

  final response1 = await supabase.from('posts_clients').insert({
    'id_reference': idReference,
    'id_post': idPost,
  });

  String action;

  if (postInfo.postType == 'Social') {
    action = 'clicking on social';
  } else {
    action = 'clicking on offer';
  }

  final planRes = await supabase
      .from('view_clients_plans')
      .select('*')
      .eq('id_client', idClient);

  int finalPoints =
      ((postInfo.actionPoints!) * planRes[0]["multiplier"]).toInt();

  final response2 = await supabase.from('pointUpdates').insert({
    'id_reference': idReference,
    'pointChange': finalPoints,
    'event': action
  });

  return finalPoints;
}
