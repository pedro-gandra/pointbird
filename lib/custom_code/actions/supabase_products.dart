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

Future supabaseProducts(
  int idCompany,
  List<ProductStruct> productList,
) async {
  // Add your function code here!
  try {
    final supabase = SupaFlow.client;
    await supabase.from('products').delete().eq('id_company', idCompany);

    if (productList.length != 0) {
      final json = productList.map((e) => productToJson(e)).toList();
      await supabase.from('products').insert(json);
    }
  } catch (e) {
    print(e);
  }
}
