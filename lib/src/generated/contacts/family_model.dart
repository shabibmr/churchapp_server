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

abstract class Family extends _i1.TableRow {
  Family._({
    int? id,
    this.familyName,
    required this.famMemIdx,
    this.members,
  }) : super(id);

  factory Family({
    int? id,
    String? familyName,
    required _i1.UuidValue famMemIdx,
    List<_i2.Member>? members,
  }) = _FamilyImpl;

  factory Family.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Family(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      familyName: serializationManager
          .deserialize<String?>(jsonSerialization['familyName']),
      famMemIdx: serializationManager
          .deserialize<_i1.UuidValue>(jsonSerialization['famMemIdx']),
      members: serializationManager
          .deserialize<List<_i2.Member>?>(jsonSerialization['members']),
    );
  }

  static final t = FamilyTable();

  static const db = FamilyRepository._();

  String? familyName;

  _i1.UuidValue famMemIdx;

  List<_i2.Member>? members;

  @override
  _i1.Table get table => t;

  Family copyWith({
    int? id,
    String? familyName,
    _i1.UuidValue? famMemIdx,
    List<_i2.Member>? members,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (familyName != null) 'familyName': familyName,
      'famMemIdx': famMemIdx.toJson(),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'familyName': familyName,
      'famMemIdx': famMemIdx,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (familyName != null) 'familyName': familyName,
      'famMemIdx': famMemIdx.toJson(),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'familyName':
        familyName = value;
        return;
      case 'famMemIdx':
        famMemIdx = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Family>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FamilyInclude? include,
  }) async {
    return session.db.find<Family>(
      where: where != null ? where(Family.t) : null,
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
  static Future<Family?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FamilyInclude? include,
  }) async {
    return session.db.findSingleRow<Family>(
      where: where != null ? where(Family.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Family?> findById(
    _i1.Session session,
    int id, {
    FamilyInclude? include,
  }) async {
    return session.db.findById<Family>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FamilyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Family>(
      where: where(Family.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Family row, {
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
    Family row, {
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
    Family row, {
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
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Family>(
      where: where != null ? where(Family.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FamilyInclude include({_i2.MemberIncludeList? members}) {
    return FamilyInclude._(members: members);
  }

  static FamilyIncludeList includeList({
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FamilyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FamilyTable>? orderByList,
    FamilyInclude? include,
  }) {
    return FamilyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Family.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Family.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FamilyImpl extends Family {
  _FamilyImpl({
    int? id,
    String? familyName,
    required _i1.UuidValue famMemIdx,
    List<_i2.Member>? members,
  }) : super._(
          id: id,
          familyName: familyName,
          famMemIdx: famMemIdx,
          members: members,
        );

  @override
  Family copyWith({
    Object? id = _Undefined,
    Object? familyName = _Undefined,
    _i1.UuidValue? famMemIdx,
    Object? members = _Undefined,
  }) {
    return Family(
      id: id is int? ? id : this.id,
      familyName: familyName is String? ? familyName : this.familyName,
      famMemIdx: famMemIdx ?? this.famMemIdx,
      members: members is List<_i2.Member>? ? members : this.members?.clone(),
    );
  }
}

class FamilyTable extends _i1.Table {
  FamilyTable({super.tableRelation}) : super(tableName: 'families') {
    familyName = _i1.ColumnString(
      'familyName',
      this,
    );
    famMemIdx = _i1.ColumnUuid(
      'famMemIdx',
      this,
    );
  }

  late final _i1.ColumnString familyName;

  late final _i1.ColumnUuid famMemIdx;

  _i2.MemberTable? ___members;

  _i1.ManyRelation<_i2.MemberTable>? _members;

  _i2.MemberTable get __members {
    if (___members != null) return ___members!;
    ___members = _i1.createRelationTable(
      relationFieldName: '__members',
      field: Family.t.id,
      foreignField: _i2.Member.t.$_familiesMembersFamiliesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MemberTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _i1.ManyRelation<_i2.MemberTable> get members {
    if (_members != null) return _members!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'members',
      field: Family.t.id,
      foreignField: _i2.Member.t.$_familiesMembersFamiliesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MemberTable(tableRelation: foreignTableRelation),
    );
    _members = _i1.ManyRelation<_i2.MemberTable>(
      tableWithRelations: relationTable,
      table: _i2.MemberTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _members!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        familyName,
        famMemIdx,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'members') {
      return __members;
    }
    return null;
  }
}

@Deprecated('Use FamilyTable.t instead.')
FamilyTable tFamily = FamilyTable();

class FamilyInclude extends _i1.IncludeObject {
  FamilyInclude._({_i2.MemberIncludeList? members}) {
    _members = members;
  }

  _i2.MemberIncludeList? _members;

  @override
  Map<String, _i1.Include?> get includes => {'members': _members};

  @override
  _i1.Table get table => Family.t;
}

class FamilyIncludeList extends _i1.IncludeList {
  FamilyIncludeList._({
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Family.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Family.t;
}

class FamilyRepository {
  const FamilyRepository._();

  final attach = const FamilyAttachRepository._();

  final attachRow = const FamilyAttachRowRepository._();

  final detach = const FamilyDetachRepository._();

  final detachRow = const FamilyDetachRowRepository._();

  Future<List<Family>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FamilyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FamilyTable>? orderByList,
    _i1.Transaction? transaction,
    FamilyInclude? include,
  }) async {
    return session.dbNext.find<Family>(
      where: where?.call(Family.t),
      orderBy: orderBy?.call(Family.t),
      orderByList: orderByList?.call(Family.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Family?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? offset,
    _i1.OrderByBuilder<FamilyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FamilyTable>? orderByList,
    _i1.Transaction? transaction,
    FamilyInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Family>(
      where: where?.call(Family.t),
      orderBy: orderBy?.call(Family.t),
      orderByList: orderByList?.call(Family.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Family?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FamilyInclude? include,
  }) async {
    return session.dbNext.findById<Family>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Family>> insert(
    _i1.Session session,
    List<Family> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Family>(
      rows,
      transaction: transaction,
    );
  }

  Future<Family> insertRow(
    _i1.Session session,
    Family row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Family>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Family>> update(
    _i1.Session session,
    List<Family> rows, {
    _i1.ColumnSelections<FamilyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Family>(
      rows,
      columns: columns?.call(Family.t),
      transaction: transaction,
    );
  }

  Future<Family> updateRow(
    _i1.Session session,
    Family row, {
    _i1.ColumnSelections<FamilyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Family>(
      row,
      columns: columns?.call(Family.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Family> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Family>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Family row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Family>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FamilyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Family>(
      where: where(Family.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FamilyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Family>(
      where: where?.call(Family.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FamilyAttachRepository {
  const FamilyAttachRepository._();

  Future<void> members(
    _i1.Session session,
    Family family,
    List<_i2.Member> member,
  ) async {
    if (member.any((e) => e.id == null)) {
      throw ArgumentError.notNull('member.id');
    }
    if (family.id == null) {
      throw ArgumentError.notNull('family.id');
    }

    var $member = member
        .map((e) => _i2.MemberImplicit(
              e,
              $_familiesMembersFamiliesId: family.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Member>(
      $member,
      columns: [_i2.Member.t.$_familiesMembersFamiliesId],
    );
  }
}

class FamilyAttachRowRepository {
  const FamilyAttachRowRepository._();

  Future<void> members(
    _i1.Session session,
    Family family,
    _i2.Member member,
  ) async {
    if (member.id == null) {
      throw ArgumentError.notNull('member.id');
    }
    if (family.id == null) {
      throw ArgumentError.notNull('family.id');
    }

    var $member = _i2.MemberImplicit(
      member,
      $_familiesMembersFamiliesId: family.id,
    );
    await session.dbNext.updateRow<_i2.Member>(
      $member,
      columns: [_i2.Member.t.$_familiesMembersFamiliesId],
    );
  }
}

class FamilyDetachRepository {
  const FamilyDetachRepository._();

  Future<void> members(
    _i1.Session session,
    List<_i2.Member> member,
  ) async {
    if (member.any((e) => e.id == null)) {
      throw ArgumentError.notNull('member.id');
    }

    var $member = member
        .map((e) => _i2.MemberImplicit(
              e,
              $_familiesMembersFamiliesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Member>(
      $member,
      columns: [_i2.Member.t.$_familiesMembersFamiliesId],
    );
  }
}

class FamilyDetachRowRepository {
  const FamilyDetachRowRepository._();

  Future<void> members(
    _i1.Session session,
    _i2.Member member,
  ) async {
    if (member.id == null) {
      throw ArgumentError.notNull('member.id');
    }

    var $member = _i2.MemberImplicit(
      member,
      $_familiesMembersFamiliesId: null,
    );
    await session.dbNext.updateRow<_i2.Member>(
      $member,
      columns: [_i2.Member.t.$_familiesMembersFamiliesId],
    );
  }
}
