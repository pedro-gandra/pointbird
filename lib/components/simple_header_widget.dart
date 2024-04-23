import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'simple_header_model.dart';
export 'simple_header_model.dart';

class SimpleHeaderWidget extends StatefulWidget {
  const SimpleHeaderWidget({
    super.key,
    this.parameter1,
    required this.action,
    required this.font,
    bool? blockBack,
  }) : this.blockBack = blockBack ?? false;

  final String? parameter1;
  final String? action;
  final int? font;
  final bool blockBack;

  @override
  State<SimpleHeaderWidget> createState() => _SimpleHeaderWidgetState();
}

class _SimpleHeaderWidgetState extends State<SimpleHeaderWidget> {
  late SimpleHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimpleHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 12.0, 25.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 26.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (!widget.blockBack) {
                        if (widget.action == 'homeClient') {
                          context.goNamed('homeClient');
                        } else {
                          if (widget.action == 'close') {
                            Navigator.pop(context);
                          } else {
                            if (widget.action == 'back') {
                              context.safePop();
                            } else {
                              if (widget.action == 'homeCompany') {
                                context.goNamed('homeCompany');
                              }
                            }
                          }
                        }
                      }
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 25.0,
                    ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.parameter1,
                    'name company',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: widget.font?.toDouble(),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
        ),
      ],
    );
  }
}
