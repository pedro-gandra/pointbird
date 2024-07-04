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

Future configureCustomer(String? idUser, int idClient, bool update) async {
  // Add your function code here!
  if (idUser != null) {
    try {
      PurchasesConfiguration configuration;
      if (isAndroid) {
        configuration = PurchasesConfiguration('<public_google_api_key>');
      } else {
        configuration = PurchasesConfiguration('<public_apple_api_key>)');
      }
      await Purchases.configure(configuration);

      await Purchases.logIn(idUser);
      if (update) {
        CustomerInfo customerInfo = await Purchases.getCustomerInfo();
        EntitlementInfos subscriptions = customerInfo.entitlements;
        for (var entry in subscriptions.all.entries) {
          int planId;
          if (entry.key == 'Crow Plan')
            planId = 2;
          else
            planId = 3;
          final expiration = DateTime.parse(entry.value.expirationDate!);
          final supabase = SupaFlow.client;

          final data = {
            'id_plan': planId, // unique identifier
            'id_client': idClient,
            'expiration': expiration,
          };

          final response = await supabase
              .from('clients_plans')
              .upsert(data, onConflict: 'id_plan,id_client');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
