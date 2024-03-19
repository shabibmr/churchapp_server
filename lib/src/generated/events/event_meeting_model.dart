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

abstract class EventMeeting extends _i1.TableRow {
  EventMeeting._({
    int? id,
    this.title,
    this.description,
    this.detailedDescription,
    required this.meetingId,
    this.meeting,
    required this.eventId,
    this.event,
  }) : super(id);

  factory EventMeeting({
    int? id,
    String? title,
    String? description,
    String? detailedDescription,
    required int meetingId,
    _i2.Meeting? meeting,
    required int eventId,
    _i2.Event? event,
  }) = _EventMeetingImpl;

  factory EventMeeting.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventMeeting(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      detailedDescription: serializationManager
          .deserialize<String?>(jsonSerialization['detailedDescription']),
      meetingId:
          serializationManager.deserialize<int>(jsonSerialization['meetingId']),
      meeting: serializationManager
          .deserialize<_i2.Meeting?>(jsonSerialization['meeting']),
      eventId:
          serializationManager.deserialize<int>(jsonSerialization['eventId']),
      event: serializationManager
          .deserialize<_i2.Event?>(jsonSerialization['event']),
    );
  }

  static final t = EventMeetingTable();

  static const db = EventMeetingRepository._();

  String? title;

  String? description;

  String? detailedDescription;

  int meetingId;

  _i2.Meeting? meeting;

  int eventId;

  _i2.Event? event;

  int? _eventsEventmeetingsEventsId;

  @override
  _i1.Table get table => t;

  EventMeeting copyWith({
    int? id,
    String? title,
    String? description,
    String? detailedDescription,
    int? meetingId,
    _i2.Meeting? meeting,
    int? eventId,
    _i2.Event? event,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (detailedDescription != null)
        'detailedDescription': detailedDescription,
      'meetingId': meetingId,
      if (meeting != null) 'meeting': meeting?.toJson(),
      'eventId': eventId,
      if (event != null) 'event': event?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'detailedDescription': detailedDescription,
      'meetingId': meetingId,
      'eventId': eventId,
      '_eventsEventmeetingsEventsId': _eventsEventmeetingsEventsId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (detailedDescription != null)
        'detailedDescription': detailedDescription,
      'meetingId': meetingId,
      if (meeting != null) 'meeting': meeting?.allToJson(),
      'eventId': eventId,
      if (event != null) 'event': event?.allToJson(),
      if (_eventsEventmeetingsEventsId != null)
        '_eventsEventmeetingsEventsId': _eventsEventmeetingsEventsId,
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
      case 'detailedDescription':
        detailedDescription = value;
        return;
      case 'meetingId':
        meetingId = value;
        return;
      case 'eventId':
        eventId = value;
        return;
      case '_eventsEventmeetingsEventsId':
        _eventsEventmeetingsEventsId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EventMeeting>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventMeetingInclude? include,
  }) async {
    return session.db.find<EventMeeting>(
      where: where != null ? where(EventMeeting.t) : null,
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
  static Future<EventMeeting?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EventMeetingInclude? include,
  }) async {
    return session.db.findSingleRow<EventMeeting>(
      where: where != null ? where(EventMeeting.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EventMeeting?> findById(
    _i1.Session session,
    int id, {
    EventMeetingInclude? include,
  }) async {
    return session.db.findById<EventMeeting>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventMeetingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventMeeting>(
      where: where(EventMeeting.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EventMeeting row, {
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
    EventMeeting row, {
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
    EventMeeting row, {
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
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventMeeting>(
      where: where != null ? where(EventMeeting.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventMeetingInclude include({
    _i2.MeetingInclude? meeting,
    _i2.EventInclude? event,
  }) {
    return EventMeetingInclude._(
      meeting: meeting,
      event: event,
    );
  }

  static EventMeetingIncludeList includeList({
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventMeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventMeetingTable>? orderByList,
    EventMeetingInclude? include,
  }) {
    return EventMeetingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventMeeting.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventMeeting.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventMeetingImpl extends EventMeeting {
  _EventMeetingImpl({
    int? id,
    String? title,
    String? description,
    String? detailedDescription,
    required int meetingId,
    _i2.Meeting? meeting,
    required int eventId,
    _i2.Event? event,
  }) : super._(
          id: id,
          title: title,
          description: description,
          detailedDescription: detailedDescription,
          meetingId: meetingId,
          meeting: meeting,
          eventId: eventId,
          event: event,
        );

  @override
  EventMeeting copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? detailedDescription = _Undefined,
    int? meetingId,
    Object? meeting = _Undefined,
    int? eventId,
    Object? event = _Undefined,
  }) {
    return EventMeeting(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      detailedDescription: detailedDescription is String?
          ? detailedDescription
          : this.detailedDescription,
      meetingId: meetingId ?? this.meetingId,
      meeting: meeting is _i2.Meeting? ? meeting : this.meeting?.copyWith(),
      eventId: eventId ?? this.eventId,
      event: event is _i2.Event? ? event : this.event?.copyWith(),
    );
  }
}

class EventMeetingImplicit extends _EventMeetingImpl {
  EventMeetingImplicit._({
    int? id,
    String? title,
    String? description,
    String? detailedDescription,
    required int meetingId,
    _i2.Meeting? meeting,
    required int eventId,
    _i2.Event? event,
    this.$_eventsEventmeetingsEventsId,
  }) : super(
          id: id,
          title: title,
          description: description,
          detailedDescription: detailedDescription,
          meetingId: meetingId,
          meeting: meeting,
          eventId: eventId,
          event: event,
        );

  factory EventMeetingImplicit(
    EventMeeting eventMeeting, {
    int? $_eventsEventmeetingsEventsId,
  }) {
    return EventMeetingImplicit._(
      id: eventMeeting.id,
      title: eventMeeting.title,
      description: eventMeeting.description,
      detailedDescription: eventMeeting.detailedDescription,
      meetingId: eventMeeting.meetingId,
      meeting: eventMeeting.meeting,
      eventId: eventMeeting.eventId,
      event: eventMeeting.event,
      $_eventsEventmeetingsEventsId: $_eventsEventmeetingsEventsId,
    );
  }

  int? $_eventsEventmeetingsEventsId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll(
        {'_eventsEventmeetingsEventsId': $_eventsEventmeetingsEventsId});
    return jsonMap;
  }
}

class EventMeetingTable extends _i1.Table {
  EventMeetingTable({super.tableRelation})
      : super(tableName: 'event_meetings') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    detailedDescription = _i1.ColumnString(
      'detailedDescription',
      this,
    );
    meetingId = _i1.ColumnInt(
      'meetingId',
      this,
    );
    eventId = _i1.ColumnInt(
      'eventId',
      this,
    );
    $_eventsEventmeetingsEventsId = _i1.ColumnInt(
      '_eventsEventmeetingsEventsId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString detailedDescription;

  late final _i1.ColumnInt meetingId;

  _i2.MeetingTable? _meeting;

  late final _i1.ColumnInt eventId;

  _i2.EventTable? _event;

  late final _i1.ColumnInt $_eventsEventmeetingsEventsId;

  _i2.MeetingTable get meeting {
    if (_meeting != null) return _meeting!;
    _meeting = _i1.createRelationTable(
      relationFieldName: 'meeting',
      field: EventMeeting.t.meetingId,
      foreignField: _i2.Meeting.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MeetingTable(tableRelation: foreignTableRelation),
    );
    return _meeting!;
  }

  _i2.EventTable get event {
    if (_event != null) return _event!;
    _event = _i1.createRelationTable(
      relationFieldName: 'event',
      field: EventMeeting.t.eventId,
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
        title,
        description,
        detailedDescription,
        meetingId,
        eventId,
        $_eventsEventmeetingsEventsId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'meeting') {
      return meeting;
    }
    if (relationField == 'event') {
      return event;
    }
    return null;
  }
}

@Deprecated('Use EventMeetingTable.t instead.')
EventMeetingTable tEventMeeting = EventMeetingTable();

class EventMeetingInclude extends _i1.IncludeObject {
  EventMeetingInclude._({
    _i2.MeetingInclude? meeting,
    _i2.EventInclude? event,
  }) {
    _meeting = meeting;
    _event = event;
  }

  _i2.MeetingInclude? _meeting;

  _i2.EventInclude? _event;

  @override
  Map<String, _i1.Include?> get includes => {
        'meeting': _meeting,
        'event': _event,
      };

  @override
  _i1.Table get table => EventMeeting.t;
}

class EventMeetingIncludeList extends _i1.IncludeList {
  EventMeetingIncludeList._({
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventMeeting.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventMeeting.t;
}

class EventMeetingRepository {
  const EventMeetingRepository._();

  final attachRow = const EventMeetingAttachRowRepository._();

  Future<List<EventMeeting>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventMeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventMeetingTable>? orderByList,
    _i1.Transaction? transaction,
    EventMeetingInclude? include,
  }) async {
    return session.dbNext.find<EventMeeting>(
      where: where?.call(EventMeeting.t),
      orderBy: orderBy?.call(EventMeeting.t),
      orderByList: orderByList?.call(EventMeeting.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<EventMeeting?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventMeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventMeetingTable>? orderByList,
    _i1.Transaction? transaction,
    EventMeetingInclude? include,
  }) async {
    return session.dbNext.findFirstRow<EventMeeting>(
      where: where?.call(EventMeeting.t),
      orderBy: orderBy?.call(EventMeeting.t),
      orderByList: orderByList?.call(EventMeeting.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<EventMeeting?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventMeetingInclude? include,
  }) async {
    return session.dbNext.findById<EventMeeting>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<EventMeeting>> insert(
    _i1.Session session,
    List<EventMeeting> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EventMeeting>(
      rows,
      transaction: transaction,
    );
  }

  Future<EventMeeting> insertRow(
    _i1.Session session,
    EventMeeting row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EventMeeting>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EventMeeting>> update(
    _i1.Session session,
    List<EventMeeting> rows, {
    _i1.ColumnSelections<EventMeetingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EventMeeting>(
      rows,
      columns: columns?.call(EventMeeting.t),
      transaction: transaction,
    );
  }

  Future<EventMeeting> updateRow(
    _i1.Session session,
    EventMeeting row, {
    _i1.ColumnSelections<EventMeetingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EventMeeting>(
      row,
      columns: columns?.call(EventMeeting.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EventMeeting> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EventMeeting>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EventMeeting row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EventMeeting>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventMeetingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EventMeeting>(
      where: where(EventMeeting.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventMeetingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EventMeeting>(
      where: where?.call(EventMeeting.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventMeetingAttachRowRepository {
  const EventMeetingAttachRowRepository._();

  Future<void> meeting(
    _i1.Session session,
    EventMeeting eventMeeting,
    _i2.Meeting meeting,
  ) async {
    if (eventMeeting.id == null) {
      throw ArgumentError.notNull('eventMeeting.id');
    }
    if (meeting.id == null) {
      throw ArgumentError.notNull('meeting.id');
    }

    var $eventMeeting = eventMeeting.copyWith(meetingId: meeting.id);
    await session.dbNext.updateRow<EventMeeting>(
      $eventMeeting,
      columns: [EventMeeting.t.meetingId],
    );
  }

  Future<void> event(
    _i1.Session session,
    EventMeeting eventMeeting,
    _i2.Event event,
  ) async {
    if (eventMeeting.id == null) {
      throw ArgumentError.notNull('eventMeeting.id');
    }
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }

    var $eventMeeting = eventMeeting.copyWith(eventId: event.id);
    await session.dbNext.updateRow<EventMeeting>(
      $eventMeeting,
      columns: [EventMeeting.t.eventId],
    );
  }
}
