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

import 'dart:math';

Future<bool> generateCoupon(
  int idReference,
  int points,
  double minimum,
  double value,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final now = DateTime.now().toUtc();

  final expiration = now.add(Duration(days: 7));
  String sqlExpiration = expiration.toIso8601String();

  Random random = Random();
  String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  String code = '';

  for (int i = 0; i < 5; i++) {
    int index = random.nextInt(chars.length);
    code += chars[index];
  }

  final response1 = await supabase.from('pointUpdates').insert({
    'id_reference': idReference,
    'pointChange': -(points),
    'event': 'point exchange'
  });

  final response2 = await supabase.from('coupons').insert({
    'id_reference': idReference,
    'code': code,
    'value': value,
    'expiration': sqlExpiration,
    'purchase_min': minimum
  });

  return true;
}
