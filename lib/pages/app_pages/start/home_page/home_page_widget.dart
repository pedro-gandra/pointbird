import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isEmail = await actions.isEmailRegistered(
        currentUserEmail,
      );
      if (_model.isEmail!) {
        _model.adm = await actions.isAdmin(
          currentUserEmail,
        );
        if (_model.adm!) {
          context.goNamed('admBoard');
        } else {
          if (FFAppState().user.filledData == false) {
            if (FFAppState().user.type == 'Business') {
              context.goNamed('OnboardingCompany');
            } else {
              context.goNamed('OnboardingClient');
            }
          } else {
            if (FFAppState().user.type == 'Business') {
              context.goNamed('homeCompany');
            } else {
              context.goNamed('homeClient');
            }
          }
        }
      } else {
        context.goNamed('accountType');
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent3,
        ),
      ),
    );
  }
}
