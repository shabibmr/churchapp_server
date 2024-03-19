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

abstract class Resource extends _i1.TableRow {
  Resource._({
    int? id,
    this.name,
    this.resourceType,
    this.location,
    this.quanity,
    this.rent,
  }) : super(id);

  factory Resource({
    int? id,
    String? name,
    _i2.ResourceType? resourceType,
    String? location,
    int? quanity,
    int? rent,
  }) = _ResourceImpl;

  factory Resource.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Resource(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name:
          serializationManager.deserialize<String?>(jsonSerialization['name']),
      resourceType: serializationManager
          .deserialize<_i2.ResourceType?>(jsonSerialization['resourceType']),
      location: serializationManager
          .deserialize<String?>(jsonSerialization['location']),
      quanity:
          serializationManager.deserialize<int?>(jsonSerialization['quanity']),
      rent: serializationManager.deserialize<int?>(jsonSerialization['rent']),
    );
  }

  static final t = ResourceTable();

  static const db = ResourceRepository._();

  String? name;

  _i2.ResourceType? resourceType;

  String? location;

  int? quanity;

  int? rent;

  @override
  _i1.Table get table => t;

  Resource copyWith({
    int? id,
    String? name,
    _i2.ResourceType? resourceType,
    String? location,
    int? quanity,
    int? rent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (resourceType != null) 'resourceType': resourceType?.toJson(),
      if (location != null) 'location': location,
      if (quanity != null) 'quanity': quanity,
      if (rent != null) 'rent': rent,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'resourceType': resourceType,
      'location': location,
      'quanity': quanity,
      'rent': rent,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (resourceType != null) 'resourceType': resourceType?.allToJson(),
      if (location != null) 'location': location,
      if (quanity != null) 'quanity': quanity,
      if (rent != null) 'rent': rent,
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
      case 'resourceType':
        resourceType = value;
        return;
      case 'location':
        location = value;
        return;
      case 'quanity':
        quanity = value;
        return;
      case 'rent':
        rent = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Resource>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Resource>(
      where: where != null ? where(Resource.t) : null,
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
  static Future<Resource?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Resource>(
      where: where != null ? where(Resource.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Resource?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Resource>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Resource>(
      where: where(Resource.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Resource row, {
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
    Resource row, {
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
    Resource row, {
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
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Resource>(
      where: where != null ? where(Resource.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ResourceInclude include() {
    return ResourceInclude._();
  }

  static ResourceIncludeList includeList({
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTable>? orderByList,
    ResourceInclude? include,
  }) {
    return ResourceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Resource.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Resource.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ResourceImpl extends Resource {
  _ResourceImpl({
    int? id,
    String? name,
    _i2.ResourceType? resourceType,
    String? location,
    int? quanity,
    int? rent,
  }) : super._(
          id: id,
          name: name,
          resourceType: resourceType,
          location: location,
          quanity: quanity,
          rent: rent,
        );

  @override
  Resource copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? resourceType = _Undefined,
    Object? location = _Undefined,
    Object? quanity = _Undefined,
    Object? rent = _Undefined,
  }) {
    return Resource(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      resourceType: resourceType is _i2.ResourceType?
          ? resourceType
          : this.resourceType?.copyWith(),
      location: location is String? ? location : this.location,
      quanity: quanity is int? ? quanity : this.quanity,
      rent: rent is int? ? rent : this.rent,
    );
  }
}

class ResourceTable extends _i1.Table {
  ResourceTable({super.tableRelation}) : super(tableName: 'resources') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    resourceType = _i1.ColumnSerializable(
      'resourceType',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    quanity = _i1.ColumnInt(
      'quanity',
      this,
    );
    rent = _i1.ColumnInt(
      'rent',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnSerializable resourceType;

  late final _i1.ColumnString location;

  late final _i1.ColumnInt quanity;

  late final _i1.ColumnInt rent;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        resourceType,
        location,
        quanity,
        rent,
      ];
}

@Deprecated('Use ResourceTable.t instead.')
ResourceTable tResource = ResourceTable();

class ResourceInclude extends _i1.IncludeObject {
  ResourceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Resource.t;
}

class ResourceIncludeList extends _i1.IncludeList {
  ResourceIncludeList._({
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Resource.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Resource.t;
}

class ResourceRepository {
  const ResourceRepository._();

  Future<List<Resource>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Resource>(
      where: where?.call(Resource.t),
      orderBy: orderBy?.call(Resource.t),
      orderByList: orderByList?.call(Resource.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Resource?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? offset,
    _i1.OrderByBuilder<ResourceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Resource>(
      where: where?.call(Resource.t),
      orderBy: orderBy?.call(Resource.t),
      orderByList: orderByList?.call(Resource.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Resource?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Resource>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Resource>> insert(
    _i1.Session session,
    List<Resource> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Resource>(
      rows,
      transaction: transaction,
    );
  }

  Future<Resource> insertRow(
    _i1.Session session,
    Resource row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Resource>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Resource>> update(
    _i1.Session session,
    List<Resource> rows, {
    _i1.ColumnSelections<ResourceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Resource>(
      rows,
      columns: columns?.call(Resource.t),
      transaction: transaction,
    );
  }

  Future<Resource> updateRow(
    _i1.Session session,
    Resource row, {
    _i1.ColumnSelections<ResourceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Resource>(
      row,
      columns: columns?.call(Resource.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Resource> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Resource>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Resource row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Resource>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Resource>(
      where: where(Resource.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Resource>(
      where: where?.call(Resource.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
