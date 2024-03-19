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

abstract class EventItenaryItem extends _i1.TableRow {
  EventItenaryItem._({
    int? id,
    this.title,
    this.description,
    this.startTime,
    this.duration,
  }) : super(id);

  factory EventItenaryItem({
    int? id,
    String? title,
    String? description,
    DateTime? startTime,
    Duration? duration,
  }) = _EventItenaryItemImpl;

  factory EventItenaryItem.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventItenaryItem(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      startTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['startTime']),
      duration: serializationManager
          .deserialize<Duration?>(jsonSerialization['duration']),
    );
  }

  static final t = EventItenaryItemTable();

  static const db = EventItenaryItemRepository._();

  String? title;

  String? description;

  DateTime? startTime;

  Duration? duration;

  @override
  _i1.Table get table => t;

  EventItenaryItem copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? startTime,
    Duration? duration,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (startTime != null) 'startTime': startTime?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'startTime': startTime,
      'duration': duration,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (startTime != null) 'startTime': startTime?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
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
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'startTime':
        startTime = value;
        return;
      case 'duration':
        duration = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EventItenaryItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EventItenaryItem>(
      where: where != null ? where(EventItenaryItem.t) : null,
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
  static Future<EventItenaryItem?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EventItenaryItem>(
      where: where != null ? where(EventItenaryItem.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EventItenaryItem?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EventItenaryItem>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventItenaryItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventItenaryItem>(
      where: where(EventItenaryItem.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EventItenaryItem row, {
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
    EventItenaryItem row, {
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
    EventItenaryItem row, {
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
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventItenaryItem>(
      where: where != null ? where(EventItenaryItem.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventItenaryItemInclude include() {
    return EventItenaryItemInclude._();
  }

  static EventItenaryItemIncludeList includeList({
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventItenaryItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventItenaryItemTable>? orderByList,
    EventItenaryItemInclude? include,
  }) {
    return EventItenaryItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventItenaryItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventItenaryItem.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventItenaryItemImpl extends EventItenaryItem {
  _EventItenaryItemImpl({
    int? id,
    String? title,
    String? description,
    DateTime? startTime,
    Duration? duration,
  }) : super._(
          id: id,
          title: title,
          description: description,
          startTime: startTime,
          duration: duration,
        );

  @override
  EventItenaryItem copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? startTime = _Undefined,
    Object? duration = _Undefined,
  }) {
    return EventItenaryItem(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      startTime: startTime is DateTime? ? startTime : this.startTime,
      duration: duration is Duration? ? duration : this.duration,
    );
  }
}

class EventItenaryItemTable extends _i1.Table {
  EventItenaryItemTable({super.tableRelation})
      : super(tableName: 'event_itenary_items') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    startTime = _i1.ColumnDateTime(
      'startTime',
      this,
    );
    duration = _i1.ColumnDuration(
      'duration',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime startTime;

  late final _i1.ColumnDuration duration;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        startTime,
        duration,
      ];
}

@Deprecated('Use EventItenaryItemTable.t instead.')
EventItenaryItemTable tEventItenaryItem = EventItenaryItemTable();

class EventItenaryItemInclude extends _i1.IncludeObject {
  EventItenaryItemInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EventItenaryItem.t;
}

class EventItenaryItemIncludeList extends _i1.IncludeList {
  EventItenaryItemIncludeList._({
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventItenaryItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventItenaryItem.t;
}

class EventItenaryItemRepository {
  const EventItenaryItemRepository._();

  Future<List<EventItenaryItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventItenaryItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventItenaryItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<EventItenaryItem>(
      where: where?.call(EventItenaryItem.t),
      orderBy: orderBy?.call(EventItenaryItem.t),
      orderByList: orderByList?.call(EventItenaryItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventItenaryItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventItenaryItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventItenaryItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<EventItenaryItem>(
      where: where?.call(EventItenaryItem.t),
      orderBy: orderBy?.call(EventItenaryItem.t),
      orderByList: orderByList?.call(EventItenaryItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventItenaryItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<EventItenaryItem>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EventItenaryItem>> insert(
    _i1.Session session,
    List<EventItenaryItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EventItenaryItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<EventItenaryItem> insertRow(
    _i1.Session session,
    EventItenaryItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EventItenaryItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EventItenaryItem>> update(
    _i1.Session session,
    List<EventItenaryItem> rows, {
    _i1.ColumnSelections<EventItenaryItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EventItenaryItem>(
      rows,
      columns: columns?.call(EventItenaryItem.t),
      transaction: transaction,
    );
  }

  Future<EventItenaryItem> updateRow(
    _i1.Session session,
    EventItenaryItem row, {
    _i1.ColumnSelections<EventItenaryItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EventItenaryItem>(
      row,
      columns: columns?.call(EventItenaryItem.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EventItenaryItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EventItenaryItem>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EventItenaryItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EventItenaryItem>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventItenaryItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EventItenaryItem>(
      where: where(EventItenaryItem.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventItenaryItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EventItenaryItem>(
      where: where?.call(EventItenaryItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
