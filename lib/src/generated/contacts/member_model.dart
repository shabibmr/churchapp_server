/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Member extends _i1.TableRow {
  Member._({
    int? id,
    required this.contactId,
    this.contact,
    this.joiningDate,
    this.occupation,
    this.eduQualification,
    this.language,
    this.race,
    this.ethinicty,
    required this.skills,
    this.baptistDate,
    this.membershipFee,
    required this.familyId,
    this.family,
  }) : super(id);

  factory Member({
    int? id,
    required int contactId,
    _i2.Contact? contact,
    DateTime? joiningDate,
    String? occupation,
    String? eduQualification,
    String? language,
    String? race,
    String? ethinicty,
    required List<_i2.Skill?> skills,
    DateTime? baptistDate,
    int? membershipFee,
    required int familyId,
    _i2.Family? family,
  }) = _MemberImpl;

  factory Member.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Member(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      contactId:
          serializationManager.deserialize<int>(jsonSerialization['contactId']),
      contact: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['contact']),
      joiningDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['joiningDate']),
      occupation: serializationManager
          .deserialize<String?>(jsonSerialization['occupation']),
      eduQualification: serializationManager
          .deserialize<String?>(jsonSerialization['eduQualification']),
      language: serializationManager
          .deserialize<String?>(jsonSerialization['language']),
      race:
          serializationManager.deserialize<String?>(jsonSerialization['race']),
      ethinicty: serializationManager
          .deserialize<String?>(jsonSerialization['ethinicty']),
      skills: serializationManager
          .deserialize<List<_i2.Skill?>>(jsonSerialization['skills']),
      baptistDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['baptistDate']),
      membershipFee: serializationManager
          .deserialize<int?>(jsonSerialization['membershipFee']),
      familyId:
          serializationManager.deserialize<int>(jsonSerialization['familyId']),
      family: serializationManager
          .deserialize<_i2.Family?>(jsonSerialization['family']),
    );
  }

  static final t = MemberTable();

  static const db = MemberRepository._();

  int contactId;

  _i2.Contact? contact;

  DateTime? joiningDate;

  String? occupation;

  String? eduQualification;

  String? language;

  String? race;

  String? ethinicty;

  List<_i2.Skill?> skills;

  DateTime? baptistDate;

  int? membershipFee;

  int familyId;

  _i2.Family? family;

  int? _familiesMembersFamiliesId;

  @override
  _i1.Table get table => t;

  Member copyWith({
    int? id,
    int? contactId,
    _i2.Contact? contact,
    DateTime? joiningDate,
    String? occupation,
    String? eduQualification,
    String? language,
    String? race,
    String? ethinicty,
    List<_i2.Skill?>? skills,
    DateTime? baptistDate,
    int? membershipFee,
    int? familyId,
    _i2.Family? family,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'contactId': contactId,
      if (contact != null) 'contact': contact?.toJson(),
      if (joiningDate != null) 'joiningDate': joiningDate?.toJson(),
      if (occupation != null) 'occupation': occupation,
      if (eduQualification != null) 'eduQualification': eduQualification,
      if (language != null) 'language': language,
      if (race != null) 'race': race,
      if (ethinicty != null) 'ethinicty': ethinicty,
      'skills': skills.toJson(valueToJson: (v) => v?.toJson()),
      if (baptistDate != null) 'baptistDate': baptistDate?.toJson(),
      if (membershipFee != null) 'membershipFee': membershipFee,
      'familyId': familyId,
      if (family != null) 'family': family?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'contactId': contactId,
      'joiningDate': joiningDate,
      'occupation': occupation,
      'eduQualification': eduQualification,
      'language': language,
      'race': race,
      'ethinicty': ethinicty,
      'skills': skills,
      'baptistDate': baptistDate,
      'membershipFee': membershipFee,
      'familyId': familyId,
      '_familiesMembersFamiliesId': _familiesMembersFamiliesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'contactId': contactId,
      if (contact != null) 'contact': contact?.allToJson(),
      if (joiningDate != null) 'joiningDate': joiningDate?.toJson(),
      if (occupation != null) 'occupation': occupation,
      if (eduQualification != null) 'eduQualification': eduQualification,
      if (language != null) 'language': language,
      if (race != null) 'race': race,
      if (ethinicty != null) 'ethinicty': ethinicty,
      'skills': skills.toJson(valueToJson: (v) => v?.allToJson()),
      if (baptistDate != null) 'baptistDate': baptistDate?.toJson(),
      if (membershipFee != null) 'membershipFee': membershipFee,
      'familyId': familyId,
      if (family != null) 'family': family?.allToJson(),
      if (_familiesMembersFamiliesId != null)
        '_familiesMembersFamiliesId': _familiesMembersFamiliesId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'contactId':
        contactId = value;
        return;
      case 'joiningDate':
        joiningDate = value;
        return;
      case 'occupation':
        occupation = value;
        return;
      case 'eduQualification':
        eduQualification = value;
        return;
      case 'language':
        language = value;
        return;
      case 'race':
        race = value;
        return;
      case 'ethinicty':
        ethinicty = value;
        return;
      case 'skills':
        skills = value;
        return;
      case 'baptistDate':
        baptistDate = value;
        return;
      case 'membershipFee':
        membershipFee = value;
        return;
      case 'familyId':
        familyId = value;
        return;
      case '_familiesMembersFamiliesId':
        _familiesMembersFamiliesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Member>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    MemberInclude? include,
  }) async {
    return session.db.find<Member>(
      where: where != null ? where(Member.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Member?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    MemberInclude? include,
  }) async {
    return session.db.findSingleRow<Member>(
      where: where != null ? where(Member.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Member?> findById(
    _i1.Session session,
    int id, {
    MemberInclude? include,
  }) async {
    return session.db.findById<Member>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Member>(
      where: where(Member.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Member>(
      where: where != null ? where(Member.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MemberInclude include({
    _i2.ContactInclude? contact,
    _i2.FamilyInclude? family,
  }) {
    return MemberInclude._(
      contact: contact,
      family: family,
    );
  }

  static MemberIncludeList includeList({
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    MemberInclude? include,
  }) {
    return MemberIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Member.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Member.t),
      include: include,
    );
  }
}

class _Undefined {}

class _MemberImpl extends Member {
  _MemberImpl({
    int? id,
    required int contactId,
    _i2.Contact? contact,
    DateTime? joiningDate,
    String? occupation,
    String? eduQualification,
    String? language,
    String? race,
    String? ethinicty,
    required List<_i2.Skill?> skills,
    DateTime? baptistDate,
    int? membershipFee,
    required int familyId,
    _i2.Family? family,
  }) : super._(
          id: id,
          contactId: contactId,
          contact: contact,
          joiningDate: joiningDate,
          occupation: occupation,
          eduQualification: eduQualification,
          language: language,
          race: race,
          ethinicty: ethinicty,
          skills: skills,
          baptistDate: baptistDate,
          membershipFee: membershipFee,
          familyId: familyId,
          family: family,
        );

  @override
  Member copyWith({
    Object? id = _Undefined,
    int? contactId,
    Object? contact = _Undefined,
    Object? joiningDate = _Undefined,
    Object? occupation = _Undefined,
    Object? eduQualification = _Undefined,
    Object? language = _Undefined,
    Object? race = _Undefined,
    Object? ethinicty = _Undefined,
    List<_i2.Skill?>? skills,
    Object? baptistDate = _Undefined,
    Object? membershipFee = _Undefined,
    int? familyId,
    Object? family = _Undefined,
  }) {
    return Member(
      id: id is int? ? id : this.id,
      contactId: contactId ?? this.contactId,
      contact: contact is _i2.Contact? ? contact : this.contact?.copyWith(),
      joiningDate: joiningDate is DateTime? ? joiningDate : this.joiningDate,
      occupation: occupation is String? ? occupation : this.occupation,
      eduQualification: eduQualification is String?
          ? eduQualification
          : this.eduQualification,
      language: language is String? ? language : this.language,
      race: race is String? ? race : this.race,
      ethinicty: ethinicty is String? ? ethinicty : this.ethinicty,
      skills: skills ?? this.skills.clone(),
      baptistDate: baptistDate is DateTime? ? baptistDate : this.baptistDate,
      membershipFee: membershipFee is int? ? membershipFee : this.membershipFee,
      familyId: familyId ?? this.familyId,
      family: family is _i2.Family? ? family : this.family?.copyWith(),
    );
  }
}

class MemberImplicit extends _MemberImpl {
  MemberImplicit._({
    int? id,
    required int contactId,
    _i2.Contact? contact,
    DateTime? joiningDate,
    String? occupation,
    String? eduQualification,
    String? language,
    String? race,
    String? ethinicty,
    required List<_i2.Skill?> skills,
    DateTime? baptistDate,
    int? membershipFee,
    required int familyId,
    _i2.Family? family,
    this.$_familiesMembersFamiliesId,
  }) : super(
          id: id,
          contactId: contactId,
          contact: contact,
          joiningDate: joiningDate,
          occupation: occupation,
          eduQualification: eduQualification,
          language: language,
          race: race,
          ethinicty: ethinicty,
          skills: skills,
          baptistDate: baptistDate,
          membershipFee: membershipFee,
          familyId: familyId,
          family: family,
        );

  factory MemberImplicit(
    Member member, {
    int? $_familiesMembersFamiliesId,
  }) {
    return MemberImplicit._(
      id: member.id,
      contactId: member.contactId,
      contact: member.contact,
      joiningDate: member.joiningDate,
      occupation: member.occupation,
      eduQualification: member.eduQualification,
      language: member.language,
      race: member.race,
      ethinicty: member.ethinicty,
      skills: member.skills,
      baptistDate: member.baptistDate,
      membershipFee: member.membershipFee,
      familyId: member.familyId,
      family: member.family,
      $_familiesMembersFamiliesId: $_familiesMembersFamiliesId,
    );
  }

  int? $_familiesMembersFamiliesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_familiesMembersFamiliesId': $_familiesMembersFamiliesId});
    return jsonMap;
  }
}

class MemberTable extends _i1.Table {
  MemberTable({super.tableRelation}) : super(tableName: 'members') {
    contactId = _i1.ColumnInt(
      'contactId',
      this,
    );
    joiningDate = _i1.ColumnDateTime(
      'joiningDate',
      this,
    );
    occupation = _i1.ColumnString(
      'occupation',
      this,
    );
    eduQualification = _i1.ColumnString(
      'eduQualification',
      this,
    );
    language = _i1.ColumnString(
      'language',
      this,
    );
    race = _i1.ColumnString(
      'race',
      this,
    );
    ethinicty = _i1.ColumnString(
      'ethinicty',
      this,
    );
    skills = _i1.ColumnSerializable(
      'skills',
      this,
    );
    baptistDate = _i1.ColumnDateTime(
      'baptistDate',
      this,
    );
    membershipFee = _i1.ColumnInt(
      'membershipFee',
      this,
    );
    familyId = _i1.ColumnInt(
      'familyId',
      this,
    );
    $_familiesMembersFamiliesId = _i1.ColumnInt(
      '_familiesMembersFamiliesId',
      this,
    );
  }

  late final _i1.ColumnInt contactId;

  _i2.ContactTable? _contact;

  late final _i1.ColumnDateTime joiningDate;

  late final _i1.ColumnString occupation;

  late final _i1.ColumnString eduQualification;

  late final _i1.ColumnString language;

  late final _i1.ColumnString race;

  late final _i1.ColumnString ethinicty;

  late final _i1.ColumnSerializable skills;

  late final _i1.ColumnDateTime baptistDate;

  late final _i1.ColumnInt membershipFee;

  late final _i1.ColumnInt familyId;

  _i2.FamilyTable? _family;

  late final _i1.ColumnInt $_familiesMembersFamiliesId;

  _i2.ContactTable get contact {
    if (_contact != null) return _contact!;
    _contact = _i1.createRelationTable(
      relationFieldName: 'contact',
      field: Member.t.contactId,
      foreignField: _i2.Contact.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return _contact!;
  }

  _i2.FamilyTable get family {
    if (_family != null) return _family!;
    _family = _i1.createRelationTable(
      relationFieldName: 'family',
      field: Member.t.familyId,
      foreignField: _i2.Family.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.FamilyTable(tableRelation: foreignTableRelation),
    );
    return _family!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        contactId,
        joiningDate,
        occupation,
        eduQualification,
        language,
        race,
        ethinicty,
        skills,
        baptistDate,
        membershipFee,
        familyId,
        $_familiesMembersFamiliesId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'contact') {
      return contact;
    }
    if (relationField == 'family') {
      return family;
    }
    return null;
  }
}

@Deprecated('Use MemberTable.t instead.')
MemberTable tMember = MemberTable();

class MemberInclude extends _i1.IncludeObject {
  MemberInclude._({
    _i2.ContactInclude? contact,
    _i2.FamilyInclude? family,
  }) {
    _contact = contact;
    _family = family;
  }

  _i2.ContactInclude? _contact;

  _i2.FamilyInclude? _family;

  @override
  Map<String, _i1.Include?> get includes => {
        'contact': _contact,
        'family': _family,
      };

  @override
  _i1.Table get table => Member.t;
}

class MemberIncludeList extends _i1.IncludeList {
  MemberIncludeList._({
    _i1.WhereExpressionBuilder<MemberTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Member.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Member.t;
}

class MemberRepository {
  const MemberRepository._();

  final attachRow = const MemberAttachRowRepository._();

  Future<List<Member>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    _i1.Transaction? transaction,
    MemberInclude? include,
  }) async {
    return session.dbNext.find<Member>(
      where: where?.call(Member.t),
      orderBy: orderBy?.call(Member.t),
      orderByList: orderByList?.call(Member.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Member?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    _i1.Transaction? transaction,
    MemberInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Member>(
      where: where?.call(Member.t),
      orderBy: orderBy?.call(Member.t),
      orderByList: orderByList?.call(Member.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Member?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MemberInclude? include,
  }) async {
    return session.dbNext.findById<Member>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Member>> insert(
    _i1.Session session,
    List<Member> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Member>(
      rows,
      transaction: transaction,
    );
  }

  Future<Member> insertRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Member>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Member>> update(
    _i1.Session session,
    List<Member> rows, {
    _i1.ColumnSelections<MemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Member>(
      rows,
      columns: columns?.call(Member.t),
      transaction: transaction,
    );
  }

  Future<Member> updateRow(
    _i1.Session session,
    Member row, {
    _i1.ColumnSelections<MemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Member>(
      row,
      columns: columns?.call(Member.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Member> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Member>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Member>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Member>(
      where: where(Member.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Member>(
      where: where?.call(Member.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MemberAttachRowRepository {
  const MemberAttachRowRepository._();

  Future<void> contact(
    _i1.Session session,
    Member member,
    _i2.Contact contact,
  ) async {
    if (member.id == null) {
      throw ArgumentError.notNull('member.id');
    }
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }

    var $member = member.copyWith(contactId: contact.id);
    await session.dbNext.updateRow<Member>(
      $member,
      columns: [Member.t.contactId],
    );
  }

  Future<void> family(
    _i1.Session session,
    Member member,
    _i2.Family family,
  ) async {
    if (member.id == null) {
      throw ArgumentError.notNull('member.id');
    }
    if (family.id == null) {
      throw ArgumentError.notNull('family.id');
    }

    var $member = member.copyWith(familyId: family.id);
    await session.dbNext.updateRow<Member>(
      $member,
      columns: [Member.t.familyId],
    );
  }
}
