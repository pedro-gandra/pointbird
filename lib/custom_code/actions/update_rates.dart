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

import 'package:http/http.dart' as http;
import 'dart:convert'; // Import the dart:convert library

Future<String> updateRates() async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final response = await http.get(Uri.parse(
      'https://v6.exchangerate-api.com/v6/b101731ec49a57b4cac7a0dd/latest/USD'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON
    // Note: You may need to import the dart:convert package
    final data = json.decode(response.body);
    Map<String, dynamic> conversionRates = data['conversion_rates'];

    List<Map<String, dynamic>> updates = [];

    conversionRates.forEach((code, rate) {
      updates.add({
        'code': code,
        'rate_to_usd': rate,
      });
    });

    try {
      await supabase
          .from('currencies')
          .upsert(updates, onConflict: 'code', ignoreDuplicates: false);

      return ('Data updated');
    } catch (error) {
      return ('Database error' + error.toString());
    }
  } else {
    // If the server did not return a 200 OK response,
    // throw an exception.
    return ('Failed to load data');
  }
}
