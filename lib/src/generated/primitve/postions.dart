/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Position extends _i1.TableRow {
  Position._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory Position({
    int? id,
    String? description,
    String? color,
  }) = _PositionImpl;

  factory Position.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Position(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = PositionTable();

  static const db = PositionRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  Position copyWith({
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
  static Future<List<Position>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Position>(
      where: where != null ? where(Position.t) : null,
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
  static Future<Position?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Position>(
      where: where != null ? where(Position.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Position?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Position>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PositionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Position>(
      where: where(Position.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Position row, {
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
    Position row, {
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
    Position row, {
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
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Position>(
      where: where != null ? where(Position.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PositionInclude include() {
    return PositionInclude._();
  }

  static PositionIncludeList includeList({
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PositionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PositionTable>? orderByList,
    PositionInclude? include,
  }) {
    return PositionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Position.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Position.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PositionImpl extends Position {
  _PositionImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  Position copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return Position(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class PositionTable extends _i1.Table {
  PositionTable({super.tableRelation}) : super(tableName: 'positions') {
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

@Deprecated('Use PositionTable.t instead.')
PositionTable tPosition = PositionTable();

class PositionInclude extends _i1.IncludeObject {
  PositionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Position.t;
}

class PositionIncludeList extends _i1.IncludeList {
  PositionIncludeList._({
    _i1.WhereExpressionBuilder<PositionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Position.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Position.t;
}

class PositionRepository {
  const PositionRepository._();

  Future<List<Position>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PositionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PositionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Position>(
      where: where?.call(Position.t),
      orderBy: orderBy?.call(Position.t),
      orderByList: orderByList?.call(Position.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Position?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? offset,
    _i1.OrderByBuilder<PositionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PositionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Position>(
      where: where?.call(Position.t),
      orderBy: orderBy?.call(Position.t),
      orderByList: orderByList?.call(Position.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Position?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Position>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Position>> insert(
    _i1.Session session,
    List<Position> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Position>(
      rows,
      transaction: transaction,
    );
  }

  Future<Position> insertRow(
    _i1.Session session,
    Position row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Position>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Position>> update(
    _i1.Session session,
    List<Position> rows, {
    _i1.ColumnSelections<PositionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Position>(
      rows,
      columns: columns?.call(Position.t),
      transaction: transaction,
    );
  }

  Future<Position> updateRow(
    _i1.Session session,
    Position row, {
    _i1.ColumnSelections<PositionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Position>(
      row,
      columns: columns?.call(Position.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Position> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Position>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Position row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Position>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PositionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Position>(
      where: where(Position.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PositionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Position>(
      where: where?.call(Position.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
