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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Event extends _i1.TableRow {
  Event._({
    int? id,
    this.title,
    this.description,
    this.type,
    this.eventMeetings,
    this.eventGroups,
  }) : super(id);

  factory Event({
    int? id,
    String? title,
    String? description,
    _i2.EventType? type,
    List<_i2.EventMeeting>? eventMeetings,
    List<_i2.EventGroup>? eventGroups,
  }) = _EventImpl;

  factory Event.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Event(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      type: serializationManager
          .deserialize<_i2.EventType?>(jsonSerialization['type']),
      eventMeetings: serializationManager.deserialize<List<_i2.EventMeeting>?>(
          jsonSerialization['eventMeetings']),
      eventGroups: serializationManager
          .deserialize<List<_i2.EventGroup>?>(jsonSerialization['eventGroups']),
    );
  }

  static final t = EventTable();

  static const db = EventRepository._();

  String? title;

  String? description;

  _i2.EventType? type;

  List<_i2.EventMeeting>? eventMeetings;

  List<_i2.EventGroup>? eventGroups;

  @override
  _i1.Table get table => t;

  Event copyWith({
    int? id,
    String? title,
    String? description,
    _i2.EventType? type,
    List<_i2.EventMeeting>? eventMeetings,
    List<_i2.EventGroup>? eventGroups,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type?.toJson(),
      if (eventMeetings != null)
        'eventMeetings': eventMeetings?.toJson(valueToJson: (v) => v.toJson()),
      if (eventGroups != null)
        'eventGroups': eventGroups?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type?.allToJson(),
      if (eventMeetings != null)
        'eventMeetings':
            eventMeetings?.toJson(valueToJson: (v) => v.allToJson()),
      if (eventGroups != null)
        'eventGroups': eventGroups?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'type':
        type = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.find<Event>(
      where: where != null ? where(Event.t) : null,
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
  static Future<Event?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.findSingleRow<Event>(
      where: where != null ? where(Event.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Event?> findById(
    _i1.Session session,
    int id, {
    EventInclude? include,
  }) async {
    return session.db.findById<Event>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Event row, {
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
    Event row, {
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
    Event row, {
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
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Event>(
      where: where != null ? where(Event.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventInclude include({
    _i2.EventMeetingIncludeList? eventMeetings,
    _i2.EventGroupIncludeList? eventGroups,
  }) {
    return EventInclude._(
      eventMeetings: eventMeetings,
      eventGroups: eventGroups,
    );
  }

  static EventIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    EventInclude? include,
  }) {
    return EventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Event.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Event.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventImpl extends Event {
  _EventImpl({
    int? id,
    String? title,
    String? description,
    _i2.EventType? type,
    List<_i2.EventMeeting>? eventMeetings,
    List<_i2.EventGroup>? eventGroups,
  }) : super._(
          id: id,
          title: title,
          description: description,
          type: type,
          eventMeetings: eventMeetings,
          eventGroups: eventGroups,
        );

  @override
  Event copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? type = _Undefined,
    Object? eventMeetings = _Undefined,
    Object? eventGroups = _Undefined,
  }) {
    return Event(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      type: type is _i2.EventType? ? type : this.type?.copyWith(),
      eventMeetings: eventMeetings is List<_i2.EventMeeting>?
          ? eventMeetings
          : this.eventMeetings?.clone(),
      eventGroups: eventGroups is List<_i2.EventGroup>?
          ? eventGroups
          : this.eventGroups?.clone(),
    );
  }
}

class EventTable extends _i1.Table {
  EventTable({super.tableRelation}) : super(tableName: 'events') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    type = _i1.ColumnSerializable(
      'type',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable type;

  _i2.EventMeetingTable? ___eventMeetings;

  _i1.ManyRelation<_i2.EventMeetingTable>? _eventMeetings;

  _i2.EventGroupTable? ___eventGroups;

  _i1.ManyRelation<_i2.EventGroupTable>? _eventGroups;

  _i2.EventMeetingTable get __eventMeetings {
    if (___eventMeetings != null) return ___eventMeetings!;
    ___eventMeetings = _i1.createRelationTable(
      relationFieldName: '__eventMeetings',
      field: Event.t.id,
      foreignField: _i2.EventMeeting.t.$_eventsEventmeetingsEventsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventMeetingTable(tableRelation: foreignTableRelation),
    );
    return ___eventMeetings!;
  }

  _i2.EventGroupTable get __eventGroups {
    if (___eventGroups != null) return ___eventGroups!;
    ___eventGroups = _i1.createRelationTable(
      relationFieldName: '__eventGroups',
      field: Event.t.id,
      foreignField: _i2.EventGroup.t.$_eventsEventgroupsEventsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventGroupTable(tableRelation: foreignTableRelation),
    );
    return ___eventGroups!;
  }

  _i1.ManyRelation<_i2.EventMeetingTable> get eventMeetings {
    if (_eventMeetings != null) return _eventMeetings!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'eventMeetings',
      field: Event.t.id,
      foreignField: _i2.EventMeeting.t.$_eventsEventmeetingsEventsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventMeetingTable(tableRelation: foreignTableRelation),
    );
    _eventMeetings = _i1.ManyRelation<_i2.EventMeetingTable>(
      tableWithRelations: relationTable,
      table: _i2.EventMeetingTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _eventMeetings!;
  }

  _i1.ManyRelation<_i2.EventGroupTable> get eventGroups {
    if (_eventGroups != null) return _eventGroups!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'eventGroups',
      field: Event.t.id,
      foreignField: _i2.EventGroup.t.$_eventsEventgroupsEventsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventGroupTable(tableRelation: foreignTableRelation),
    );
    _eventGroups = _i1.ManyRelation<_i2.EventGroupTable>(
      tableWithRelations: relationTable,
      table: _i2.EventGroupTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _eventGroups!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        type,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'eventMeetings') {
      return __eventMeetings;
    }
    if (relationField == 'eventGroups') {
      return __eventGroups;
    }
    return null;
  }
}

@Deprecated('Use EventTable.t instead.')
EventTable tEvent = EventTable();

class EventInclude extends _i1.IncludeObject {
  EventInclude._({
    _i2.EventMeetingIncludeList? eventMeetings,
    _i2.EventGroupIncludeList? eventGroups,
  }) {
    _eventMeetings = eventMeetings;
    _eventGroups = eventGroups;
  }

  _i2.EventMeetingIncludeList? _eventMeetings;

  _i2.EventGroupIncludeList? _eventGroups;

  @override
  Map<String, _i1.Include?> get includes => {
        'eventMeetings': _eventMeetings,
        'eventGroups': _eventGroups,
      };

  @override
  _i1.Table get table => Event.t;
}

class EventIncludeList extends _i1.IncludeList {
  EventIncludeList._({
    _i1.WhereExpressionBuilder<EventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Event.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Event.t;
}

class EventRepository {
  const EventRepository._();

  final attach = const EventAttachRepository._();

  final attachRow = const EventAttachRowRepository._();

  final detach = const EventDetachRepository._();

  final detachRow = const EventDetachRowRepository._();

  Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.dbNext.find<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Event?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Event?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.dbNext.findById<Event>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Event>> insert(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<Event> insertRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Event>> update(
    _i1.Session session,
    List<Event> rows, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Event>(
      rows,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<Event> updateRow(
    _i1.Session session,
    Event row, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Event>(
      row,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Event>(
      where: where?.call(Event.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventAttachRepository {
  const EventAttachRepository._();

  Future<void> eventMeetings(
    _i1.Session session,
    Event event,
    List<_i2.EventMeeting> eventMeeting,
  ) async {
    if (eventMeeting.any((e) => e.id == null)) {
      throw ArgumentError.notNull('eventMeeting.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventMeeting = eventMeeting
        .map((e) => _i2.EventMeetingImplicit(
              e,
              $_eventsEventmeetingsEventsId: event.id,
            ))
        .toList();
    await session.dbNext.update<_i2.EventMeeting>(
      $eventMeeting,
      columns: [_i2.EventMeeting.t.$_eventsEventmeetingsEventsId],
    );
  }

  Future<void> eventGroups(
    _i1.Session session,
    Event event,
    List<_i2.EventGroup> eventGroup,
  ) async {
    if (eventGroup.any((e) => e.id == null)) {
      throw ArgumentError.notNull('eventGroup.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventGroup = eventGroup
        .map((e) => _i2.EventGroupImplicit(
              e,
              $_eventsEventgroupsEventsId: event.id,
            ))
        .toList();
    await session.dbNext.update<_i2.EventGroup>(
      $eventGroup,
      columns: [_i2.EventGroup.t.$_eventsEventgroupsEventsId],
    );
  }
}

class EventAttachRowRepository {
  const EventAttachRowRepository._();

  Future<void> eventMeetings(
    _i1.Session session,
    Event event,
    _i2.EventMeeting eventMeeting,
  ) async {
    if (eventMeeting.id == null) {
      throw ArgumentError.notNull('eventMeeting.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventMeeting = _i2.EventMeetingImplicit(
      eventMeeting,
      $_eventsEventmeetingsEventsId: event.id,
    );
    await session.dbNext.updateRow<_i2.EventMeeting>(
      $eventMeeting,
      columns: [_i2.EventMeeting.t.$_eventsEventmeetingsEventsId],
    );
  }

  Future<void> eventGroups(
    _i1.Session session,
    Event event,
    _i2.EventGroup eventGroup,
  ) async {
    if (eventGroup.id == null) {
      throw ArgumentError.notNull('eventGroup.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventGroup = _i2.EventGroupImplicit(
      eventGroup,
      $_eventsEventgroupsEventsId: event.id,
    );
    await session.dbNext.updateRow<_i2.EventGroup>(
      $eventGroup,
      columns: [_i2.EventGroup.t.$_eventsEventgroupsEventsId],
    );
  }
}

class EventDetachRepository {
  const EventDetachRepository._();

  Future<void> eventMeetings(
    _i1.Session session,
    List<_i2.EventMeeting> eventMeeting,
  ) async {
    if (eventMeeting.any((e) => e.id == null)) {
      throw ArgumentError.notNull('eventMeeting.id');
    }

    var $eventMeeting = eventMeeting
        .map((e) => _i2.EventMeetingImplicit(
              e,
              $_eventsEventmeetingsEventsId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.EventMeeting>(
      $eventMeeting,
      columns: [_i2.EventMeeting.t.$_eventsEventmeetingsEventsId],
    );
  }

  Future<void> eventGroups(
    _i1.Session session,
    List<_i2.EventGroup> eventGroup,
  ) async {
    if (eventGroup.any((e) => e.id == null)) {
      throw ArgumentError.notNull('eventGroup.id');
    }

    var $eventGroup = eventGroup
        .map((e) => _i2.EventGroupImplicit(
              e,
              $_eventsEventgroupsEventsId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.EventGroup>(
      $eventGroup,
      columns: [_i2.EventGroup.t.$_eventsEventgroupsEventsId],
    );
  }
}

class EventDetachRowRepository {
  const EventDetachRowRepository._();

  Future<void> eventMeetings(
    _i1.Session session,
    _i2.EventMeeting eventMeeting,
  ) async {
    if (eventMeeting.id == null) {
      throw ArgumentError.notNull('eventMeeting.id');
    }

    var $eventMeeting = _i2.EventMeetingImplicit(
      eventMeeting,
      $_eventsEventmeetingsEventsId: null,
    );
    await session.dbNext.updateRow<_i2.EventMeeting>(
      $eventMeeting,
      columns: [_i2.EventMeeting.t.$_eventsEventmeetingsEventsId],
    );
  }

  Future<void> eventGroups(
    _i1.Session session,
    _i2.EventGroup eventGroup,
  ) async {
    if (eventGroup.id == null) {
      throw ArgumentError.notNull('eventGroup.id');
    }

    var $eventGroup = _i2.EventGroupImplicit(
      eventGroup,
      $_eventsEventgroupsEventsId: null,
    );
    await session.dbNext.updateRow<_i2.EventGroup>(
      $eventGroup,
      columns: [_i2.EventGroup.t.$_eventsEventgroupsEventsId],
    );
  }
}
