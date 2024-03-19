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

abstract class Venue extends _i1.TableRow {
  Venue._({
    int? id,
    this.name,
    this.venueType,
    this.location,
    this.capacity,
    this.rent,
  }) : super(id);

  factory Venue({
    int? id,
    String? name,
    _i2.VenueType? venueType,
    String? location,
    int? capacity,
    int? rent,
  }) = _VenueImpl;

  factory Venue.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Venue(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name:
          serializationManager.deserialize<String?>(jsonSerialization['name']),
      venueType: serializationManager
          .deserialize<_i2.VenueType?>(jsonSerialization['venueType']),
      location: serializationManager
          .deserialize<String?>(jsonSerialization['location']),
      capacity:
          serializationManager.deserialize<int?>(jsonSerialization['capacity']),
      rent: serializationManager.deserialize<int?>(jsonSerialization['rent']),
    );
  }

  static final t = VenueTable();

  static const db = VenueRepository._();

  String? name;

  _i2.VenueType? venueType;

  String? location;

  int? capacity;

  int? rent;

  @override
  _i1.Table get table => t;

  Venue copyWith({
    int? id,
    String? name,
    _i2.VenueType? venueType,
    String? location,
    int? capacity,
    int? rent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (venueType != null) 'venueType': venueType?.toJson(),
      if (location != null) 'location': location,
      if (capacity != null) 'capacity': capacity,
      if (rent != null) 'rent': rent,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'venueType': venueType,
      'location': location,
      'capacity': capacity,
      'rent': rent,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (venueType != null) 'venueType': venueType?.allToJson(),
      if (location != null) 'location': location,
      if (capacity != null) 'capacity': capacity,
      if (rent != null) 'rent': rent,
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
      case 'name':
        name = value;
        return;
      case 'venueType':
        venueType = value;
        return;
      case 'location':
        location = value;
        return;
      case 'capacity':
        capacity = value;
        return;
      case 'rent':
        rent = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Venue>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Venue>(
      where: where != null ? where(Venue.t) : null,
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
  static Future<Venue?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Venue>(
      where: where != null ? where(Venue.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Venue?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Venue>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Venue>(
      where: where(Venue.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Venue row, {
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
    Venue row, {
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
    Venue row, {
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
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Venue>(
      where: where != null ? where(Venue.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static VenueInclude include() {
    return VenueInclude._();
  }

  static VenueIncludeList includeList({
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    VenueInclude? include,
  }) {
    return VenueIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Venue.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Venue.t),
      include: include,
    );
  }
}

class _Undefined {}

class _VenueImpl extends Venue {
  _VenueImpl({
    int? id,
    String? name,
    _i2.VenueType? venueType,
    String? location,
    int? capacity,
    int? rent,
  }) : super._(
          id: id,
          name: name,
          venueType: venueType,
          location: location,
          capacity: capacity,
          rent: rent,
        );

  @override
  Venue copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? venueType = _Undefined,
    Object? location = _Undefined,
    Object? capacity = _Undefined,
    Object? rent = _Undefined,
  }) {
    return Venue(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      venueType:
          venueType is _i2.VenueType? ? venueType : this.venueType?.copyWith(),
      location: location is String? ? location : this.location,
      capacity: capacity is int? ? capacity : this.capacity,
      rent: rent is int? ? rent : this.rent,
    );
  }
}

class VenueTable extends _i1.Table {
  VenueTable({super.tableRelation}) : super(tableName: 'venues') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    venueType = _i1.ColumnSerializable(
      'venueType',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    capacity = _i1.ColumnInt(
      'capacity',
      this,
    );
    rent = _i1.ColumnInt(
      'rent',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnSerializable venueType;

  late final _i1.ColumnString location;

  late final _i1.ColumnInt capacity;

  late final _i1.ColumnInt rent;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        venueType,
        location,
        capacity,
        rent,
      ];
}

@Deprecated('Use VenueTable.t instead.')
VenueTable tVenue = VenueTable();

class VenueInclude extends _i1.IncludeObject {
  VenueInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Venue.t;
}

class VenueIncludeList extends _i1.IncludeList {
  VenueIncludeList._({
    _i1.WhereExpressionBuilder<VenueTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Venue.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Venue.t;
}

class VenueRepository {
  const VenueRepository._();

  Future<List<Venue>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Venue>(
      where: where?.call(Venue.t),
      orderBy: orderBy?.call(Venue.t),
      orderByList: orderByList?.call(Venue.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Venue?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Venue>(
      where: where?.call(Venue.t),
      orderBy: orderBy?.call(Venue.t),
      orderByList: orderByList?.call(Venue.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Venue?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Venue>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Venue>> insert(
    _i1.Session session,
    List<Venue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Venue>(
      rows,
      transaction: transaction,
    );
  }

  Future<Venue> insertRow(
    _i1.Session session,
    Venue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Venue>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Venue>> update(
    _i1.Session session,
    List<Venue> rows, {
    _i1.ColumnSelections<VenueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Venue>(
      rows,
      columns: columns?.call(Venue.t),
      transaction: transaction,
    );
  }

  Future<Venue> updateRow(
    _i1.Session session,
    Venue row, {
    _i1.ColumnSelections<VenueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Venue>(
      row,
      columns: columns?.call(Venue.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Venue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Venue>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Venue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Venue>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Venue>(
      where: where(Venue.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Venue>(
      where: where?.call(Venue.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
