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

Future createPollOptions(
  String str1,
  int idPost,
  String str2,
  String? str3,
  String? str4,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  await supabase
      .from('pollOptions')
      .insert({'id_post': idPost, 'text': str1, 'order': 1});

  await supabase
      .from('pollOptions')
      .insert({'id_post': idPost, 'text': str2, 'order': 2});

  if (str3 != null && str3 != "") {
    await supabase
        .from('pollOptions')
        .insert({'id_post': idPost, 'text': str3, 'order': 3});
  }

  if (str4 != null && str4 != "") {
    await supabase
        .from('pollOptions')
        .insert({'id_post': idPost, 'text': str4, 'order': 4});
  }
}
