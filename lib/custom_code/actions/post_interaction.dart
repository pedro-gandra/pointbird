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

  return postInfo.actionPoints!;
}
