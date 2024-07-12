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

Future<List<ProductStruct>> deleteProduct(
  List<ProductStruct> initialList,
  int position,
) async {
  // Add your function code here!
  for (int i = position + 1; i < initialList.length; i++) {
    initialList[i].order -= 1;
  }
  initialList.removeAt(position);
  return initialList;
}
