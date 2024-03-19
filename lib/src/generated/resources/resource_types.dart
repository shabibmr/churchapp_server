/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ResourceType extends _i1.TableRow {
  ResourceType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory ResourceType({
    int? id,
    String? description,
    String? color,
  }) = _ResourceTypeImpl;

  factory ResourceType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ResourceType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = ResourceTypeTable();

  static const db = ResourceTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  ResourceType copyWith({
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
  static Future<List<ResourceType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ResourceType>(
      where: where != null ? where(ResourceType.t) : null,
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
  static Future<ResourceType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ResourceType>(
      where: where != null ? where(ResourceType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ResourceType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ResourceType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ResourceType>(
      where: where(ResourceType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ResourceType row, {
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
    ResourceType row, {
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
    ResourceType row, {
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
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ResourceType>(
      where: where != null ? where(ResourceType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ResourceTypeInclude include() {
    return ResourceTypeInclude._();
  }

  static ResourceTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTypeTable>? orderByList,
    ResourceTypeInclude? include,
  }) {
    return ResourceTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ResourceType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ResourceType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ResourceTypeImpl extends ResourceType {
  _ResourceTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  ResourceType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return ResourceType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class ResourceTypeTable extends _i1.Table {
  ResourceTypeTable({super.tableRelation}) : super(tableName: 'resource_type') {
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

@Deprecated('Use ResourceTypeTable.t instead.')
ResourceTypeTable tResourceType = ResourceTypeTable();

class ResourceTypeInclude extends _i1.IncludeObject {
  ResourceTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ResourceType.t;
}

class ResourceTypeIncludeList extends _i1.IncludeList {
  ResourceTypeIncludeList._({
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ResourceType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ResourceType.t;
}

class ResourceTypeRepository {
  const ResourceTypeRepository._();

  Future<List<ResourceType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ResourceType>(
      where: where?.call(ResourceType.t),
      orderBy: orderBy?.call(ResourceType.t),
      orderByList: orderByList?.call(ResourceType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ResourceType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<ResourceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ResourceType>(
      where: where?.call(ResourceType.t),
      orderBy: orderBy?.call(ResourceType.t),
      orderByList: orderByList?.call(ResourceType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ResourceType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ResourceType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ResourceType>> insert(
    _i1.Session session,
    List<ResourceType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ResourceType>(
      rows,
      transaction: transaction,
    );
  }

  Future<ResourceType> insertRow(
    _i1.Session session,
    ResourceType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ResourceType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ResourceType>> update(
    _i1.Session session,
    List<ResourceType> rows, {
    _i1.ColumnSelections<ResourceTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ResourceType>(
      rows,
      columns: columns?.call(ResourceType.t),
      transaction: transaction,
    );
  }

  Future<ResourceType> updateRow(
    _i1.Session session,
    ResourceType row, {
    _i1.ColumnSelections<ResourceTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ResourceType>(
      row,
      columns: columns?.call(ResourceType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ResourceType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ResourceType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ResourceType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ResourceType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ResourceType>(
      where: where(ResourceType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ResourceType>(
      where: where?.call(ResourceType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
