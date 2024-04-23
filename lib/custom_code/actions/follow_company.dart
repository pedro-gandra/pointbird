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

Future<ActionResponseStruct> followCompany(
  String code,
  int? idClient,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;

  ActionResponseStruct actionResponse = new ActionResponseStruct();
  final lowerCode = code.toLowerCase();

  final response =
      await supabase.from('companies').select('*').eq('code', lowerCode);

  if (response.length == 0) {
    actionResponse.message = "No company is registrated with this code";
    return actionResponse;
  }

  final idCompany = response[0]["id"];

  final response2 = await supabase
      .from('client_companies')
      .select('id')
      .eq('id_client', idClient)
      .eq('id_company', idCompany);

  if (response2.length > 0) {
    actionResponse.message = "You already follow this company";
    return actionResponse;
  }

  final response3 = await supabase
      .from('client_companies')
      .insert({'id_client': idClient, 'id_company': idCompany}).select();

  final idReference = response3[0]["id"];

  final initialPoints = response[0]["initialPoints"];

  if (initialPoints != null) {
    if (initialPoints > 0) {
      final response5 = await supabase.from('pointUpdates').insert({
        'id_reference': idReference,
        'pointChange': initialPoints,
        'event': 'initial points'
      });

      actionResponse.name = response[0]["name"];
      actionResponse.points = initialPoints;
      actionResponse.actionDesc = "following the company";
    }
  }

  actionResponse.message = "You now follow " + response[0]["name"] + "!";
  return actionResponse;
}
