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

import 'package:purchases_flutter/purchases_flutter.dart';

import 'package:flutter/foundation.dart';

Future<bool> makePurchase(
    String package, String plan, String offering, int idClient) async {
  // Add your function code here!
  // Using Offerings/Packages
  if (kIsWeb) {
    print('RevenueCat is not supported on web');
    return false;
  }

  try {
    final revenueCatPackage = (await Purchases.getOfferings())
        .getOffering(offering)!
        .getPackage(package);
    CustomerInfo customerInfo =
        await Purchases.purchasePackage(revenueCatPackage!);
    if (customerInfo.entitlements.all[plan] != null) {
      if (customerInfo.entitlements.all[plan]!.isActive) {
        EntitlementInfos subscriptions = customerInfo.entitlements;
        for (var entry in subscriptions.all.entries) {
          int planId;
          if (entry.key == 'Crow Plan')
            planId = 2;
          else
            planId = 3;
          final expiration = entry.value.expirationDate;
          final supabase = SupaFlow.client;

          final data = {
            'id_plan': planId,
            'id_client': idClient,
            'expiration': expiration,
          };

          final response = await supabase
              .from('clients_plans')
              .upsert(data, onConflict: 'id_plan,id_client');

          return true;
        }
      }
    }
    return false;
  } catch (e) {
    print(e);
    return false;
  }
}
