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

Future<ActionResponseStruct> generateCoupon(
  int idReference,
  int points,
  double minimum,
  double value,
  int idClient,
  double rateToUsd,
) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  final now = DateTime.now().toUtc();
  ActionResponseStruct actionResponse = new ActionResponseStruct();

  final planRes = await supabase
      .from('view_clients_plans')
      .select('*')
      .eq('id_client', idClient);

  if (planRes[0]["coupons"] >= planRes[0]["limit_coupons"]) {
    actionResponse.idPlan = planRes[0]["id_plan"];
    actionResponse.failDesc = "coupon limit";
    actionResponse.message = "You can only generate " +
        planRes[0]["limit_coupons"].toString() +
        " coupons per month in your current plan. Upgrade your plan to perform this action.";
    return actionResponse;
  }

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
    'purchase_min': minimum,
    'rate_to_usd': rateToUsd
  });

  return actionResponse;
}
