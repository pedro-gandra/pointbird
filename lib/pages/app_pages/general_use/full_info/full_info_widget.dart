import '/components/simple_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'full_info_model.dart';
export 'full_info_model.dart';

class FullInfoWidget extends StatefulWidget {
  const FullInfoWidget({
    super.key,
    required this.title,
    this.par1,
    this.par2,
    this.par3,
    this.par4,
  });

  final String? title;
  final String? par1;
  final String? par2;
  final String? par3;
  final String? par4;

  @override
  State<FullInfoWidget> createState() => _FullInfoWidgetState();
}

class _FullInfoWidgetState extends State<FullInfoWidget> {
  late FullInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullInfoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (widget!.par1 != null && widget!.par1 != '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 67.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget!.par1,
                              'a',
                            ),
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      if (widget!.par2 != null && widget!.par2 != '')
                        Text(
                          valueOrDefault<String>(
                            widget!.par2,
                            'a',
                          ),
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      if (widget!.par3 != null && widget!.par3 != '')
                        Text(
                          valueOrDefault<String>(
                            widget!.par3,
                            'a',
                          ),
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      if (widget!.par4 != null && widget!.par4 != '')
                        Text(
                          valueOrDefault<String>(
                            widget!.par4,
                            'a',
                          ),
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.simpleHeaderModel,
                updateCallback: () => setState(() {}),
                child: SimpleHeaderWidget(
                  parameter1: widget!.title,
                  action: 'back',
                  font: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
