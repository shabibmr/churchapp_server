/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class SermonType extends _i1.TableRow {
  SermonType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory SermonType({
    int? id,
    String? description,
    String? color,
  }) = _SermonTypeImpl;

  factory SermonType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SermonType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = SermonTypeTable();

  static const db = SermonTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  SermonType copyWith({
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
  static Future<List<SermonType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SermonType>(
      where: where != null ? where(SermonType.t) : null,
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
  static Future<SermonType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SermonType>(
      where: where != null ? where(SermonType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<SermonType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SermonType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SermonTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SermonType>(
      where: where(SermonType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    SermonType row, {
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
    SermonType row, {
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
    SermonType row, {
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
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SermonType>(
      where: where != null ? where(SermonType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SermonTypeInclude include() {
    return SermonTypeInclude._();
  }

  static SermonTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SermonTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTypeTable>? orderByList,
    SermonTypeInclude? include,
  }) {
    return SermonTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SermonType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SermonType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SermonTypeImpl extends SermonType {
  _SermonTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  SermonType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return SermonType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class SermonTypeTable extends _i1.Table {
  SermonTypeTable({super.tableRelation}) : super(tableName: 'sermon_type') {
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

@Deprecated('Use SermonTypeTable.t instead.')
SermonTypeTable tSermonType = SermonTypeTable();

class SermonTypeInclude extends _i1.IncludeObject {
  SermonTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => SermonType.t;
}

class SermonTypeIncludeList extends _i1.IncludeList {
  SermonTypeIncludeList._({
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SermonType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SermonType.t;
}

class SermonTypeRepository {
  const SermonTypeRepository._();

  Future<List<SermonType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SermonTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<SermonType>(
      where: where?.call(SermonType.t),
      orderBy: orderBy?.call(SermonType.t),
      orderByList: orderByList?.call(SermonType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SermonType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<SermonTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<SermonType>(
      where: where?.call(SermonType.t),
      orderBy: orderBy?.call(SermonType.t),
      orderByList: orderByList?.call(SermonType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SermonType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<SermonType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<SermonType>> insert(
    _i1.Session session,
    List<SermonType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<SermonType>(
      rows,
      transaction: transaction,
    );
  }

  Future<SermonType> insertRow(
    _i1.Session session,
    SermonType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<SermonType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SermonType>> update(
    _i1.Session session,
    List<SermonType> rows, {
    _i1.ColumnSelections<SermonTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<SermonType>(
      rows,
      columns: columns?.call(SermonType.t),
      transaction: transaction,
    );
  }

  Future<SermonType> updateRow(
    _i1.Session session,
    SermonType row, {
    _i1.ColumnSelections<SermonTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<SermonType>(
      row,
      columns: columns?.call(SermonType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<SermonType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<SermonType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    SermonType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<SermonType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SermonTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<SermonType>(
      where: where(SermonType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<SermonType>(
      where: where?.call(SermonType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
