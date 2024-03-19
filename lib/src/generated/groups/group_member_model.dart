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

abstract class SmallGroupMember extends _i1.TableRow {
  SmallGroupMember._({
    int? id,
    required this.groupId,
    this.group,
    required this.memberId,
    this.member,
    required this.position,
    required this.availablePositonCount,
  }) : super(id);

  factory SmallGroupMember({
    int? id,
    required int groupId,
    _i2.SmallGroup? group,
    required int memberId,
    _i2.Contact? member,
    required _i2.Position position,
    required int availablePositonCount,
  }) = _SmallGroupMemberImpl;

  factory SmallGroupMember.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SmallGroupMember(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      groupId:
          serializationManager.deserialize<int>(jsonSerialization['groupId']),
      group: serializationManager
          .deserialize<_i2.SmallGroup?>(jsonSerialization['group']),
      memberId:
          serializationManager.deserialize<int>(jsonSerialization['memberId']),
      member: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['member']),
      position: serializationManager
          .deserialize<_i2.Position>(jsonSerialization['position']),
      availablePositonCount: serializationManager
          .deserialize<int>(jsonSerialization['availablePositonCount']),
    );
  }

  static final t = SmallGroupMemberTable();

  static const db = SmallGroupMemberRepository._();

  int groupId;

  _i2.SmallGroup? group;

  int memberId;

  _i2.Contact? member;

  _i2.Position position;

  int availablePositonCount;

  @override
  _i1.Table get table => t;

  SmallGroupMember copyWith({
    int? id,
    int? groupId,
    _i2.SmallGroup? group,
    int? memberId,
    _i2.Contact? member,
    _i2.Position? position,
    int? availablePositonCount,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'groupId': groupId,
      if (group != null) 'group': group?.toJson(),
      'memberId': memberId,
      if (member != null) 'member': member?.toJson(),
      'position': position.toJson(),
      'availablePositonCount': availablePositonCount,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'groupId': groupId,
      'memberId': memberId,
      'position': position,
      'availablePositonCount': availablePositonCount,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'groupId': groupId,
      if (group != null) 'group': group?.allToJson(),
      'memberId': memberId,
      if (member != null) 'member': member?.allToJson(),
      'position': position.allToJson(),
      'availablePositonCount': availablePositonCount,
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
      case 'groupId':
        groupId = value;
        return;
      case 'memberId':
        memberId = value;
        return;
      case 'position':
        position = value;
        return;
      case 'availablePositonCount':
        availablePositonCount = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<SmallGroupMember>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SmallGroupMemberInclude? include,
  }) async {
    return session.db.find<SmallGroupMember>(
      where: where != null ? where(SmallGroupMember.t) : null,
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
  static Future<SmallGroupMember?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SmallGroupMemberInclude? include,
  }) async {
    return session.db.findSingleRow<SmallGroupMember>(
      where: where != null ? where(SmallGroupMember.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<SmallGroupMember?> findById(
    _i1.Session session,
    int id, {
    SmallGroupMemberInclude? include,
  }) async {
    return session.db.findById<SmallGroupMember>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SmallGroupMemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SmallGroupMember>(
      where: where(SmallGroupMember.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    SmallGroupMember row, {
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
    SmallGroupMember row, {
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
    SmallGroupMember row, {
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
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SmallGroupMember>(
      where: where != null ? where(SmallGroupMember.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SmallGroupMemberInclude include({
    _i2.SmallGroupInclude? group,
    _i2.ContactInclude? member,
  }) {
    return SmallGroupMemberInclude._(
      group: group,
      member: member,
    );
  }

  static SmallGroupMemberIncludeList includeList({
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SmallGroupMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupMemberTable>? orderByList,
    SmallGroupMemberInclude? include,
  }) {
    return SmallGroupMemberIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SmallGroupMember.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SmallGroupMember.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SmallGroupMemberImpl extends SmallGroupMember {
  _SmallGroupMemberImpl({
    int? id,
    required int groupId,
    _i2.SmallGroup? group,
    required int memberId,
    _i2.Contact? member,
    required _i2.Position position,
    required int availablePositonCount,
  }) : super._(
          id: id,
          groupId: groupId,
          group: group,
          memberId: memberId,
          member: member,
          position: position,
          availablePositonCount: availablePositonCount,
        );

  @override
  SmallGroupMember copyWith({
    Object? id = _Undefined,
    int? groupId,
    Object? group = _Undefined,
    int? memberId,
    Object? member = _Undefined,
    _i2.Position? position,
    int? availablePositonCount,
  }) {
    return SmallGroupMember(
      id: id is int? ? id : this.id,
      groupId: groupId ?? this.groupId,
      group: group is _i2.SmallGroup? ? group : this.group?.copyWith(),
      memberId: memberId ?? this.memberId,
      member: member is _i2.Contact? ? member : this.member?.copyWith(),
      position: position ?? this.position.copyWith(),
      availablePositonCount:
          availablePositonCount ?? this.availablePositonCount,
    );
  }
}

class SmallGroupMemberTable extends _i1.Table {
  SmallGroupMemberTable({super.tableRelation})
      : super(tableName: 'small_group_members') {
    groupId = _i1.ColumnInt(
      'groupId',
      this,
    );
    memberId = _i1.ColumnInt(
      'memberId',
      this,
    );
    position = _i1.ColumnSerializable(
      'position',
      this,
    );
    availablePositonCount = _i1.ColumnInt(
      'availablePositonCount',
      this,
    );
  }

  late final _i1.ColumnInt groupId;

  _i2.SmallGroupTable? _group;

  late final _i1.ColumnInt memberId;

  _i2.ContactTable? _member;

  late final _i1.ColumnSerializable position;

  late final _i1.ColumnInt availablePositonCount;

  _i2.SmallGroupTable get group {
    if (_group != null) return _group!;
    _group = _i1.createRelationTable(
      relationFieldName: 'group',
      field: SmallGroupMember.t.groupId,
      foreignField: _i2.SmallGroup.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.SmallGroupTable(tableRelation: foreignTableRelation),
    );
    return _group!;
  }

  _i2.ContactTable get member {
    if (_member != null) return _member!;
    _member = _i1.createRelationTable(
      relationFieldName: 'member',
      field: SmallGroupMember.t.memberId,
      foreignField: _i2.Contact.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return _member!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        groupId,
        memberId,
        position,
        availablePositonCount,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'group') {
      return group;
    }
    if (relationField == 'member') {
      return member;
    }
    return null;
  }
}

@Deprecated('Use SmallGroupMemberTable.t instead.')
SmallGroupMemberTable tSmallGroupMember = SmallGroupMemberTable();

class SmallGroupMemberInclude extends _i1.IncludeObject {
  SmallGroupMemberInclude._({
    _i2.SmallGroupInclude? group,
    _i2.ContactInclude? member,
  }) {
    _group = group;
    _member = member;
  }

  _i2.SmallGroupInclude? _group;

  _i2.ContactInclude? _member;

  @override
  Map<String, _i1.Include?> get includes => {
        'group': _group,
        'member': _member,
      };

  @override
  _i1.Table get table => SmallGroupMember.t;
}

class SmallGroupMemberIncludeList extends _i1.IncludeList {
  SmallGroupMemberIncludeList._({
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SmallGroupMember.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SmallGroupMember.t;
}

class SmallGroupMemberRepository {
  const SmallGroupMemberRepository._();

  final attachRow = const SmallGroupMemberAttachRowRepository._();

  Future<List<SmallGroupMember>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SmallGroupMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupMemberTable>? orderByList,
    _i1.Transaction? transaction,
    SmallGroupMemberInclude? include,
  }) async {
    return session.dbNext.find<SmallGroupMember>(
      where: where?.call(SmallGroupMember.t),
      orderBy: orderBy?.call(SmallGroupMember.t),
      orderByList: orderByList?.call(SmallGroupMember.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SmallGroupMember?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? offset,
    _i1.OrderByBuilder<SmallGroupMemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SmallGroupMemberTable>? orderByList,
    _i1.Transaction? transaction,
    SmallGroupMemberInclude? include,
  }) async {
    return session.dbNext.findFirstRow<SmallGroupMember>(
      where: where?.call(SmallGroupMember.t),
      orderBy: orderBy?.call(SmallGroupMember.t),
      orderByList: orderByList?.call(SmallGroupMember.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<SmallGroupMember?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SmallGroupMemberInclude? include,
  }) async {
    return session.dbNext.findById<SmallGroupMember>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<SmallGroupMember>> insert(
    _i1.Session session,
    List<SmallGroupMember> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<SmallGroupMember>(
      rows,
      transaction: transaction,
    );
  }

  Future<SmallGroupMember> insertRow(
    _i1.Session session,
    SmallGroupMember row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<SmallGroupMember>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SmallGroupMember>> update(
    _i1.Session session,
    List<SmallGroupMember> rows, {
    _i1.ColumnSelections<SmallGroupMemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<SmallGroupMember>(
      rows,
      columns: columns?.call(SmallGroupMember.t),
      transaction: transaction,
    );
  }

  Future<SmallGroupMember> updateRow(
    _i1.Session session,
    SmallGroupMember row, {
    _i1.ColumnSelections<SmallGroupMemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<SmallGroupMember>(
      row,
      columns: columns?.call(SmallGroupMember.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<SmallGroupMember> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<SmallGroupMember>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    SmallGroupMember row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<SmallGroupMember>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SmallGroupMemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<SmallGroupMember>(
      where: where(SmallGroupMember.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SmallGroupMemberTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<SmallGroupMember>(
      where: where?.call(SmallGroupMember.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SmallGroupMemberAttachRowRepository {
  const SmallGroupMemberAttachRowRepository._();

  Future<void> group(
    _i1.Session session,
    SmallGroupMember smallGroupMember,
    _i2.SmallGroup group,
  ) async {
    if (smallGroupMember.id == null) {
      throw ArgumentError.notNull('smallGroupMember.id');
    }
    if (group.id == null) {
      throw ArgumentError.notNull('group.id');
    }

    var $smallGroupMember = smallGroupMember.copyWith(groupId: group.id);
    await session.dbNext.updateRow<SmallGroupMember>(
      $smallGroupMember,
      columns: [SmallGroupMember.t.groupId],
    );
  }

  Future<void> member(
    _i1.Session session,
    SmallGroupMember smallGroupMember,
    _i2.Contact member,
  ) async {
    if (smallGroupMember.id == null) {
      throw ArgumentError.notNull('smallGroupMember.id');
    }
    if (member.id == null) {
      throw ArgumentError.notNull('member.id');
    }

    var $smallGroupMember = smallGroupMember.copyWith(memberId: member.id);
    await session.dbNext.updateRow<SmallGroupMember>(
      $smallGroupMember,
      columns: [SmallGroupMember.t.memberId],
    );
  }
}
