// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActionResponseStruct extends BaseStruct {
  ActionResponseStruct({
    String? message,
    String? name,
    int? points,
    String? actionDesc,
    String? color,
    String? failDesc,
    int? idPlan,
  })  : _message = message,
        _name = name,
        _points = points,
        _actionDesc = actionDesc,
        _color = color,
        _failDesc = failDesc,
        _idPlan = idPlan;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;

  void incrementPoints(int amount) => points = points + amount;

  bool hasPoints() => _points != null;

  // "actionDesc" field.
  String? _actionDesc;
  String get actionDesc => _actionDesc ?? '';
  set actionDesc(String? val) => _actionDesc = val;

  bool hasActionDesc() => _actionDesc != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;

  bool hasColor() => _color != null;

  // "failDesc" field.
  String? _failDesc;
  String get failDesc => _failDesc ?? '';
  set failDesc(String? val) => _failDesc = val;

  bool hasFailDesc() => _failDesc != null;

  // "idPlan" field.
  int? _idPlan;
  int get idPlan => _idPlan ?? 0;
  set idPlan(int? val) => _idPlan = val;

  void incrementIdPlan(int amount) => idPlan = idPlan + amount;

  bool hasIdPlan() => _idPlan != null;

  static ActionResponseStruct fromMap(Map<String, dynamic> data) =>
      ActionResponseStruct(
        message: data['message'] as String?,
        name: data['name'] as String?,
        points: castToType<int>(data['points']),
        actionDesc: data['actionDesc'] as String?,
        color: data['color'] as String?,
        failDesc: data['failDesc'] as String?,
        idPlan: castToType<int>(data['idPlan']),
      );

  static ActionResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ActionResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'name': _name,
        'points': _points,
        'actionDesc': _actionDesc,
        'color': _color,
        'failDesc': _failDesc,
        'idPlan': _idPlan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
        'actionDesc': serializeParam(
          _actionDesc,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'failDesc': serializeParam(
          _failDesc,
          ParamType.String,
        ),
        'idPlan': serializeParam(
          _idPlan,
          ParamType.int,
        ),
      }.withoutNulls;

  static ActionResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActionResponseStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
        actionDesc: deserializeParam(
          data['actionDesc'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        failDesc: deserializeParam(
          data['failDesc'],
          ParamType.String,
          false,
        ),
        idPlan: deserializeParam(
          data['idPlan'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ActionResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActionResponseStruct &&
        message == other.message &&
        name == other.name &&
        points == other.points &&
        actionDesc == other.actionDesc &&
        color == other.color &&
        failDesc == other.failDesc &&
        idPlan == other.idPlan;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([message, name, points, actionDesc, color, failDesc, idPlan]);
}

ActionResponseStruct createActionResponseStruct({
  String? message,
  String? name,
  int? points,
  String? actionDesc,
  String? color,
  String? failDesc,
  int? idPlan,
}) =>
    ActionResponseStruct(
      message: message,
      name: name,
      points: points,
      actionDesc: actionDesc,
      color: color,
      failDesc: failDesc,
      idPlan: idPlan,
    );
