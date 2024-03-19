/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ServiceType extends _i1.TableRow {
  ServiceType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory ServiceType({
    int? id,
    String? description,
    String? color,
  }) = _ServiceTypeImpl;

  factory ServiceType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ServiceType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = ServiceTypeTable();

  static const db = ServiceTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  ServiceType copyWith({
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
  static Future<List<ServiceType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ServiceType>(
      where: where != null ? where(ServiceType.t) : null,
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
  static Future<ServiceType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ServiceType>(
      where: where != null ? where(ServiceType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ServiceType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ServiceType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServiceType>(
      where: where(ServiceType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ServiceType row, {
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
    ServiceType row, {
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
    ServiceType row, {
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
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServiceType>(
      where: where != null ? where(ServiceType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ServiceTypeInclude include() {
    return ServiceTypeInclude._();
  }

  static ServiceTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTypeTable>? orderByList,
    ServiceTypeInclude? include,
  }) {
    return ServiceTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ServiceType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ServiceTypeImpl extends ServiceType {
  _ServiceTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  ServiceType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return ServiceType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class ServiceTypeTable extends _i1.Table {
  ServiceTypeTable({super.tableRelation}) : super(tableName: 'service_type') {
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

@Deprecated('Use ServiceTypeTable.t instead.')
ServiceTypeTable tServiceType = ServiceTypeTable();

class ServiceTypeInclude extends _i1.IncludeObject {
  ServiceTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ServiceType.t;
}

class ServiceTypeIncludeList extends _i1.IncludeList {
  ServiceTypeIncludeList._({
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ServiceType.t;
}

class ServiceTypeRepository {
  const ServiceTypeRepository._();

  Future<List<ServiceType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ServiceType>(
      where: where?.call(ServiceType.t),
      orderBy: orderBy?.call(ServiceType.t),
      orderByList: orderByList?.call(ServiceType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ServiceType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServiceTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ServiceType>(
      where: where?.call(ServiceType.t),
      orderBy: orderBy?.call(ServiceType.t),
      orderByList: orderByList?.call(ServiceType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ServiceType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ServiceType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ServiceType>> insert(
    _i1.Session session,
    List<ServiceType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ServiceType>(
      rows,
      transaction: transaction,
    );
  }

  Future<ServiceType> insertRow(
    _i1.Session session,
    ServiceType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ServiceType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ServiceType>> update(
    _i1.Session session,
    List<ServiceType> rows, {
    _i1.ColumnSelections<ServiceTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ServiceType>(
      rows,
      columns: columns?.call(ServiceType.t),
      transaction: transaction,
    );
  }

  Future<ServiceType> updateRow(
    _i1.Session session,
    ServiceType row, {
    _i1.ColumnSelections<ServiceTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ServiceType>(
      row,
      columns: columns?.call(ServiceType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ServiceType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ServiceType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ServiceType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ServiceType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ServiceType>(
      where: where(ServiceType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ServiceType>(
      where: where?.call(ServiceType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
