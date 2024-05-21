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

Future<ActionResponseStruct> signUp(
  String email,
  String pass,
) async {
  // Add your function code here!
  ActionResponseStruct actionResponse = new ActionResponseStruct();

  try {
    final supabase = SupaFlow.client;

    final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: pass,
        emailRedirectTo: "https://pointbird.io/confirm-email");
    actionResponse.message = "Verify your email to continue";
    actionResponse.color = "success";
    return actionResponse;
  } catch (e) {
    actionResponse.message = "An error occured when creating the account";
    actionResponse.color = "error";
    return actionResponse;
  }
}
