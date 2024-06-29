// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostStruct extends BaseStruct {
  PostStruct({
    int? id,
    String? createdAt,
    int? idCompany,
    int? actionPoints,
    String? postType,
    String? title,
    String? desc,
    String? link,
    String? imageUrl,
    String? pointExpiration,
    List<int>? idReference,
    List<int>? idRelation,
  })  : _id = id,
        _createdAt = createdAt,
        _idCompany = idCompany,
        _actionPoints = actionPoints,
        _postType = postType,
        _title = title,
        _desc = desc,
        _link = link,
        _imageUrl = imageUrl,
        _pointExpiration = pointExpiration,
        _idReference = idReference,
        _idRelation = idRelation;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "id_company" field.
  int? _idCompany;
  int get idCompany => _idCompany ?? 0;
  set idCompany(int? val) => _idCompany = val;

  void incrementIdCompany(int amount) => idCompany = idCompany + amount;

  bool hasIdCompany() => _idCompany != null;

  // "actionPoints" field.
  int? _actionPoints;
  int get actionPoints => _actionPoints ?? 0;
  set actionPoints(int? val) => _actionPoints = val;

  void incrementActionPoints(int amount) =>
      actionPoints = actionPoints + amount;

  bool hasActionPoints() => _actionPoints != null;

  // "postType" field.
  String? _postType;
  String get postType => _postType ?? '';
  set postType(String? val) => _postType = val;

  bool hasPostType() => _postType != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "pointExpiration" field.
  String? _pointExpiration;
  String get pointExpiration => _pointExpiration ?? '';
  set pointExpiration(String? val) => _pointExpiration = val;

  bool hasPointExpiration() => _pointExpiration != null;

  // "id_reference" field.
  List<int>? _idReference;
  List<int> get idReference => _idReference ?? const [];
  set idReference(List<int>? val) => _idReference = val;

  void updateIdReference(Function(List<int>) updateFn) {
    updateFn(_idReference ??= []);
  }

  bool hasIdReference() => _idReference != null;

  // "id_relation" field.
  List<int>? _idRelation;
  List<int> get idRelation => _idRelation ?? const [];
  set idRelation(List<int>? val) => _idRelation = val;

  void updateIdRelation(Function(List<int>) updateFn) {
    updateFn(_idRelation ??= []);
  }

  bool hasIdRelation() => _idRelation != null;

  static PostStruct fromMap(Map<String, dynamic> data) => PostStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        idCompany: castToType<int>(data['id_company']),
        actionPoints: castToType<int>(data['actionPoints']),
        postType: data['postType'] as String?,
        title: data['title'] as String?,
        desc: data['desc'] as String?,
        link: data['link'] as String?,
        imageUrl: data['imageUrl'] as String?,
        pointExpiration: data['pointExpiration'] as String?,
        idReference: getDataList(data['id_reference']),
        idRelation: getDataList(data['id_relation']),
      );

  static PostStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'id_company': _idCompany,
        'actionPoints': _actionPoints,
        'postType': _postType,
        'title': _title,
        'desc': _desc,
        'link': _link,
        'imageUrl': _imageUrl,
        'pointExpiration': _pointExpiration,
        'id_reference': _idReference,
        'id_relation': _idRelation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id_company': serializeParam(
          _idCompany,
          ParamType.int,
        ),
        'actionPoints': serializeParam(
          _actionPoints,
          ParamType.int,
        ),
        'postType': serializeParam(
          _postType,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'pointExpiration': serializeParam(
          _pointExpiration,
          ParamType.String,
        ),
        'id_reference': serializeParam(
          _idReference,
          ParamType.int,
          isList: true,
        ),
        'id_relation': serializeParam(
          _idRelation,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static PostStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        idCompany: deserializeParam(
          data['id_company'],
          ParamType.int,
          false,
        ),
        actionPoints: deserializeParam(
          data['actionPoints'],
          ParamType.int,
          false,
        ),
        postType: deserializeParam(
          data['postType'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
        pointExpiration: deserializeParam(
          data['pointExpiration'],
          ParamType.String,
          false,
        ),
        idReference: deserializeParam<int>(
          data['id_reference'],
          ParamType.int,
          true,
        ),
        idRelation: deserializeParam<int>(
          data['id_relation'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'PostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PostStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        idCompany == other.idCompany &&
        actionPoints == other.actionPoints &&
        postType == other.postType &&
        title == other.title &&
        desc == other.desc &&
        link == other.link &&
        imageUrl == other.imageUrl &&
        pointExpiration == other.pointExpiration &&
        listEquality.equals(idReference, other.idReference) &&
        listEquality.equals(idRelation, other.idRelation);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        idCompany,
        actionPoints,
        postType,
        title,
        desc,
        link,
        imageUrl,
        pointExpiration,
        idReference,
        idRelation
      ]);
}

PostStruct createPostStruct({
  int? id,
  String? createdAt,
  int? idCompany,
  int? actionPoints,
  String? postType,
  String? title,
  String? desc,
  String? link,
  String? imageUrl,
  String? pointExpiration,
}) =>
    PostStruct(
      id: id,
      createdAt: createdAt,
      idCompany: idCompany,
      actionPoints: actionPoints,
      postType: postType,
      title: title,
      desc: desc,
      link: link,
      imageUrl: imageUrl,
      pointExpiration: pointExpiration,
    );
