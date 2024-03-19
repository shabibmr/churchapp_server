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

abstract class Meeting extends _i1.TableRow {
  Meeting._({
    int? id,
    this.title,
    this.description,
    this.createdBy,
    this.createdAt,
    this.startTime,
    this.endTime,
    this.duration,
  }) : super(id);

  factory Meeting({
    int? id,
    String? title,
    String? description,
    _i2.Contact? createdBy,
    DateTime? createdAt,
    DateTime? startTime,
    DateTime? endTime,
    Duration? duration,
  }) = _MeetingImpl;

  factory Meeting.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Meeting(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      createdBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['createdBy']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
      startTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['startTime']),
      endTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endTime']),
      duration: serializationManager
          .deserialize<Duration?>(jsonSerialization['duration']),
    );
  }

  static final t = MeetingTable();

  static const db = MeetingRepository._();

  String? title;

  String? description;

  _i2.Contact? createdBy;

  DateTime? createdAt;

  DateTime? startTime;

  DateTime? endTime;

  Duration? duration;

  int? _servicesMeetingsServicesId;

  @override
  _i1.Table get table => t;

  Meeting copyWith({
    int? id,
    String? title,
    String? description,
    _i2.Contact? createdBy,
    DateTime? createdAt,
    DateTime? startTime,
    DateTime? endTime,
    Duration? duration,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (startTime != null) 'startTime': startTime?.toJson(),
      if (endTime != null) 'endTime': endTime?.toJson(),
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
      'createdBy': createdBy,
      'createdAt': createdAt,
      'startTime': startTime,
      'endTime': endTime,
      'duration': duration,
      '_servicesMeetingsServicesId': _servicesMeetingsServicesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (createdBy != null) 'createdBy': createdBy?.allToJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (startTime != null) 'startTime': startTime?.toJson(),
      if (endTime != null) 'endTime': endTime?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
      if (_servicesMeetingsServicesId != null)
        '_servicesMeetingsServicesId': _servicesMeetingsServicesId,
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
      case 'createdBy':
        createdBy = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'startTime':
        startTime = value;
        return;
      case 'endTime':
        endTime = value;
        return;
      case 'duration':
        duration = value;
        return;
      case '_servicesMeetingsServicesId':
        _servicesMeetingsServicesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Meeting>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Meeting>(
      where: where != null ? where(Meeting.t) : null,
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
  static Future<Meeting?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Meeting>(
      where: where != null ? where(Meeting.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Meeting?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Meeting>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MeetingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Meeting>(
      where: where(Meeting.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Meeting row, {
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
    Meeting row, {
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
    Meeting row, {
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
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Meeting>(
      where: where != null ? where(Meeting.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MeetingInclude include() {
    return MeetingInclude._();
  }

  static MeetingIncludeList includeList({
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MeetingTable>? orderByList,
    MeetingInclude? include,
  }) {
    return MeetingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Meeting.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Meeting.t),
      include: include,
    );
  }
}

class _Undefined {}

class _MeetingImpl extends Meeting {
  _MeetingImpl({
    int? id,
    String? title,
    String? description,
    _i2.Contact? createdBy,
    DateTime? createdAt,
    DateTime? startTime,
    DateTime? endTime,
    Duration? duration,
  }) : super._(
          id: id,
          title: title,
          description: description,
          createdBy: createdBy,
          createdAt: createdAt,
          startTime: startTime,
          endTime: endTime,
          duration: duration,
        );

  @override
  Meeting copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? createdBy = _Undefined,
    Object? createdAt = _Undefined,
    Object? startTime = _Undefined,
    Object? endTime = _Undefined,
    Object? duration = _Undefined,
  }) {
    return Meeting(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      createdBy:
          createdBy is _i2.Contact? ? createdBy : this.createdBy?.copyWith(),
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      startTime: startTime is DateTime? ? startTime : this.startTime,
      endTime: endTime is DateTime? ? endTime : this.endTime,
      duration: duration is Duration? ? duration : this.duration,
    );
  }
}

class MeetingImplicit extends _MeetingImpl {
  MeetingImplicit._({
    int? id,
    String? title,
    String? description,
    _i2.Contact? createdBy,
    DateTime? createdAt,
    DateTime? startTime,
    DateTime? endTime,
    Duration? duration,
    this.$_servicesMeetingsServicesId,
  }) : super(
          id: id,
          title: title,
          description: description,
          createdBy: createdBy,
          createdAt: createdAt,
          startTime: startTime,
          endTime: endTime,
          duration: duration,
        );

  factory MeetingImplicit(
    Meeting meeting, {
    int? $_servicesMeetingsServicesId,
  }) {
    return MeetingImplicit._(
      id: meeting.id,
      title: meeting.title,
      description: meeting.description,
      createdBy: meeting.createdBy,
      createdAt: meeting.createdAt,
      startTime: meeting.startTime,
      endTime: meeting.endTime,
      duration: meeting.duration,
      $_servicesMeetingsServicesId: $_servicesMeetingsServicesId,
    );
  }

  int? $_servicesMeetingsServicesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap
        .addAll({'_servicesMeetingsServicesId': $_servicesMeetingsServicesId});
    return jsonMap;
  }
}

class MeetingTable extends _i1.Table {
  MeetingTable({super.tableRelation}) : super(tableName: 'meetings') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    createdBy = _i1.ColumnSerializable(
      'createdBy',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    startTime = _i1.ColumnDateTime(
      'startTime',
      this,
    );
    endTime = _i1.ColumnDateTime(
      'endTime',
      this,
    );
    duration = _i1.ColumnDuration(
      'duration',
      this,
    );
    $_servicesMeetingsServicesId = _i1.ColumnInt(
      '_servicesMeetingsServicesId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable createdBy;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime startTime;

  late final _i1.ColumnDateTime endTime;

  late final _i1.ColumnDuration duration;

  late final _i1.ColumnInt $_servicesMeetingsServicesId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        createdBy,
        createdAt,
        startTime,
        endTime,
        duration,
        $_servicesMeetingsServicesId,
      ];
}

@Deprecated('Use MeetingTable.t instead.')
MeetingTable tMeeting = MeetingTable();

class MeetingInclude extends _i1.IncludeObject {
  MeetingInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Meeting.t;
}

class MeetingIncludeList extends _i1.IncludeList {
  MeetingIncludeList._({
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Meeting.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Meeting.t;
}

class MeetingRepository {
  const MeetingRepository._();

  Future<List<Meeting>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MeetingTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Meeting>(
      where: where?.call(Meeting.t),
      orderBy: orderBy?.call(Meeting.t),
      orderByList: orderByList?.call(Meeting.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Meeting?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? offset,
    _i1.OrderByBuilder<MeetingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MeetingTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Meeting>(
      where: where?.call(Meeting.t),
      orderBy: orderBy?.call(Meeting.t),
      orderByList: orderByList?.call(Meeting.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Meeting?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Meeting>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Meeting>> insert(
    _i1.Session session,
    List<Meeting> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Meeting>(
      rows,
      transaction: transaction,
    );
  }

  Future<Meeting> insertRow(
    _i1.Session session,
    Meeting row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Meeting>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Meeting>> update(
    _i1.Session session,
    List<Meeting> rows, {
    _i1.ColumnSelections<MeetingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Meeting>(
      rows,
      columns: columns?.call(Meeting.t),
      transaction: transaction,
    );
  }

  Future<Meeting> updateRow(
    _i1.Session session,
    Meeting row, {
    _i1.ColumnSelections<MeetingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Meeting>(
      row,
      columns: columns?.call(Meeting.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Meeting> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Meeting>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Meeting row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Meeting>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MeetingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Meeting>(
      where: where(Meeting.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MeetingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Meeting>(
      where: where?.call(Meeting.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
