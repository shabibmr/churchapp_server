/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class GroupType extends _i1.TableRow {
  GroupType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory GroupType({
    int? id,
    String? description,
    String? color,
  }) = _GroupTypeImpl;

  factory GroupType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return GroupType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = GroupTypeTable();

  static const db = GroupTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  GroupType copyWith({
    int? id,
    String? description,
    String? color,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'description': description,
      'color': color,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
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
      case 'description':
        description = value;
        return;
      case 'color':
        color = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<GroupType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<GroupType>(
      where: where != null ? where(GroupType.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<GroupType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<GroupType>(
      where: where != null ? where(GroupType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<GroupType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<GroupType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GroupTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GroupType>(
      where: where(GroupType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    GroupType row, {
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
    GroupType row, {
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
    GroupType row, {
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
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GroupType>(
      where: where != null ? where(GroupType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static GroupTypeInclude include() {
    return GroupTypeInclude._();
  }

  static GroupTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GroupTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GroupTypeTable>? orderByList,
    GroupTypeInclude? include,
  }) {
    return GroupTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GroupType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GroupType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _GroupTypeImpl extends GroupType {
  _GroupTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  GroupType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return GroupType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class GroupTypeTable extends _i1.Table {
  GroupTypeTable({super.tableRelation}) : super(tableName: 'group_type') {
    description = _i1.ColumnString(
      'description',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
  }

  late final _i1.ColumnString description;

  late final _i1.ColumnString color;

  @override
  List<_i1.Column> get columns => [
        id,
        description,
        color,
      ];
}

@Deprecated('Use GroupTypeTable.t instead.')
GroupTypeTable tGroupType = GroupTypeTable();

class GroupTypeInclude extends _i1.IncludeObject {
  GroupTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => GroupType.t;
}

class GroupTypeIncludeList extends _i1.IncludeList {
  GroupTypeIncludeList._({
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GroupType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => GroupType.t;
}

class GroupTypeRepository {
  const GroupTypeRepository._();

  Future<List<GroupType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GroupTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GroupTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<GroupType>(
      where: where?.call(GroupType.t),
      orderBy: orderBy?.call(GroupType.t),
      orderByList: orderByList?.call(GroupType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GroupType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<GroupTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GroupTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<GroupType>(
      where: where?.call(GroupType.t),
      orderBy: orderBy?.call(GroupType.t),
      orderByList: orderByList?.call(GroupType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GroupType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<GroupType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<GroupType>> insert(
    _i1.Session session,
    List<GroupType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<GroupType>(
      rows,
      transaction: transaction,
    );
  }

  Future<GroupType> insertRow(
    _i1.Session session,
    GroupType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<GroupType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<GroupType>> update(
    _i1.Session session,
    List<GroupType> rows, {
    _i1.ColumnSelections<GroupTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<GroupType>(
      rows,
      columns: columns?.call(GroupType.t),
      transaction: transaction,
    );
  }

  Future<GroupType> updateRow(
    _i1.Session session,
    GroupType row, {
    _i1.ColumnSelections<GroupTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<GroupType>(
      row,
      columns: columns?.call(GroupType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<GroupType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<GroupType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    GroupType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<GroupType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GroupTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<GroupType>(
      where: where(GroupType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GroupTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<GroupType>(
      where: where?.call(GroupType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
