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

Future<List<ViewExploreRow>> exploreCompanies2(
    String term, String country, int idClient) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final response = await supabase
      .from('view_explore')
      .select('*')
      .ilike('name', '%$term%')
      .eq('name_country', country)
      .eq('shipping', true)
      .not('clients', 'cs', '{' + idClient.toString() + '}')
      .limit(100)
      .order('relevancy', ascending: false);
  List<ViewExploreRow> list = [];
  for (int i = 0; i < response.length; i++) {
    list.add(ViewExploreRow(response[i]));
  }
  return list;
}
