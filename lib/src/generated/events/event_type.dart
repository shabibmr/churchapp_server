/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class EventType extends _i1.TableRow {
  EventType._({
    int? id,
    this.description,
    this.color,
    this.createdBy,
    this.createdAt,
  }) : super(id);

  factory EventType({
    int? id,
    String? description,
    String? color,
    int? createdBy,
    DateTime? createdAt,
  }) = _EventTypeImpl;

  factory EventType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
      createdBy: serializationManager
          .deserialize<int?>(jsonSerialization['createdBy']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
    );
  }

  static final t = EventTypeTable();

  static const db = EventTypeRepository._();

  String? description;

  String? color;

  int? createdBy;

  DateTime? createdAt;

  @override
  _i1.Table get table => t;

  EventType copyWith({
    int? id,
    String? description,
    String? color,
    int? createdBy,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (createdBy != null) 'createdBy': createdBy,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'description': description,
      'color': color,
      'createdBy': createdBy,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (createdBy != null) 'createdBy': createdBy,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
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
      case 'createdBy':
        createdBy = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EventType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EventType>(
      where: where != null ? where(EventType.t) : null,
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
  static Future<EventType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EventType>(
      where: where != null ? where(EventType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EventType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EventType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventType>(
      where: where(EventType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EventType row, {
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
    EventType row, {
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
    EventType row, {
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
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventType>(
      where: where != null ? where(EventType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventTypeInclude include() {
    return EventTypeInclude._();
  }

  static EventTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypeTable>? orderByList,
    EventTypeInclude? include,
  }) {
    return EventTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventTypeImpl extends EventType {
  _EventTypeImpl({
    int? id,
    String? description,
    String? color,
    int? createdBy,
    DateTime? createdAt,
  }) : super._(
          id: id,
          description: description,
          color: color,
          createdBy: createdBy,
          createdAt: createdAt,
        );

  @override
  EventType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
    Object? createdBy = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return EventType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
      createdBy: createdBy is int? ? createdBy : this.createdBy,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class EventTypeTable extends _i1.Table {
  EventTypeTable({super.tableRelation}) : super(tableName: 'event_types') {
    description = _i1.ColumnString(
      'description',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
    createdBy = _i1.ColumnInt(
      'createdBy',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString description;

  late final _i1.ColumnString color;

  late final _i1.ColumnInt createdBy;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        description,
        color,
        createdBy,
        createdAt,
      ];
}

@Deprecated('Use EventTypeTable.t instead.')
EventTypeTable tEventType = EventTypeTable();

class EventTypeInclude extends _i1.IncludeObject {
  EventTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EventType.t;
}

class EventTypeIncludeList extends _i1.IncludeList {
  EventTypeIncludeList._({
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventType.t;
}

class EventTypeRepository {
  const EventTypeRepository._();

  Future<List<EventType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<EventType>(
      where: where?.call(EventType.t),
      orderBy: orderBy?.call(EventType.t),
      orderByList: orderByList?.call(EventType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<EventType>(
      where: where?.call(EventType.t),
      orderBy: orderBy?.call(EventType.t),
      orderByList: orderByList?.call(EventType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<EventType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EventType>> insert(
    _i1.Session session,
    List<EventType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EventType>(
      rows,
      transaction: transaction,
    );
  }

  Future<EventType> insertRow(
    _i1.Session session,
    EventType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EventType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EventType>> update(
    _i1.Session session,
    List<EventType> rows, {
    _i1.ColumnSelections<EventTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EventType>(
      rows,
      columns: columns?.call(EventType.t),
      transaction: transaction,
    );
  }

  Future<EventType> updateRow(
    _i1.Session session,
    EventType row, {
    _i1.ColumnSelections<EventTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EventType>(
      row,
      columns: columns?.call(EventType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EventType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EventType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EventType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EventType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EventType>(
      where: where(EventType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EventType>(
      where: where?.call(EventType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
