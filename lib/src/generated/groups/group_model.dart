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

abstract class SmallGroup extends _i1.TableRow {
  SmallGroup._({
    int? id,
    this.name,
    this.description,
    this.detail,
    this.type,
    this.members,
  }) : super(id);

  factory SmallGroup({
    int? id,
    String? name,
    String? description,
    String? detail,
    _i2.GroupType? type,
    List<_i2.Contact>? members,
  }) = _SmallGroupImpl;

  factory SmallGroup.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SmallGroup(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name:
          serializationManager.deserialize<String?>(jsonSerialization['name']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      detail: serializationManager
          .deserialize<String?>(jsonSerialization['detail']),
      type: serializationManager
          .deserialize<_i2.GroupType?>(jsonSerialization['type']),
      members: serializationManager
          .deserialize<List<_i2.Contact>?>(jsonSerialization['members']),
    );
  }

  static final t = SmallGroupTable();

  static const db = SmallGroupRepository._();

  String? name;

  String? description;

  String? detail;

  _i2.GroupType? type;

  List<_i2.Contact>? members;

  @override
  _i1.Table get table => t;

  SmallGroup copyWith({
    int? id,
    String? name,
    String? description,
    String? detail,
    _i2.GroupType? type,
    List<_i2.Contact>? members,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (detail != null) 'detail': detail,
      if (type != null) 'type': type?.toJson(),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'detail': detail,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (detail != null) 'detail': detail,
      if (type != null) 'type': type?.allToJson(),
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
      case 'name':
        name = value;
        return;
      case 'description':
        description = value;
        return;
      case 'detail':
        detail = value;
        return;
      case 'type':
        type = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<SmallGroup>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SmallGroupInclude? include,
  }) async {
    return session.db.find<SmallGroup>(
      where: where != null ? where(SmallGroup.t) : null,
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
  static Future<SmallGroup?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SmallGroupInclude? include,
  }) async {
    return session.db.findSingleRow<SmallGroup>(
      where: where != null ? where(SmallGroup.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<SmallGroup?> findById(
    _i1.Session session,
    int id, {
    SmallGroupInclude? include,
  }) async {
    return session.db.findById<SmallGroup>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SmallGroupTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SmallGroup>(
      where: where(SmallGroup.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    SmallGroup row, {
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
    SmallGroup row, {
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
    SmallGroup row, {
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
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SmallGroup>(
      where: where != null ? where(SmallGroup.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SmallGroupInclude include({_i2.ContactIncludeList? members}) {
    return SmallGroupInclude._(members: members);
  }

  static SmallGroupIncludeList includeList({
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SmallGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupTable>? orderByList,
    SmallGroupInclude? include,
  }) {
    return SmallGroupIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SmallGroup.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SmallGroup.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SmallGroupImpl extends SmallGroup {
  _SmallGroupImpl({
    int? id,
    String? name,
    String? description,
    String? detail,
    _i2.GroupType? type,
    List<_i2.Contact>? members,
  }) : super._(
          id: id,
          name: name,
          description: description,
          detail: detail,
          type: type,
          members: members,
        );

  @override
  SmallGroup copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? description = _Undefined,
    Object? detail = _Undefined,
    Object? type = _Undefined,
    Object? members = _Undefined,
  }) {
    return SmallGroup(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      description: description is String? ? description : this.description,
      detail: detail is String? ? detail : this.detail,
      type: type is _i2.GroupType? ? type : this.type?.copyWith(),
      members: members is List<_i2.Contact>? ? members : this.members?.clone(),
    );
  }
}

class SmallGroupTable extends _i1.Table {
  SmallGroupTable({super.tableRelation}) : super(tableName: 'small_groups') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    detail = _i1.ColumnString(
      'detail',
      this,
    );
    type = _i1.ColumnSerializable(
      'type',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString detail;

  late final _i1.ColumnSerializable type;

  _i2.ContactTable? ___members;

  _i1.ManyRelation<_i2.ContactTable>? _members;

  _i2.ContactTable get __members {
    if (___members != null) return ___members!;
    ___members = _i1.createRelationTable(
      relationFieldName: '__members',
      field: SmallGroup.t.id,
      foreignField: _i2.Contact.t.$_smallGroupsMembersSmallGroupsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _i1.ManyRelation<_i2.ContactTable> get members {
    if (_members != null) return _members!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'members',
      field: SmallGroup.t.id,
      foreignField: _i2.Contact.t.$_smallGroupsMembersSmallGroupsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    _members = _i1.ManyRelation<_i2.ContactTable>(
      tableWithRelations: relationTable,
      table: _i2.ContactTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _members!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        detail,
        type,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'members') {
      return __members;
    }
    return null;
  }
}

@Deprecated('Use SmallGroupTable.t instead.')
SmallGroupTable tSmallGroup = SmallGroupTable();

class SmallGroupInclude extends _i1.IncludeObject {
  SmallGroupInclude._({_i2.ContactIncludeList? members}) {
    _members = members;
  }

  _i2.ContactIncludeList? _members;

  @override
  Map<String, _i1.Include?> get includes => {'members': _members};

  @override
  _i1.Table get table => SmallGroup.t;
}

class SmallGroupIncludeList extends _i1.IncludeList {
  SmallGroupIncludeList._({
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SmallGroup.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SmallGroup.t;
}

class SmallGroupRepository {
  const SmallGroupRepository._();

  final attach = const SmallGroupAttachRepository._();

  final attachRow = const SmallGroupAttachRowRepository._();

  final detach = const SmallGroupDetachRepository._();

  final detachRow = const SmallGroupDetachRowRepository._();

  Future<List<SmallGroup>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SmallGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupTable>? orderByList,
    _i1.Transaction? transaction,
    SmallGroupInclude? include,
  }) async {
    return session.dbNext.find<SmallGroup>(
      where: where?.call(SmallGroup.t),
      orderBy: orderBy?.call(SmallGroup.t),
      orderByList: orderByList?.call(SmallGroup.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SmallGroup?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? offset,
    _i1.OrderByBuilder<SmallGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupTable>? orderByList,
    _i1.Transaction? transaction,
    SmallGroupInclude? include,
  }) async {
    return session.dbNext.findFirstRow<SmallGroup>(
      where: where?.call(SmallGroup.t),
      orderBy: orderBy?.call(SmallGroup.t),
      orderByList: orderByList?.call(SmallGroup.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SmallGroup?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SmallGroupInclude? include,
  }) async {
    return session.dbNext.findById<SmallGroup>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<SmallGroup>> insert(
    _i1.Session session,
    List<SmallGroup> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<SmallGroup>(
      rows,
      transaction: transaction,
    );
  }

  Future<SmallGroup> insertRow(
    _i1.Session session,
    SmallGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<SmallGroup>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SmallGroup>> update(
    _i1.Session session,
    List<SmallGroup> rows, {
    _i1.ColumnSelections<SmallGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<SmallGroup>(
      rows,
      columns: columns?.call(SmallGroup.t),
      transaction: transaction,
    );
  }

  Future<SmallGroup> updateRow(
    _i1.Session session,
    SmallGroup row, {
    _i1.ColumnSelections<SmallGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<SmallGroup>(
      row,
      columns: columns?.call(SmallGroup.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<SmallGroup> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<SmallGroup>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    SmallGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<SmallGroup>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SmallGroupTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<SmallGroup>(
      where: where(SmallGroup.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<SmallGroup>(
      where: where?.call(SmallGroup.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SmallGroupAttachRepository {
  const SmallGroupAttachRepository._();

  Future<void> members(
    _i1.Session session,
    SmallGroup smallGroup,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }
    if (smallGroup.id == null) {
      throw ArgumentError.notNull('smallGroup.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_smallGroupsMembersSmallGroupsId: smallGroup.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_smallGroupsMembersSmallGroupsId],
    );
  }
}

class SmallGroupAttachRowRepository {
  const SmallGroupAttachRowRepository._();

  Future<void> members(
    _i1.Session session,
    SmallGroup smallGroup,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }
    if (smallGroup.id == null) {
      throw ArgumentError.notNull('smallGroup.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_smallGroupsMembersSmallGroupsId: smallGroup.id,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_smallGroupsMembersSmallGroupsId],
    );
  }
}

class SmallGroupDetachRepository {
  const SmallGroupDetachRepository._();

  Future<void> members(
    _i1.Session session,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_smallGroupsMembersSmallGroupsId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_smallGroupsMembersSmallGroupsId],
    );
  }
}

class SmallGroupDetachRowRepository {
  const SmallGroupDetachRowRepository._();

  Future<void> members(
    _i1.Session session,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_smallGroupsMembersSmallGroupsId: null,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_smallGroupsMembersSmallGroupsId],
    );
  }
}
