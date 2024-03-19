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

abstract class Schedule extends _i1.TableRow {
  Schedule._({
    int? id,
    this.title,
    this.description,
    this.createdAt,
    this.createdBy,
    this.dueDateTime,
    this.startDateTime,
    this.endDateTime,
    this.duration,
    this.recurring,
    this.tillDateTime,
    this.interval,
    this.totalCount,
    required this.status,
    this.snoozedTo,
    this.snoozeCount,
    this.stoppedBy,
  }) : super(id);

  factory Schedule({
    int? id,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? createdBy,
    DateTime? dueDateTime,
    DateTime? startDateTime,
    DateTime? endDateTime,
    Duration? duration,
    bool? recurring,
    DateTime? tillDateTime,
    Duration? interval,
    int? totalCount,
    required _i2.ScheduleStatus status,
    DateTime? snoozedTo,
    int? snoozeCount,
    _i2.Contact? stoppedBy,
  }) = _ScheduleImpl;

  factory Schedule.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Schedule(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
      createdBy: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdBy']),
      dueDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['dueDateTime']),
      startDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['startDateTime']),
      endDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endDateTime']),
      duration: serializationManager
          .deserialize<Duration?>(jsonSerialization['duration']),
      recurring: serializationManager
          .deserialize<bool?>(jsonSerialization['recurring']),
      tillDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['tillDateTime']),
      interval: serializationManager
          .deserialize<Duration?>(jsonSerialization['interval']),
      totalCount: serializationManager
          .deserialize<int?>(jsonSerialization['totalCount']),
      status: serializationManager
          .deserialize<_i2.ScheduleStatus>(jsonSerialization['status']),
      snoozedTo: serializationManager
          .deserialize<DateTime?>(jsonSerialization['snoozedTo']),
      snoozeCount: serializationManager
          .deserialize<int?>(jsonSerialization['snoozeCount']),
      stoppedBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['stoppedBy']),
    );
  }

  static final t = ScheduleTable();

  static const db = ScheduleRepository._();

  String? title;

  String? description;

  DateTime? createdAt;

  DateTime? createdBy;

  DateTime? dueDateTime;

  DateTime? startDateTime;

  DateTime? endDateTime;

  Duration? duration;

  bool? recurring;

  DateTime? tillDateTime;

  Duration? interval;

  int? totalCount;

  _i2.ScheduleStatus status;

  DateTime? snoozedTo;

  int? snoozeCount;

  _i2.Contact? stoppedBy;

  @override
  _i1.Table get table => t;

  Schedule copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? createdBy,
    DateTime? dueDateTime,
    DateTime? startDateTime,
    DateTime? endDateTime,
    Duration? duration,
    bool? recurring,
    DateTime? tillDateTime,
    Duration? interval,
    int? totalCount,
    _i2.ScheduleStatus? status,
    DateTime? snoozedTo,
    int? snoozeCount,
    _i2.Contact? stoppedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (dueDateTime != null) 'dueDateTime': dueDateTime?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
      if (recurring != null) 'recurring': recurring,
      if (tillDateTime != null) 'tillDateTime': tillDateTime?.toJson(),
      if (interval != null) 'interval': interval?.toJson(),
      if (totalCount != null) 'totalCount': totalCount,
      'status': status.toJson(),
      if (snoozedTo != null) 'snoozedTo': snoozedTo?.toJson(),
      if (snoozeCount != null) 'snoozeCount': snoozeCount,
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'dueDateTime': dueDateTime,
      'startDateTime': startDateTime,
      'endDateTime': endDateTime,
      'duration': duration,
      'recurring': recurring,
      'tillDateTime': tillDateTime,
      'interval': interval,
      'totalCount': totalCount,
      'status': status,
      'snoozedTo': snoozedTo,
      'snoozeCount': snoozeCount,
      'stoppedBy': stoppedBy,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (dueDateTime != null) 'dueDateTime': dueDateTime?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
      if (recurring != null) 'recurring': recurring,
      if (tillDateTime != null) 'tillDateTime': tillDateTime?.toJson(),
      if (interval != null) 'interval': interval?.toJson(),
      if (totalCount != null) 'totalCount': totalCount,
      'status': status.toJson(),
      if (snoozedTo != null) 'snoozedTo': snoozedTo?.toJson(),
      if (snoozeCount != null) 'snoozeCount': snoozeCount,
      if (stoppedBy != null) 'stoppedBy': stoppedBy?.allToJson(),
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
      case 'createdAt':
        createdAt = value;
        return;
      case 'createdBy':
        createdBy = value;
        return;
      case 'dueDateTime':
        dueDateTime = value;
        return;
      case 'startDateTime':
        startDateTime = value;
        return;
      case 'endDateTime':
        endDateTime = value;
        return;
      case 'duration':
        duration = value;
        return;
      case 'recurring':
        recurring = value;
        return;
      case 'tillDateTime':
        tillDateTime = value;
        return;
      case 'interval':
        interval = value;
        return;
      case 'totalCount':
        totalCount = value;
        return;
      case 'status':
        status = value;
        return;
      case 'snoozedTo':
        snoozedTo = value;
        return;
      case 'snoozeCount':
        snoozeCount = value;
        return;
      case 'stoppedBy':
        stoppedBy = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Schedule>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Schedule>(
      where: where != null ? where(Schedule.t) : null,
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
  static Future<Schedule?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Schedule>(
      where: where != null ? where(Schedule.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Schedule?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Schedule>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScheduleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Schedule>(
      where: where(Schedule.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Schedule row, {
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
    Schedule row, {
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
    Schedule row, {
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
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Schedule>(
      where: where != null ? where(Schedule.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ScheduleInclude include() {
    return ScheduleInclude._();
  }

  static ScheduleIncludeList includeList({
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScheduleTable>? orderByList,
    ScheduleInclude? include,
  }) {
    return ScheduleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Schedule.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Schedule.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ScheduleImpl extends Schedule {
  _ScheduleImpl({
    int? id,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? createdBy,
    DateTime? dueDateTime,
    DateTime? startDateTime,
    DateTime? endDateTime,
    Duration? duration,
    bool? recurring,
    DateTime? tillDateTime,
    Duration? interval,
    int? totalCount,
    required _i2.ScheduleStatus status,
    DateTime? snoozedTo,
    int? snoozeCount,
    _i2.Contact? stoppedBy,
  }) : super._(
          id: id,
          title: title,
          description: description,
          createdAt: createdAt,
          createdBy: createdBy,
          dueDateTime: dueDateTime,
          startDateTime: startDateTime,
          endDateTime: endDateTime,
          duration: duration,
          recurring: recurring,
          tillDateTime: tillDateTime,
          interval: interval,
          totalCount: totalCount,
          status: status,
          snoozedTo: snoozedTo,
          snoozeCount: snoozeCount,
          stoppedBy: stoppedBy,
        );

  @override
  Schedule copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? createdAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? dueDateTime = _Undefined,
    Object? startDateTime = _Undefined,
    Object? endDateTime = _Undefined,
    Object? duration = _Undefined,
    Object? recurring = _Undefined,
    Object? tillDateTime = _Undefined,
    Object? interval = _Undefined,
    Object? totalCount = _Undefined,
    _i2.ScheduleStatus? status,
    Object? snoozedTo = _Undefined,
    Object? snoozeCount = _Undefined,
    Object? stoppedBy = _Undefined,
  }) {
    return Schedule(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      createdBy: createdBy is DateTime? ? createdBy : this.createdBy,
      dueDateTime: dueDateTime is DateTime? ? dueDateTime : this.dueDateTime,
      startDateTime:
          startDateTime is DateTime? ? startDateTime : this.startDateTime,
      endDateTime: endDateTime is DateTime? ? endDateTime : this.endDateTime,
      duration: duration is Duration? ? duration : this.duration,
      recurring: recurring is bool? ? recurring : this.recurring,
      tillDateTime:
          tillDateTime is DateTime? ? tillDateTime : this.tillDateTime,
      interval: interval is Duration? ? interval : this.interval,
      totalCount: totalCount is int? ? totalCount : this.totalCount,
      status: status ?? this.status,
      snoozedTo: snoozedTo is DateTime? ? snoozedTo : this.snoozedTo,
      snoozeCount: snoozeCount is int? ? snoozeCount : this.snoozeCount,
      stoppedBy:
          stoppedBy is _i2.Contact? ? stoppedBy : this.stoppedBy?.copyWith(),
    );
  }
}

class ScheduleTable extends _i1.Table {
  ScheduleTable({super.tableRelation}) : super(tableName: 'schedules') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    createdBy = _i1.ColumnDateTime(
      'createdBy',
      this,
    );
    dueDateTime = _i1.ColumnDateTime(
      'dueDateTime',
      this,
    );
    startDateTime = _i1.ColumnDateTime(
      'startDateTime',
      this,
    );
    endDateTime = _i1.ColumnDateTime(
      'endDateTime',
      this,
    );
    duration = _i1.ColumnDuration(
      'duration',
      this,
    );
    recurring = _i1.ColumnBool(
      'recurring',
      this,
    );
    tillDateTime = _i1.ColumnDateTime(
      'tillDateTime',
      this,
    );
    interval = _i1.ColumnDuration(
      'interval',
      this,
    );
    totalCount = _i1.ColumnInt(
      'totalCount',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    snoozedTo = _i1.ColumnDateTime(
      'snoozedTo',
      this,
    );
    snoozeCount = _i1.ColumnInt(
      'snoozeCount',
      this,
    );
    stoppedBy = _i1.ColumnSerializable(
      'stoppedBy',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime createdBy;

  late final _i1.ColumnDateTime dueDateTime;

  late final _i1.ColumnDateTime startDateTime;

  late final _i1.ColumnDateTime endDateTime;

  late final _i1.ColumnDuration duration;

  late final _i1.ColumnBool recurring;

  late final _i1.ColumnDateTime tillDateTime;

  late final _i1.ColumnDuration interval;

  late final _i1.ColumnInt totalCount;

  late final _i1.ColumnEnum<_i2.ScheduleStatus> status;

  late final _i1.ColumnDateTime snoozedTo;

  late final _i1.ColumnInt snoozeCount;

  late final _i1.ColumnSerializable stoppedBy;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        createdAt,
        createdBy,
        dueDateTime,
        startDateTime,
        endDateTime,
        duration,
        recurring,
        tillDateTime,
        interval,
        totalCount,
        status,
        snoozedTo,
        snoozeCount,
        stoppedBy,
      ];
}

@Deprecated('Use ScheduleTable.t instead.')
ScheduleTable tSchedule = ScheduleTable();

class ScheduleInclude extends _i1.IncludeObject {
  ScheduleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Schedule.t;
}

class ScheduleIncludeList extends _i1.IncludeList {
  ScheduleIncludeList._({
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Schedule.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Schedule.t;
}

class ScheduleRepository {
  const ScheduleRepository._();

  Future<List<Schedule>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScheduleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Schedule>(
      where: where?.call(Schedule.t),
      orderBy: orderBy?.call(Schedule.t),
      orderByList: orderByList?.call(Schedule.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Schedule?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? offset,
    _i1.OrderByBuilder<ScheduleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScheduleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Schedule>(
      where: where?.call(Schedule.t),
      orderBy: orderBy?.call(Schedule.t),
      orderByList: orderByList?.call(Schedule.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Schedule?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Schedule>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Schedule>> insert(
    _i1.Session session,
    List<Schedule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Schedule>(
      rows,
      transaction: transaction,
    );
  }

  Future<Schedule> insertRow(
    _i1.Session session,
    Schedule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Schedule>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Schedule>> update(
    _i1.Session session,
    List<Schedule> rows, {
    _i1.ColumnSelections<ScheduleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Schedule>(
      rows,
      columns: columns?.call(Schedule.t),
      transaction: transaction,
    );
  }

  Future<Schedule> updateRow(
    _i1.Session session,
    Schedule row, {
    _i1.ColumnSelections<ScheduleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Schedule>(
      row,
      columns: columns?.call(Schedule.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Schedule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Schedule>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Schedule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Schedule>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScheduleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Schedule>(
      where: where(Schedule.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScheduleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Schedule>(
      where: where?.call(Schedule.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
