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

Future<int> preAdFunction(int idClient) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  try {
    final response = await supabase
        .from('view_clients_plans')
        .select('*')
        .eq('id_client', idClient);

    if (!response[0]['ads']) return -1;

    final response2 =
        await supabase.rpc('saved_30days', params: {'client_id': idClient});

    return response2;
  } catch (e) {
    print(e.toString());
    return -1;
  }
}
