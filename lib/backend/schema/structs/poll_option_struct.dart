// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollOptionStruct extends BaseStruct {
  PollOptionStruct({
    int? idOption,
    String? text,
    int? votes,
    bool? clientVoted,
  })  : _idOption = idOption,
        _text = text,
        _votes = votes,
        _clientVoted = clientVoted;

  // "idOption" field.
  int? _idOption;
  int get idOption => _idOption ?? 0;
  set idOption(int? val) => _idOption = val;
  void incrementIdOption(int amount) => _idOption = idOption + amount;
  bool hasIdOption() => _idOption != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;
  bool hasText() => _text != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  set votes(int? val) => _votes = val;
  void incrementVotes(int amount) => _votes = votes + amount;
  bool hasVotes() => _votes != null;

  // "clientVoted" field.
  bool? _clientVoted;
  bool get clientVoted => _clientVoted ?? false;
  set clientVoted(bool? val) => _clientVoted = val;
  bool hasClientVoted() => _clientVoted != null;

  static PollOptionStruct fromMap(Map<String, dynamic> data) =>
      PollOptionStruct(
        idOption: castToType<int>(data['idOption']),
        text: data['text'] as String?,
        votes: castToType<int>(data['votes']),
        clientVoted: data['clientVoted'] as bool?,
      );

  static PollOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? PollOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idOption': _idOption,
        'text': _text,
        'votes': _votes,
        'clientVoted': _clientVoted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idOption': serializeParam(
          _idOption,
          ParamType.int,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'votes': serializeParam(
          _votes,
          ParamType.int,
        ),
        'clientVoted': serializeParam(
          _clientVoted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PollOptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PollOptionStruct(
        idOption: deserializeParam(
          data['idOption'],
          ParamType.int,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        votes: deserializeParam(
          data['votes'],
          ParamType.int,
          false,
        ),
        clientVoted: deserializeParam(
          data['clientVoted'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PollOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PollOptionStruct &&
        idOption == other.idOption &&
        text == other.text &&
        votes == other.votes &&
        clientVoted == other.clientVoted;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idOption, text, votes, clientVoted]);
}

PollOptionStruct createPollOptionStruct({
  int? idOption,
  String? text,
  int? votes,
  bool? clientVoted,
}) =>
    PollOptionStruct(
      idOption: idOption,
      text: text,
      votes: votes,
      clientVoted: clientVoted,
    );
