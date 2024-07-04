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

import 'dart:io';

import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:flutter/foundation.dart';

Future initializeRevenue() async {
  // Add your function code here!

  if (kIsWeb) {
    print('RevenueCat is not supported on web');
    return;
  }
  await Purchases.setLogLevel(LogLevel.debug);
  PurchasesConfiguration configuration;
  if (isAndroid) {
    configuration = PurchasesConfiguration('goog_KBrKbQZiYgzfmAuOgCUKjwkLpLK');
    await Purchases.configure(configuration);
  } else if (isiOS) {
    configuration = PurchasesConfiguration('appl_NTMJxzsTFrJWAaDogzBRQPkUvPO');
    await Purchases.configure(configuration);
  }
}
