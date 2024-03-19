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

abstract class EventGroup extends _i1.TableRow {
  EventGroup._({
    int? id,
    required this.groupId,
    this.group,
    required this.eventId,
    this.event,
  }) : super(id);

  factory EventGroup({
    int? id,
    required int groupId,
    _i2.SmallGroup? group,
    required int eventId,
    _i2.Event? event,
  }) = _EventGroupImpl;

  factory EventGroup.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventGroup(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      groupId:
          serializationManager.deserialize<int>(jsonSerialization['groupId']),
      group: serializationManager
          .deserialize<_i2.SmallGroup?>(jsonSerialization['group']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
      event: serializationManager
          .deserialize<_i2.Event?>(jsonSerialization['event']),
    );
  }

  static final t = EventGroupTable();

  static const db = EventGroupRepository._();

  int groupId;

  _i2.SmallGroup? group;

  int eventId;

  _i2.Event? event;

  int? _eventsEventgroupsEventsId;

  @override
  _i1.Table get table => t;

  EventGroup copyWith({
    int? id,
    int? groupId,
    _i2.SmallGroup? group,
    int? eventId,
    _i2.Event? event,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'groupId': groupId,
      if (group != null) 'group': group?.toJson(),
      'eventId': eventId,
      if (event != null) 'event': event?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'groupId': groupId,
      'eventId': eventId,
      '_eventsEventgroupsEventsId': _eventsEventgroupsEventsId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'groupId': groupId,
      if (group != null) 'group': group?.allToJson(),
      'eventId': eventId,
      if (event != null) 'event': event?.allToJson(),
      if (_eventsEventgroupsEventsId != null)
        '_eventsEventgroupsEventsId': _eventsEventgroupsEventsId,
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
      case 'eventId':
        eventId = value;
        return;
      case '_eventsEventgroupsEventsId':
        _eventsEventgroupsEventsId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EventGroup>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventGroupInclude? include,
  }) async {
    return session.db.find<EventGroup>(
      where: where != null ? where(EventGroup.t) : null,
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
  static Future<EventGroup?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventGroupInclude? include,
  }) async {
    return session.db.findSingleRow<EventGroup>(
      where: where != null ? where(EventGroup.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EventGroup?> findById(
    _i1.Session session,
    int id, {
    EventGroupInclude? include,
  }) async {
    return session.db.findById<EventGroup>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventGroupTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventGroup>(
      where: where(EventGroup.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EventGroup row, {
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
    EventGroup row, {
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
    EventGroup row, {
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
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventGroup>(
      where: where != null ? where(EventGroup.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventGroupInclude include({
    _i2.SmallGroupInclude? group,
    _i2.EventInclude? event,
  }) {
    return EventGroupInclude._(
      group: group,
      event: event,
    );
  }

  static EventGroupIncludeList includeList({
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventGroupTable>? orderByList,
    EventGroupInclude? include,
  }) {
    return EventGroupIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventGroup.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventGroup.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventGroupImpl extends EventGroup {
  _EventGroupImpl({
    int? id,
    required int groupId,
    _i2.SmallGroup? group,
    required int eventId,
    _i2.Event? event,
  }) : super._(
          id: id,
          groupId: groupId,
          group: group,
          eventId: eventId,
          event: event,
        );

  @override
  EventGroup copyWith({
    Object? id = _Undefined,
    int? groupId,
    Object? group = _Undefined,
    int? eventId,
    Object? event = _Undefined,
  }) {
    return EventGroup(
      id: id is int? ? id : this.id,
      groupId: groupId ?? this.groupId,
      group: group is _i2.SmallGroup? ? group : this.group?.copyWith(),
      eventId: eventId ?? this.eventId,
      event: event is _i2.Event? ? event : this.event?.copyWith(),
    );
  }
}

class EventGroupImplicit extends _EventGroupImpl {
  EventGroupImplicit._({
    int? id,
    required int groupId,
    _i2.SmallGroup? group,
    required int eventId,
    _i2.Event? event,
    this.$_eventsEventgroupsEventsId,
  }) : super(
          id: id,
          groupId: groupId,
          group: group,
          eventId: eventId,
          event: event,
        );

  factory EventGroupImplicit(
    EventGroup eventGroup, {
    int? $_eventsEventgroupsEventsId,
  }) {
    return EventGroupImplicit._(
      id: eventGroup.id,
      groupId: eventGroup.groupId,
      group: eventGroup.group,
      eventId: eventGroup.eventId,
      event: eventGroup.event,
      $_eventsEventgroupsEventsId: $_eventsEventgroupsEventsId,
    );
  }

  int? $_eventsEventgroupsEventsId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_eventsEventgroupsEventsId': $_eventsEventgroupsEventsId});
    return jsonMap;
  }
}

class EventGroupTable extends _i1.Table {
  EventGroupTable({super.tableRelation}) : super(tableName: 'event_group') {
    groupId = _i1.ColumnInt(
      'groupId',
      this,
    );
    eventId = _i1.ColumnInt(
      'eventId',
      this,
    );
    $_eventsEventgroupsEventsId = _i1.ColumnInt(
      '_eventsEventgroupsEventsId',
      this,
    );
  }

  late final _i1.ColumnInt groupId;

  _i2.SmallGroupTable? _group;

  late final _i1.ColumnInt eventId;

  _i2.EventTable? _event;

  late final _i1.ColumnInt $_eventsEventgroupsEventsId;

  _i2.SmallGroupTable get group {
    if (_group != null) return _group!;
    _group = _i1.createRelationTable(
      relationFieldName: 'group',
      field: EventGroup.t.groupId,
      foreignField: _i2.SmallGroup.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.SmallGroupTable(tableRelation: foreignTableRelation),
    );
    return _group!;
  }

  _i2.EventTable get event {
    if (_event != null) return _event!;
    _event = _i1.createRelationTable(
      relationFieldName: 'event',
      field: EventGroup.t.eventId,
      foreignField: _i2.Event.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventTable(tableRelation: foreignTableRelation),
    );
    return _event!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        groupId,
        eventId,
        $_eventsEventgroupsEventsId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'group') {
      return group;
    }
    if (relationField == 'event') {
      return event;
    }
    return null;
  }
}

@Deprecated('Use EventGroupTable.t instead.')
EventGroupTable tEventGroup = EventGroupTable();

class EventGroupInclude extends _i1.IncludeObject {
  EventGroupInclude._({
    _i2.SmallGroupInclude? group,
    _i2.EventInclude? event,
  }) {
    _group = group;
    _event = event;
  }

  _i2.SmallGroupInclude? _group;

  _i2.EventInclude? _event;

  @override
  Map<String, _i1.Include?> get includes => {
        'group': _group,
        'event': _event,
      };

  @override
  _i1.Table get table => EventGroup.t;
}

class EventGroupIncludeList extends _i1.IncludeList {
  EventGroupIncludeList._({
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventGroup.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventGroup.t;
}

class EventGroupRepository {
  const EventGroupRepository._();

  final attachRow = const EventGroupAttachRowRepository._();

  Future<List<EventGroup>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventGroupTable>? orderByList,
    _i1.Transaction? transaction,
    EventGroupInclude? include,
  }) async {
    return session.dbNext.find<EventGroup>(
      where: where?.call(EventGroup.t),
      orderBy: orderBy?.call(EventGroup.t),
      orderByList: orderByList?.call(EventGroup.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<EventGroup?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventGroupTable>? orderByList,
    _i1.Transaction? transaction,
    EventGroupInclude? include,
  }) async {
    return session.dbNext.findFirstRow<EventGroup>(
      where: where?.call(EventGroup.t),
      orderBy: orderBy?.call(EventGroup.t),
      orderByList: orderByList?.call(EventGroup.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<EventGroup?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventGroupInclude? include,
  }) async {
    return session.dbNext.findById<EventGroup>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<EventGroup>> insert(
    _i1.Session session,
    List<EventGroup> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EventGroup>(
      rows,
      transaction: transaction,
    );
  }

  Future<EventGroup> insertRow(
    _i1.Session session,
    EventGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EventGroup>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EventGroup>> update(
    _i1.Session session,
    List<EventGroup> rows, {
    _i1.ColumnSelections<EventGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EventGroup>(
      rows,
      columns: columns?.call(EventGroup.t),
      transaction: transaction,
    );
  }

  Future<EventGroup> updateRow(
    _i1.Session session,
    EventGroup row, {
    _i1.ColumnSelections<EventGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EventGroup>(
      row,
      columns: columns?.call(EventGroup.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EventGroup> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EventGroup>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EventGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EventGroup>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventGroupTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EventGroup>(
      where: where(EventGroup.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventGroupTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EventGroup>(
      where: where?.call(EventGroup.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventGroupAttachRowRepository {
  const EventGroupAttachRowRepository._();

  Future<void> group(
    _i1.Session session,
    EventGroup eventGroup,
    _i2.SmallGroup group,
  ) async {
    if (eventGroup.id == null) {
      throw ArgumentError.notNull('eventGroup.id');
    }
    if (group.id == null) {
      throw ArgumentError.notNull('group.id');
    }

    var $eventGroup = eventGroup.copyWith(groupId: group.id);
    await session.dbNext.updateRow<EventGroup>(
      $eventGroup,
      columns: [EventGroup.t.groupId],
    );
  }

  Future<void> event(
    _i1.Session session,
    EventGroup eventGroup,
    _i2.Event event,
  ) async {
    if (eventGroup.id == null) {
      throw ArgumentError.notNull('eventGroup.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventGroup = eventGroup.copyWith(eventId: event.id);
    await session.dbNext.updateRow<EventGroup>(
      $eventGroup,
      columns: [EventGroup.t.eventId],
    );
  }
}
