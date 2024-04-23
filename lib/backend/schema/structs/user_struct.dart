// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    bool? isRegistration,
    String? type,
    bool? filledData,
    int? id,
  })  : _isRegistration = isRegistration,
        _type = type,
        _filledData = filledData,
        _id = id;

  // "isRegistration" field.
  bool? _isRegistration;
  bool get isRegistration => _isRegistration ?? false;
  set isRegistration(bool? val) => _isRegistration = val;
  bool hasIsRegistration() => _isRegistration != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "filledData" field.
  bool? _filledData;
  bool get filledData => _filledData ?? false;
  set filledData(bool? val) => _filledData = val;
  bool hasFilledData() => _filledData != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        isRegistration: data['isRegistration'] as bool?,
        type: data['type'] as String?,
        filledData: data['filledData'] as bool?,
        id: castToType<int>(data['id']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'isRegistration': _isRegistration,
        'type': _type,
        'filledData': _filledData,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isRegistration': serializeParam(
          _isRegistration,
          ParamType.bool,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'filledData': serializeParam(
          _filledData,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        isRegistration: deserializeParam(
          data['isRegistration'],
          ParamType.bool,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        filledData: deserializeParam(
          data['filledData'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        isRegistration == other.isRegistration &&
        type == other.type &&
        filledData == other.filledData &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isRegistration, type, filledData, id]);
}

UserStruct createUserStruct({
  bool? isRegistration,
  String? type,
  bool? filledData,
  int? id,
}) =>
    UserStruct(
      isRegistration: isRegistration,
      type: type,
      filledData: filledData,
      id: id,
    );
