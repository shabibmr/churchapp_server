/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class VenueType extends _i1.TableRow {
  VenueType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory VenueType({
    int? id,
    String? description,
    String? color,
  }) = _VenueTypeImpl;

  factory VenueType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return VenueType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = VenueTypeTable();

  static const db = VenueTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  VenueType copyWith({
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
  static Future<List<VenueType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<VenueType>(
      where: where != null ? where(VenueType.t) : null,
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
  static Future<VenueType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<VenueType>(
      where: where != null ? where(VenueType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<VenueType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<VenueType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<VenueType>(
      where: where(VenueType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    VenueType row, {
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
    VenueType row, {
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
    VenueType row, {
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
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<VenueType>(
      where: where != null ? where(VenueType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static VenueTypeInclude include() {
    return VenueTypeInclude._();
  }

  static VenueTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTypeTable>? orderByList,
    VenueTypeInclude? include,
  }) {
    return VenueTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(VenueType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(VenueType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _VenueTypeImpl extends VenueType {
  _VenueTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  VenueType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return VenueType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class VenueTypeTable extends _i1.Table {
  VenueTypeTable({super.tableRelation}) : super(tableName: 'venue_type') {
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

@Deprecated('Use VenueTypeTable.t instead.')
VenueTypeTable tVenueType = VenueTypeTable();

class VenueTypeInclude extends _i1.IncludeObject {
  VenueTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => VenueType.t;
}

class VenueTypeIncludeList extends _i1.IncludeList {
  VenueTypeIncludeList._({
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(VenueType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => VenueType.t;
}

class VenueTypeRepository {
  const VenueTypeRepository._();

  Future<List<VenueType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<VenueType>(
      where: where?.call(VenueType.t),
      orderBy: orderBy?.call(VenueType.t),
      orderByList: orderByList?.call(VenueType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<VenueType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<VenueTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<VenueType>(
      where: where?.call(VenueType.t),
      orderBy: orderBy?.call(VenueType.t),
      orderByList: orderByList?.call(VenueType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<VenueType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<VenueType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<VenueType>> insert(
    _i1.Session session,
    List<VenueType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<VenueType>(
      rows,
      transaction: transaction,
    );
  }

  Future<VenueType> insertRow(
    _i1.Session session,
    VenueType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<VenueType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<VenueType>> update(
    _i1.Session session,
    List<VenueType> rows, {
    _i1.ColumnSelections<VenueTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<VenueType>(
      rows,
      columns: columns?.call(VenueType.t),
      transaction: transaction,
    );
  }

  Future<VenueType> updateRow(
    _i1.Session session,
    VenueType row, {
    _i1.ColumnSelections<VenueTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<VenueType>(
      row,
      columns: columns?.call(VenueType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<VenueType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<VenueType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    VenueType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<VenueType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<VenueType>(
      where: where(VenueType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<VenueType>(
      where: where?.call(VenueType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
