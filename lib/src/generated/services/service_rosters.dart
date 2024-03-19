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

abstract class ServiceRoster extends _i1.TableRow {
  ServiceRoster._({
    int? id,
    required this.member,
    required this.service,
    required this.position,
    required this.availability,
  }) : super(id);

  factory ServiceRoster({
    int? id,
    required _i2.Contact member,
    required _i2.Service service,
    required _i2.Position position,
    required int availability,
  }) = _ServiceRosterImpl;

  factory ServiceRoster.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ServiceRoster(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      member: serializationManager
          .deserialize<_i2.Contact>(jsonSerialization['member']),
      service: serializationManager
          .deserialize<_i2.Service>(jsonSerialization['service']),
      position: serializationManager
          .deserialize<_i2.Position>(jsonSerialization['position']),
      availability: serializationManager
          .deserialize<int>(jsonSerialization['availability']),
    );
  }

  static final t = ServiceRosterTable();

  static const db = ServiceRosterRepository._();

  _i2.Contact member;

  _i2.Service service;

  _i2.Position position;

  int availability;

  int? _servicesRostersServicesId;

  @override
  _i1.Table get table => t;

  ServiceRoster copyWith({
    int? id,
    _i2.Contact? member,
    _i2.Service? service,
    _i2.Position? position,
    int? availability,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'member': member.toJson(),
      'service': service.toJson(),
      'position': position.toJson(),
      'availability': availability,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'member': member,
      'service': service,
      'position': position,
      'availability': availability,
      '_servicesRostersServicesId': _servicesRostersServicesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'member': member.allToJson(),
      'service': service.allToJson(),
      'position': position.allToJson(),
      'availability': availability,
      if (_servicesRostersServicesId != null)
        '_servicesRostersServicesId': _servicesRostersServicesId,
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
      case 'member':
        member = value;
        return;
      case 'service':
        service = value;
        return;
      case 'position':
        position = value;
        return;
      case 'availability':
        availability = value;
        return;
      case '_servicesRostersServicesId':
        _servicesRostersServicesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ServiceRoster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ServiceRoster>(
      where: where != null ? where(ServiceRoster.t) : null,
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
  static Future<ServiceRoster?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ServiceRoster>(
      where: where != null ? where(ServiceRoster.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ServiceRoster?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ServiceRoster>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceRosterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServiceRoster>(
      where: where(ServiceRoster.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ServiceRoster row, {
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
    ServiceRoster row, {
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
    ServiceRoster row, {
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
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServiceRoster>(
      where: where != null ? where(ServiceRoster.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ServiceRosterInclude include() {
    return ServiceRosterInclude._();
  }

  static ServiceRosterIncludeList includeList({
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceRosterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceRosterTable>? orderByList,
    ServiceRosterInclude? include,
  }) {
    return ServiceRosterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServiceRoster.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ServiceRoster.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ServiceRosterImpl extends ServiceRoster {
  _ServiceRosterImpl({
    int? id,
    required _i2.Contact member,
    required _i2.Service service,
    required _i2.Position position,
    required int availability,
  }) : super._(
          id: id,
          member: member,
          service: service,
          position: position,
          availability: availability,
        );

  @override
  ServiceRoster copyWith({
    Object? id = _Undefined,
    _i2.Contact? member,
    _i2.Service? service,
    _i2.Position? position,
    int? availability,
  }) {
    return ServiceRoster(
      id: id is int? ? id : this.id,
      member: member ?? this.member.copyWith(),
      service: service ?? this.service.copyWith(),
      position: position ?? this.position.copyWith(),
      availability: availability ?? this.availability,
    );
  }
}

class ServiceRosterImplicit extends _ServiceRosterImpl {
  ServiceRosterImplicit._({
    int? id,
    required _i2.Contact member,
    required _i2.Service service,
    required _i2.Position position,
    required int availability,
    this.$_servicesRostersServicesId,
  }) : super(
          id: id,
          member: member,
          service: service,
          position: position,
          availability: availability,
        );

  factory ServiceRosterImplicit(
    ServiceRoster serviceRoster, {
    int? $_servicesRostersServicesId,
  }) {
    return ServiceRosterImplicit._(
      id: serviceRoster.id,
      member: serviceRoster.member,
      service: serviceRoster.service,
      position: serviceRoster.position,
      availability: serviceRoster.availability,
      $_servicesRostersServicesId: $_servicesRostersServicesId,
    );
  }

  int? $_servicesRostersServicesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_servicesRostersServicesId': $_servicesRostersServicesId});
    return jsonMap;
  }
}

class ServiceRosterTable extends _i1.Table {
  ServiceRosterTable({super.tableRelation})
      : super(tableName: 'service_rosters') {
    member = _i1.ColumnSerializable(
      'member',
      this,
    );
    service = _i1.ColumnSerializable(
      'service',
      this,
    );
    position = _i1.ColumnSerializable(
      'position',
      this,
    );
    availability = _i1.ColumnInt(
      'availability',
      this,
    );
    $_servicesRostersServicesId = _i1.ColumnInt(
      '_servicesRostersServicesId',
      this,
    );
  }

  late final _i1.ColumnSerializable member;

  late final _i1.ColumnSerializable service;

  late final _i1.ColumnSerializable position;

  late final _i1.ColumnInt availability;

  late final _i1.ColumnInt $_servicesRostersServicesId;

  @override
  List<_i1.Column> get columns => [
        id,
        member,
        service,
        position,
        availability,
        $_servicesRostersServicesId,
      ];
}

@Deprecated('Use ServiceRosterTable.t instead.')
ServiceRosterTable tServiceRoster = ServiceRosterTable();

class ServiceRosterInclude extends _i1.IncludeObject {
  ServiceRosterInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ServiceRoster.t;
}

class ServiceRosterIncludeList extends _i1.IncludeList {
  ServiceRosterIncludeList._({
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServiceRoster.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ServiceRoster.t;
}

class ServiceRosterRepository {
  const ServiceRosterRepository._();

  Future<List<ServiceRoster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServiceRosterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceRosterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ServiceRoster>(
      where: where?.call(ServiceRoster.t),
      orderBy: orderBy?.call(ServiceRoster.t),
      orderByList: orderByList?.call(ServiceRoster.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ServiceRoster?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServiceRosterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServiceRosterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ServiceRoster>(
      where: where?.call(ServiceRoster.t),
      orderBy: orderBy?.call(ServiceRoster.t),
      orderByList: orderByList?.call(ServiceRoster.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ServiceRoster?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ServiceRoster>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ServiceRoster>> insert(
    _i1.Session session,
    List<ServiceRoster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ServiceRoster>(
      rows,
      transaction: transaction,
    );
  }

  Future<ServiceRoster> insertRow(
    _i1.Session session,
    ServiceRoster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ServiceRoster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ServiceRoster>> update(
    _i1.Session session,
    List<ServiceRoster> rows, {
    _i1.ColumnSelections<ServiceRosterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ServiceRoster>(
      rows,
      columns: columns?.call(ServiceRoster.t),
      transaction: transaction,
    );
  }

  Future<ServiceRoster> updateRow(
    _i1.Session session,
    ServiceRoster row, {
    _i1.ColumnSelections<ServiceRosterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ServiceRoster>(
      row,
      columns: columns?.call(ServiceRoster.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ServiceRoster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ServiceRoster>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ServiceRoster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ServiceRoster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServiceRosterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ServiceRoster>(
      where: where(ServiceRoster.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServiceRosterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ServiceRoster>(
      where: where?.call(ServiceRoster.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
