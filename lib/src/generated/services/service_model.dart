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
import 'dart:typed_data' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Service extends _i1.TableRow {
  Service._({
    int? id,
    this.title,
    this.description,
    this.type,
    this.image,
    this.createdAt,
    this.createdBy,
    this.meetings,
    this.rosters,
    this.members,
    this.discussions,
    this.files,
  }) : super(id);

  factory Service({
    int? id,
    String? title,
    String? description,
    _i2.ServiceType? type,
    _i3.ByteData? image,
    DateTime? createdAt,
    _i2.Contact? createdBy,
    List<_i2.Meeting>? meetings,
    List<_i2.ServiceRoster>? rosters,
    List<_i2.Contact>? members,
    List<_i2.ChatRoom>? discussions,
    List<_i2.FileStore>? files,
  }) = _ServiceImpl;

  factory Service.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Service(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      type: serializationManager
          .deserialize<_i2.ServiceType?>(jsonSerialization['type']),
      image: serializationManager
          .deserialize<_i3.ByteData?>(jsonSerialization['image']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
      createdBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['createdBy']),
      meetings: serializationManager
          .deserialize<List<_i2.Meeting>?>(jsonSerialization['meetings']),
      rosters: serializationManager
          .deserialize<List<_i2.ServiceRoster>?>(jsonSerialization['rosters']),
      members: serializationManager
          .deserialize<List<_i2.Contact>?>(jsonSerialization['members']),
      discussions: serializationManager
          .deserialize<List<_i2.ChatRoom>?>(jsonSerialization['discussions']),
      files: serializationManager
          .deserialize<List<_i2.FileStore>?>(jsonSerialization['files']),
    );
  }

  static final t = ServiceTable();

  static const db = ServiceRepository._();

  String? title;

  String? description;

  _i2.ServiceType? type;

  _i3.ByteData? image;

  DateTime? createdAt;

  _i2.Contact? createdBy;

  List<_i2.Meeting>? meetings;

  List<_i2.ServiceRoster>? rosters;

  List<_i2.Contact>? members;

  List<_i2.ChatRoom>? discussions;

  List<_i2.FileStore>? files;

  @override
  _i1.Table get table => t;

  Service copyWith({
    int? id,
    String? title,
    String? description,
    _i2.ServiceType? type,
    _i3.ByteData? image,
    DateTime? createdAt,
    _i2.Contact? createdBy,
    List<_i2.Meeting>? meetings,
    List<_i2.ServiceRoster>? rosters,
    List<_i2.Contact>? members,
    List<_i2.ChatRoom>? discussions,
    List<_i2.FileStore>? files,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type?.toJson(),
      if (image != null) 'image': image?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (meetings != null)
        'meetings': meetings?.toJson(valueToJson: (v) => v.toJson()),
      if (rosters != null)
        'rosters': rosters?.toJson(valueToJson: (v) => v.toJson()),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
      if (discussions != null)
        'discussions': discussions?.toJson(valueToJson: (v) => v.toJson()),
      if (files != null) 'files': files?.toJson(valueToJson: (v) => v.toJson()),
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
      'image': image,
      'createdAt': createdAt,
      'createdBy': createdBy,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (type != null) 'type': type?.allToJson(),
      if (image != null) 'image': image?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.allToJson(),
      if (meetings != null)
        'meetings': meetings?.toJson(valueToJson: (v) => v.allToJson()),
      if (rosters != null)
        'rosters': rosters?.toJson(valueToJson: (v) => v.allToJson()),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.allToJson()),
      if (discussions != null)
        'discussions': discussions?.toJson(valueToJson: (v) => v.allToJson()),
      if (files != null)
        'files': files?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'image':
        image = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'createdBy':
        createdBy = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Service>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ServiceInclude? include,
  }) async {
    return session.db.find<Service>(
      where: where != null ? where(Service.t) : null,
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
  static Future<Service?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ServiceInclude? include,
  }) async {
    return session.db.findSingleRow<Service>(
      where: where != null ? where(Service.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Service?> findById(
    _i1.Session session,
    int id, {
    ServiceInclude? include,
  }) async {
    return session.db.findById<Service>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Service>(
      where: where(Service.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Service row, {
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
    Service row, {
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
    Service row, {
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
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Service>(
      where: where != null ? where(Service.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ServiceInclude include({
    _i2.MeetingIncludeList? meetings,
    _i2.ServiceRosterIncludeList? rosters,
    _i2.ContactIncludeList? members,
    _i2.ChatRoomIncludeList? discussions,
    _i2.FileStoreIncludeList? files,
  }) {
    return ServiceInclude._(
      meetings: meetings,
      rosters: rosters,
      members: members,
      discussions: discussions,
      files: files,
    );
  }

  static ServiceIncludeList includeList({
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTable>? orderByList,
    ServiceInclude? include,
  }) {
    return ServiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Service.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Service.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ServiceImpl extends Service {
  _ServiceImpl({
    int? id,
    String? title,
    String? description,
    _i2.ServiceType? type,
    _i3.ByteData? image,
    DateTime? createdAt,
    _i2.Contact? createdBy,
    List<_i2.Meeting>? meetings,
    List<_i2.ServiceRoster>? rosters,
    List<_i2.Contact>? members,
    List<_i2.ChatRoom>? discussions,
    List<_i2.FileStore>? files,
  }) : super._(
          id: id,
          title: title,
          description: description,
          type: type,
          image: image,
          createdAt: createdAt,
          createdBy: createdBy,
          meetings: meetings,
          rosters: rosters,
          members: members,
          discussions: discussions,
          files: files,
        );

  @override
  Service copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? description = _Undefined,
    Object? type = _Undefined,
    Object? image = _Undefined,
    Object? createdAt = _Undefined,
    Object? createdBy = _Undefined,
    Object? meetings = _Undefined,
    Object? rosters = _Undefined,
    Object? members = _Undefined,
    Object? discussions = _Undefined,
    Object? files = _Undefined,
  }) {
    return Service(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      description: description is String? ? description : this.description,
      type: type is _i2.ServiceType? ? type : this.type?.copyWith(),
      image: image is _i3.ByteData? ? image : this.image?.clone(),
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      createdBy:
          createdBy is _i2.Contact? ? createdBy : this.createdBy?.copyWith(),
      meetings:
          meetings is List<_i2.Meeting>? ? meetings : this.meetings?.clone(),
      rosters:
          rosters is List<_i2.ServiceRoster>? ? rosters : this.rosters?.clone(),
      members: members is List<_i2.Contact>? ? members : this.members?.clone(),
      discussions: discussions is List<_i2.ChatRoom>?
          ? discussions
          : this.discussions?.clone(),
      files: files is List<_i2.FileStore>? ? files : this.files?.clone(),
    );
  }
}

class ServiceTable extends _i1.Table {
  ServiceTable({super.tableRelation}) : super(tableName: 'services') {
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
    image = _i1.ColumnByteData(
      'image',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    createdBy = _i1.ColumnSerializable(
      'createdBy',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable type;

  late final _i1.ColumnByteData image;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnSerializable createdBy;

  _i2.MeetingTable? ___meetings;

  _i1.ManyRelation<_i2.MeetingTable>? _meetings;

  _i2.ServiceRosterTable? ___rosters;

  _i1.ManyRelation<_i2.ServiceRosterTable>? _rosters;

  _i2.ContactTable? ___members;

  _i1.ManyRelation<_i2.ContactTable>? _members;

  _i2.ChatRoomTable? ___discussions;

  _i1.ManyRelation<_i2.ChatRoomTable>? _discussions;

  _i2.FileStoreTable? ___files;

  _i1.ManyRelation<_i2.FileStoreTable>? _files;

  _i2.MeetingTable get __meetings {
    if (___meetings != null) return ___meetings!;
    ___meetings = _i1.createRelationTable(
      relationFieldName: '__meetings',
      field: Service.t.id,
      foreignField: _i2.Meeting.t.$_servicesMeetingsServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MeetingTable(tableRelation: foreignTableRelation),
    );
    return ___meetings!;
  }

  _i2.ServiceRosterTable get __rosters {
    if (___rosters != null) return ___rosters!;
    ___rosters = _i1.createRelationTable(
      relationFieldName: '__rosters',
      field: Service.t.id,
      foreignField: _i2.ServiceRoster.t.$_servicesRostersServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ServiceRosterTable(tableRelation: foreignTableRelation),
    );
    return ___rosters!;
  }

  _i2.ContactTable get __members {
    if (___members != null) return ___members!;
    ___members = _i1.createRelationTable(
      relationFieldName: '__members',
      field: Service.t.id,
      foreignField: _i2.Contact.t.$_servicesMembersServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _i2.ChatRoomTable get __discussions {
    if (___discussions != null) return ___discussions!;
    ___discussions = _i1.createRelationTable(
      relationFieldName: '__discussions',
      field: Service.t.id,
      foreignField: _i2.ChatRoom.t.$_servicesDiscussionsServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ChatRoomTable(tableRelation: foreignTableRelation),
    );
    return ___discussions!;
  }

  _i2.FileStoreTable get __files {
    if (___files != null) return ___files!;
    ___files = _i1.createRelationTable(
      relationFieldName: '__files',
      field: Service.t.id,
      foreignField: _i2.FileStore.t.$_servicesFilesServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.FileStoreTable(tableRelation: foreignTableRelation),
    );
    return ___files!;
  }

  _i1.ManyRelation<_i2.MeetingTable> get meetings {
    if (_meetings != null) return _meetings!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'meetings',
      field: Service.t.id,
      foreignField: _i2.Meeting.t.$_servicesMeetingsServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MeetingTable(tableRelation: foreignTableRelation),
    );
    _meetings = _i1.ManyRelation<_i2.MeetingTable>(
      tableWithRelations: relationTable,
      table: _i2.MeetingTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _meetings!;
  }

  _i1.ManyRelation<_i2.ServiceRosterTable> get rosters {
    if (_rosters != null) return _rosters!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'rosters',
      field: Service.t.id,
      foreignField: _i2.ServiceRoster.t.$_servicesRostersServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ServiceRosterTable(tableRelation: foreignTableRelation),
    );
    _rosters = _i1.ManyRelation<_i2.ServiceRosterTable>(
      tableWithRelations: relationTable,
      table: _i2.ServiceRosterTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _rosters!;
  }

  _i1.ManyRelation<_i2.ContactTable> get members {
    if (_members != null) return _members!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'members',
      field: Service.t.id,
      foreignField: _i2.Contact.t.$_servicesMembersServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    _members = _i1.ManyRelation<_i2.ContactTable>(
      tableWithRelations: relationTable,
      table: _i2.ContactTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _members!;
  }

  _i1.ManyRelation<_i2.ChatRoomTable> get discussions {
    if (_discussions != null) return _discussions!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'discussions',
      field: Service.t.id,
      foreignField: _i2.ChatRoom.t.$_servicesDiscussionsServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ChatRoomTable(tableRelation: foreignTableRelation),
    );
    _discussions = _i1.ManyRelation<_i2.ChatRoomTable>(
      tableWithRelations: relationTable,
      table: _i2.ChatRoomTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _discussions!;
  }

  _i1.ManyRelation<_i2.FileStoreTable> get files {
    if (_files != null) return _files!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'files',
      field: Service.t.id,
      foreignField: _i2.FileStore.t.$_servicesFilesServicesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.FileStoreTable(tableRelation: foreignTableRelation),
    );
    _files = _i1.ManyRelation<_i2.FileStoreTable>(
      tableWithRelations: relationTable,
      table: _i2.FileStoreTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _files!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        type,
        image,
        createdAt,
        createdBy,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'meetings') {
      return __meetings;
    }
    if (relationField == 'rosters') {
      return __rosters;
    }
    if (relationField == 'members') {
      return __members;
    }
    if (relationField == 'discussions') {
      return __discussions;
    }
    if (relationField == 'files') {
      return __files;
    }
    return null;
  }
}

@Deprecated('Use ServiceTable.t instead.')
ServiceTable tService = ServiceTable();

class ServiceInclude extends _i1.IncludeObject {
  ServiceInclude._({
    _i2.MeetingIncludeList? meetings,
    _i2.ServiceRosterIncludeList? rosters,
    _i2.ContactIncludeList? members,
    _i2.ChatRoomIncludeList? discussions,
    _i2.FileStoreIncludeList? files,
  }) {
    _meetings = meetings;
    _rosters = rosters;
    _members = members;
    _discussions = discussions;
    _files = files;
  }

  _i2.MeetingIncludeList? _meetings;

  _i2.ServiceRosterIncludeList? _rosters;

  _i2.ContactIncludeList? _members;

  _i2.ChatRoomIncludeList? _discussions;

  _i2.FileStoreIncludeList? _files;

  @override
  Map<String, _i1.Include?> get includes => {
        'meetings': _meetings,
        'rosters': _rosters,
        'members': _members,
        'discussions': _discussions,
        'files': _files,
      };

  @override
  _i1.Table get table => Service.t;
}

class ServiceIncludeList extends _i1.IncludeList {
  ServiceIncludeList._({
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Service.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Service.t;
}

class ServiceRepository {
  const ServiceRepository._();

  final attach = const ServiceAttachRepository._();

  final attachRow = const ServiceAttachRowRepository._();

  final detach = const ServiceDetachRepository._();

  final detachRow = const ServiceDetachRowRepository._();

  Future<List<Service>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceInclude? include,
  }) async {
    return session.dbNext.find<Service>(
      where: where?.call(Service.t),
      orderBy: orderBy?.call(Service.t),
      orderByList: orderByList?.call(Service.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Service?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceTable>? orderByList,
    _i1.Transaction? transaction,
    ServiceInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Service>(
      where: where?.call(Service.t),
      orderBy: orderBy?.call(Service.t),
      orderByList: orderByList?.call(Service.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Service?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ServiceInclude? include,
  }) async {
    return session.dbNext.findById<Service>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Service>> insert(
    _i1.Session session,
    List<Service> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Service>(
      rows,
      transaction: transaction,
    );
  }

  Future<Service> insertRow(
    _i1.Session session,
    Service row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Service>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Service>> update(
    _i1.Session session,
    List<Service> rows, {
    _i1.ColumnSelections<ServiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Service>(
      rows,
      columns: columns?.call(Service.t),
      transaction: transaction,
    );
  }

  Future<Service> updateRow(
    _i1.Session session,
    Service row, {
    _i1.ColumnSelections<ServiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Service>(
      row,
      columns: columns?.call(Service.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Service> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Service>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Service row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Service>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Service>(
      where: where(Service.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Service>(
      where: where?.call(Service.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ServiceAttachRepository {
  const ServiceAttachRepository._();

  Future<void> meetings(
    _i1.Session session,
    Service service,
    List<_i2.Meeting> meeting,
  ) async {
    if (meeting.any((e) => e.id == null)) {
      throw ArgumentError.notNull('meeting.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $meeting = meeting
        .map((e) => _i2.MeetingImplicit(
              e,
              $_servicesMeetingsServicesId: service.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Meeting>(
      $meeting,
      columns: [_i2.Meeting.t.$_servicesMeetingsServicesId],
    );
  }

  Future<void> rosters(
    _i1.Session session,
    Service service,
    List<_i2.ServiceRoster> serviceRoster,
  ) async {
    if (serviceRoster.any((e) => e.id == null)) {
      throw ArgumentError.notNull('serviceRoster.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $serviceRoster = serviceRoster
        .map((e) => _i2.ServiceRosterImplicit(
              e,
              $_servicesRostersServicesId: service.id,
            ))
        .toList();
    await session.dbNext.update<_i2.ServiceRoster>(
      $serviceRoster,
      columns: [_i2.ServiceRoster.t.$_servicesRostersServicesId],
    );
  }

  Future<void> members(
    _i1.Session session,
    Service service,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_servicesMembersServicesId: service.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_servicesMembersServicesId],
    );
  }

  Future<void> discussions(
    _i1.Session session,
    Service service,
    List<_i2.ChatRoom> chatRoom,
  ) async {
    if (chatRoom.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRoom.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $chatRoom = chatRoom
        .map((e) => _i2.ChatRoomImplicit(
              e,
              $_servicesDiscussionsServicesId: service.id,
            ))
        .toList();
    await session.dbNext.update<_i2.ChatRoom>(
      $chatRoom,
      columns: [_i2.ChatRoom.t.$_servicesDiscussionsServicesId],
    );
  }

  Future<void> files(
    _i1.Session session,
    Service service,
    List<_i2.FileStore> fileStore,
  ) async {
    if (fileStore.any((e) => e.id == null)) {
      throw ArgumentError.notNull('fileStore.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $fileStore = fileStore
        .map((e) => _i2.FileStoreImplicit(
              e,
              $_servicesFilesServicesId: service.id,
            ))
        .toList();
    await session.dbNext.update<_i2.FileStore>(
      $fileStore,
      columns: [_i2.FileStore.t.$_servicesFilesServicesId],
    );
  }
}

class ServiceAttachRowRepository {
  const ServiceAttachRowRepository._();

  Future<void> meetings(
    _i1.Session session,
    Service service,
    _i2.Meeting meeting,
  ) async {
    if (meeting.id == null) {
      throw ArgumentError.notNull('meeting.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $meeting = _i2.MeetingImplicit(
      meeting,
      $_servicesMeetingsServicesId: service.id,
    );
    await session.dbNext.updateRow<_i2.Meeting>(
      $meeting,
      columns: [_i2.Meeting.t.$_servicesMeetingsServicesId],
    );
  }

  Future<void> rosters(
    _i1.Session session,
    Service service,
    _i2.ServiceRoster serviceRoster,
  ) async {
    if (serviceRoster.id == null) {
      throw ArgumentError.notNull('serviceRoster.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $serviceRoster = _i2.ServiceRosterImplicit(
      serviceRoster,
      $_servicesRostersServicesId: service.id,
    );
    await session.dbNext.updateRow<_i2.ServiceRoster>(
      $serviceRoster,
      columns: [_i2.ServiceRoster.t.$_servicesRostersServicesId],
    );
  }

  Future<void> members(
    _i1.Session session,
    Service service,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_servicesMembersServicesId: service.id,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_servicesMembersServicesId],
    );
  }

  Future<void> discussions(
    _i1.Session session,
    Service service,
    _i2.ChatRoom chatRoom,
  ) async {
    if (chatRoom.id == null) {
      throw ArgumentError.notNull('chatRoom.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $chatRoom = _i2.ChatRoomImplicit(
      chatRoom,
      $_servicesDiscussionsServicesId: service.id,
    );
    await session.dbNext.updateRow<_i2.ChatRoom>(
      $chatRoom,
      columns: [_i2.ChatRoom.t.$_servicesDiscussionsServicesId],
    );
  }

  Future<void> files(
    _i1.Session session,
    Service service,
    _i2.FileStore fileStore,
  ) async {
    if (fileStore.id == null) {
      throw ArgumentError.notNull('fileStore.id');
    }
    if (service.id == null) {
      throw ArgumentError.notNull('service.id');
    }

    var $fileStore = _i2.FileStoreImplicit(
      fileStore,
      $_servicesFilesServicesId: service.id,
    );
    await session.dbNext.updateRow<_i2.FileStore>(
      $fileStore,
      columns: [_i2.FileStore.t.$_servicesFilesServicesId],
    );
  }
}

class ServiceDetachRepository {
  const ServiceDetachRepository._();

  Future<void> meetings(
    _i1.Session session,
    List<_i2.Meeting> meeting,
  ) async {
    if (meeting.any((e) => e.id == null)) {
      throw ArgumentError.notNull('meeting.id');
    }

    var $meeting = meeting
        .map((e) => _i2.MeetingImplicit(
              e,
              $_servicesMeetingsServicesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Meeting>(
      $meeting,
      columns: [_i2.Meeting.t.$_servicesMeetingsServicesId],
    );
  }

  Future<void> rosters(
    _i1.Session session,
    List<_i2.ServiceRoster> serviceRoster,
  ) async {
    if (serviceRoster.any((e) => e.id == null)) {
      throw ArgumentError.notNull('serviceRoster.id');
    }

    var $serviceRoster = serviceRoster
        .map((e) => _i2.ServiceRosterImplicit(
              e,
              $_servicesRostersServicesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.ServiceRoster>(
      $serviceRoster,
      columns: [_i2.ServiceRoster.t.$_servicesRostersServicesId],
    );
  }

  Future<void> members(
    _i1.Session session,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_servicesMembersServicesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_servicesMembersServicesId],
    );
  }

  Future<void> discussions(
    _i1.Session session,
    List<_i2.ChatRoom> chatRoom,
  ) async {
    if (chatRoom.any((e) => e.id == null)) {
      throw ArgumentError.notNull('chatRoom.id');
    }

    var $chatRoom = chatRoom
        .map((e) => _i2.ChatRoomImplicit(
              e,
              $_servicesDiscussionsServicesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.ChatRoom>(
      $chatRoom,
      columns: [_i2.ChatRoom.t.$_servicesDiscussionsServicesId],
    );
  }

  Future<void> files(
    _i1.Session session,
    List<_i2.FileStore> fileStore,
  ) async {
    if (fileStore.any((e) => e.id == null)) {
      throw ArgumentError.notNull('fileStore.id');
    }

    var $fileStore = fileStore
        .map((e) => _i2.FileStoreImplicit(
              e,
              $_servicesFilesServicesId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.FileStore>(
      $fileStore,
      columns: [_i2.FileStore.t.$_servicesFilesServicesId],
    );
  }
}

class ServiceDetachRowRepository {
  const ServiceDetachRowRepository._();

  Future<void> meetings(
    _i1.Session session,
    _i2.Meeting meeting,
  ) async {
    if (meeting.id == null) {
      throw ArgumentError.notNull('meeting.id');
    }

    var $meeting = _i2.MeetingImplicit(
      meeting,
      $_servicesMeetingsServicesId: null,
    );
    await session.dbNext.updateRow<_i2.Meeting>(
      $meeting,
      columns: [_i2.Meeting.t.$_servicesMeetingsServicesId],
    );
  }

  Future<void> rosters(
    _i1.Session session,
    _i2.ServiceRoster serviceRoster,
  ) async {
    if (serviceRoster.id == null) {
      throw ArgumentError.notNull('serviceRoster.id');
    }

    var $serviceRoster = _i2.ServiceRosterImplicit(
      serviceRoster,
      $_servicesRostersServicesId: null,
    );
    await session.dbNext.updateRow<_i2.ServiceRoster>(
      $serviceRoster,
      columns: [_i2.ServiceRoster.t.$_servicesRostersServicesId],
    );
  }

  Future<void> members(
    _i1.Session session,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_servicesMembersServicesId: null,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_servicesMembersServicesId],
    );
  }

  Future<void> discussions(
    _i1.Session session,
    _i2.ChatRoom chatRoom,
  ) async {
    if (chatRoom.id == null) {
      throw ArgumentError.notNull('chatRoom.id');
    }

    var $chatRoom = _i2.ChatRoomImplicit(
      chatRoom,
      $_servicesDiscussionsServicesId: null,
    );
    await session.dbNext.updateRow<_i2.ChatRoom>(
      $chatRoom,
      columns: [_i2.ChatRoom.t.$_servicesDiscussionsServicesId],
    );
  }

  Future<void> files(
    _i1.Session session,
    _i2.FileStore fileStore,
  ) async {
    if (fileStore.id == null) {
      throw ArgumentError.notNull('fileStore.id');
    }

    var $fileStore = _i2.FileStoreImplicit(
      fileStore,
      $_servicesFilesServicesId: null,
    );
    await session.dbNext.updateRow<_i2.FileStore>(
      $fileStore,
      columns: [_i2.FileStore.t.$_servicesFilesServicesId],
    );
  }
}
