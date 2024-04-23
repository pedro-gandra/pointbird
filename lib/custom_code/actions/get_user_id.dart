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

Future<int> getUserId(
  String type,
  String email,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  if (type == 'Business') {
    final response =
        await supabase.from('companies').select('*').eq('email', email);
    return (response[0]["id"]);
  }

  if (type == 'Customer') {
    final response =
        await supabase.from('clients').select('*').eq('email', email);
    return (response[0]["id"]);
  }

  return 0;
}
