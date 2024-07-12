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

Future<List<ProductStruct>> reorderProducts(
  List<ProductStruct> initialList,
  int oldIndex,
  int newIndex,
) async {
  if (newIndex > oldIndex) {
    newIndex -= 1;
    for (int i = oldIndex + 1; i <= newIndex; i++) {
      initialList[i].order -= 1;
    }
  } else {
    for (int i = oldIndex - 1; i >= newIndex; i--) {
      initialList[i].order += 1;
    }
  }

  initialList[oldIndex].order = newIndex;
  final updated = initialList[oldIndex];
  initialList.removeAt(oldIndex);
  initialList.insert(newIndex, updated);
  return initialList;
}
