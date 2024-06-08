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

Future<int> explorePosition(
  int idCompany,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  final response1 =
      await supabase.from('view_explore').select('*').eq('id', idCompany);

  final country = response1[0]['name_country'];
  final category = response1[0]['name_category'];

  final relevancy = response1[0]['relevancy'];

  final response2 = await supabase
      .from('view_explore')
      .select('*')
      .eq('name_country', country)
      .eq('name_category', category)
      .gte('relevancy', relevancy);

  return response2.length;
}
