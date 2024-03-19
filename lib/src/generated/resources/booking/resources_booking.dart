/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class ResourceBooking extends _i1.TableRow {
  ResourceBooking._({
    int? id,
    this.createdDateTime,
    required this.requestedById,
    this.requestedBy,
    this.quanity,
    this.duration,
    this.startDateTime,
    this.endDateTime,
    this.rate,
    this.amount,
    this.approvalStatus,
    this.paymentStatus,
    this.transactionID,
    this.rbookingID,
    required this.venueId,
    this.venue,
  }) : super(id);

  factory ResourceBooking({
    int? id,
    DateTime? createdDateTime,
    required int requestedById,
    _i2.Contact? requestedBy,
    int? quanity,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? rbookingID,
    required int venueId,
    _i2.Venue? venue,
  }) = _ResourceBookingImpl;

  factory ResourceBooking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ResourceBooking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      createdDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdDateTime']),
      requestedById: serializationManager
          .deserialize<int>(jsonSerialization['requestedById']),
      requestedBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['requestedBy']),
      quanity:
          serializationManager.deserialize<int?>(jsonSerialization['quanity']),
      duration: serializationManager
          .deserialize<Duration?>(jsonSerialization['duration']),
      startDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['startDateTime']),
      endDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endDateTime']),
      rate: serializationManager.deserialize<int?>(jsonSerialization['rate']),
      amount:
          serializationManager.deserialize<int?>(jsonSerialization['amount']),
      approvalStatus: serializationManager
          .deserialize<bool?>(jsonSerialization['approvalStatus']),
      paymentStatus: serializationManager
          .deserialize<bool?>(jsonSerialization['paymentStatus']),
      transactionID: serializationManager
          .deserialize<String?>(jsonSerialization['transactionID']),
      rbookingID: serializationManager
          .deserialize<int?>(jsonSerialization['rbookingID']),
      venueId:
          serializationManager.deserialize<int>(jsonSerialization['venueId']),
      venue: serializationManager
          .deserialize<_i2.Venue?>(jsonSerialization['venue']),
    );
  }

  static final t = ResourceBookingTable();

  static const db = ResourceBookingRepository._();

  DateTime? createdDateTime;

  int requestedById;

  _i2.Contact? requestedBy;

  int? quanity;

  Duration? duration;

  DateTime? startDateTime;

  DateTime? endDateTime;

  int? rate;

  int? amount;

  bool? approvalStatus;

  bool? paymentStatus;

  String? transactionID;

  int? rbookingID;

  int venueId;

  _i2.Venue? venue;

  @override
  _i1.Table get table => t;

  ResourceBooking copyWith({
    int? id,
    DateTime? createdDateTime,
    int? requestedById,
    _i2.Contact? requestedBy,
    int? quanity,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? rbookingID,
    int? venueId,
    _i2.Venue? venue,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (createdDateTime != null) 'createdDateTime': createdDateTime?.toJson(),
      'requestedById': requestedById,
      if (requestedBy != null) 'requestedBy': requestedBy?.toJson(),
      if (quanity != null) 'quanity': quanity,
      if (duration != null) 'duration': duration?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (rate != null) 'rate': rate,
      if (amount != null) 'amount': amount,
      if (approvalStatus != null) 'approvalStatus': approvalStatus,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (transactionID != null) 'transactionID': transactionID,
      if (rbookingID != null) 'rbookingID': rbookingID,
      'venueId': venueId,
      if (venue != null) 'venue': venue?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'createdDateTime': createdDateTime,
      'requestedById': requestedById,
      'quanity': quanity,
      'duration': duration,
      'startDateTime': startDateTime,
      'endDateTime': endDateTime,
      'rate': rate,
      'amount': amount,
      'approvalStatus': approvalStatus,
      'paymentStatus': paymentStatus,
      'transactionID': transactionID,
      'rbookingID': rbookingID,
      'venueId': venueId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (createdDateTime != null) 'createdDateTime': createdDateTime?.toJson(),
      'requestedById': requestedById,
      if (requestedBy != null) 'requestedBy': requestedBy?.allToJson(),
      if (quanity != null) 'quanity': quanity,
      if (duration != null) 'duration': duration?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (rate != null) 'rate': rate,
      if (amount != null) 'amount': amount,
      if (approvalStatus != null) 'approvalStatus': approvalStatus,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (transactionID != null) 'transactionID': transactionID,
      if (rbookingID != null) 'rbookingID': rbookingID,
      'venueId': venueId,
      if (venue != null) 'venue': venue?.allToJson(),
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
      case 'createdDateTime':
        createdDateTime = value;
        return;
      case 'requestedById':
        requestedById = value;
        return;
      case 'quanity':
        quanity = value;
        return;
      case 'duration':
        duration = value;
        return;
      case 'startDateTime':
        startDateTime = value;
        return;
      case 'endDateTime':
        endDateTime = value;
        return;
      case 'rate':
        rate = value;
        return;
      case 'amount':
        amount = value;
        return;
      case 'approvalStatus':
        approvalStatus = value;
        return;
      case 'paymentStatus':
        paymentStatus = value;
        return;
      case 'transactionID':
        transactionID = value;
        return;
      case 'rbookingID':
        rbookingID = value;
        return;
      case 'venueId':
        venueId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ResourceBooking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ResourceBookingInclude? include,
  }) async {
    return session.db.find<ResourceBooking>(
      where: where != null ? where(ResourceBooking.t) : null,
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
  static Future<ResourceBooking?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ResourceBookingInclude? include,
  }) async {
    return session.db.findSingleRow<ResourceBooking>(
      where: where != null ? where(ResourceBooking.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ResourceBooking?> findById(
    _i1.Session session,
    int id, {
    ResourceBookingInclude? include,
  }) async {
    return session.db.findById<ResourceBooking>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceBookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ResourceBooking>(
      where: where(ResourceBooking.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ResourceBooking row, {
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
    ResourceBooking row, {
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
    ResourceBooking row, {
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
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ResourceBooking>(
      where: where != null ? where(ResourceBooking.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ResourceBookingInclude include({
    _i2.ContactInclude? requestedBy,
    _i2.VenueInclude? venue,
  }) {
    return ResourceBookingInclude._(
      requestedBy: requestedBy,
      venue: venue,
    );
  }

  static ResourceBookingIncludeList includeList({
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceBookingTable>? orderByList,
    ResourceBookingInclude? include,
  }) {
    return ResourceBookingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ResourceBooking.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ResourceBooking.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ResourceBookingImpl extends ResourceBooking {
  _ResourceBookingImpl({
    int? id,
    DateTime? createdDateTime,
    required int requestedById,
    _i2.Contact? requestedBy,
    int? quanity,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? rbookingID,
    required int venueId,
    _i2.Venue? venue,
  }) : super._(
          id: id,
          createdDateTime: createdDateTime,
          requestedById: requestedById,
          requestedBy: requestedBy,
          quanity: quanity,
          duration: duration,
          startDateTime: startDateTime,
          endDateTime: endDateTime,
          rate: rate,
          amount: amount,
          approvalStatus: approvalStatus,
          paymentStatus: paymentStatus,
          transactionID: transactionID,
          rbookingID: rbookingID,
          venueId: venueId,
          venue: venue,
        );

  @override
  ResourceBooking copyWith({
    Object? id = _Undefined,
    Object? createdDateTime = _Undefined,
    int? requestedById,
    Object? requestedBy = _Undefined,
    Object? quanity = _Undefined,
    Object? duration = _Undefined,
    Object? startDateTime = _Undefined,
    Object? endDateTime = _Undefined,
    Object? rate = _Undefined,
    Object? amount = _Undefined,
    Object? approvalStatus = _Undefined,
    Object? paymentStatus = _Undefined,
    Object? transactionID = _Undefined,
    Object? rbookingID = _Undefined,
    int? venueId,
    Object? venue = _Undefined,
  }) {
    return ResourceBooking(
      id: id is int? ? id : this.id,
      createdDateTime:
          createdDateTime is DateTime? ? createdDateTime : this.createdDateTime,
      requestedById: requestedById ?? this.requestedById,
      requestedBy: requestedBy is _i2.Contact?
          ? requestedBy
          : this.requestedBy?.copyWith(),
      quanity: quanity is int? ? quanity : this.quanity,
      duration: duration is Duration? ? duration : this.duration,
      startDateTime:
          startDateTime is DateTime? ? startDateTime : this.startDateTime,
      endDateTime: endDateTime is DateTime? ? endDateTime : this.endDateTime,
      rate: rate is int? ? rate : this.rate,
      amount: amount is int? ? amount : this.amount,
      approvalStatus:
          approvalStatus is bool? ? approvalStatus : this.approvalStatus,
      paymentStatus:
          paymentStatus is bool? ? paymentStatus : this.paymentStatus,
      transactionID:
          transactionID is String? ? transactionID : this.transactionID,
      rbookingID: rbookingID is int? ? rbookingID : this.rbookingID,
      venueId: venueId ?? this.venueId,
      venue: venue is _i2.Venue? ? venue : this.venue?.copyWith(),
    );
  }
}

class ResourceBookingTable extends _i1.Table {
  ResourceBookingTable({super.tableRelation})
      : super(tableName: 'resource_bookings') {
    createdDateTime = _i1.ColumnDateTime(
      'createdDateTime',
      this,
    );
    requestedById = _i1.ColumnInt(
      'requestedById',
      this,
    );
    quanity = _i1.ColumnInt(
      'quanity',
      this,
    );
    duration = _i1.ColumnDuration(
      'duration',
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
    rate = _i1.ColumnInt(
      'rate',
      this,
    );
    amount = _i1.ColumnInt(
      'amount',
      this,
    );
    approvalStatus = _i1.ColumnBool(
      'approvalStatus',
      this,
    );
    paymentStatus = _i1.ColumnBool(
      'paymentStatus',
      this,
    );
    transactionID = _i1.ColumnString(
      'transactionID',
      this,
    );
    rbookingID = _i1.ColumnInt(
      'rbookingID',
      this,
    );
    venueId = _i1.ColumnInt(
      'venueId',
      this,
    );
  }

  late final _i1.ColumnDateTime createdDateTime;

  late final _i1.ColumnInt requestedById;

  _i2.ContactTable? _requestedBy;

  late final _i1.ColumnInt quanity;

  late final _i1.ColumnDuration duration;

  late final _i1.ColumnDateTime startDateTime;

  late final _i1.ColumnDateTime endDateTime;

  late final _i1.ColumnInt rate;

  late final _i1.ColumnInt amount;

  late final _i1.ColumnBool approvalStatus;

  late final _i1.ColumnBool paymentStatus;

  late final _i1.ColumnString transactionID;

  late final _i1.ColumnInt rbookingID;

  late final _i1.ColumnInt venueId;

  _i2.VenueTable? _venue;

  _i2.ContactTable get requestedBy {
    if (_requestedBy != null) return _requestedBy!;
    _requestedBy = _i1.createRelationTable(
      relationFieldName: 'requestedBy',
      field: ResourceBooking.t.requestedById,
      foreignField: _i2.Contact.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return _requestedBy!;
  }

  _i2.VenueTable get venue {
    if (_venue != null) return _venue!;
    _venue = _i1.createRelationTable(
      relationFieldName: 'venue',
      field: ResourceBooking.t.venueId,
      foreignField: _i2.Venue.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.VenueTable(tableRelation: foreignTableRelation),
    );
    return _venue!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        createdDateTime,
        requestedById,
        quanity,
        duration,
        startDateTime,
        endDateTime,
        rate,
        amount,
        approvalStatus,
        paymentStatus,
        transactionID,
        rbookingID,
        venueId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'requestedBy') {
      return requestedBy;
    }
    if (relationField == 'venue') {
      return venue;
    }
    return null;
  }
}

@Deprecated('Use ResourceBookingTable.t instead.')
ResourceBookingTable tResourceBooking = ResourceBookingTable();

class ResourceBookingInclude extends _i1.IncludeObject {
  ResourceBookingInclude._({
    _i2.ContactInclude? requestedBy,
    _i2.VenueInclude? venue,
  }) {
    _requestedBy = requestedBy;
    _venue = venue;
  }

  _i2.ContactInclude? _requestedBy;

  _i2.VenueInclude? _venue;

  @override
  Map<String, _i1.Include?> get includes => {
        'requestedBy': _requestedBy,
        'venue': _venue,
      };

  @override
  _i1.Table get table => ResourceBooking.t;
}

class ResourceBookingIncludeList extends _i1.IncludeList {
  ResourceBookingIncludeList._({
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ResourceBooking.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ResourceBooking.t;
}

class ResourceBookingRepository {
  const ResourceBookingRepository._();

  final attachRow = const ResourceBookingAttachRowRepository._();

  Future<List<ResourceBooking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResourceBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceBookingTable>? orderByList,
    _i1.Transaction? transaction,
    ResourceBookingInclude? include,
  }) async {
    return session.dbNext.find<ResourceBooking>(
      where: where?.call(ResourceBooking.t),
      orderBy: orderBy?.call(ResourceBooking.t),
      orderByList: orderByList?.call(ResourceBooking.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ResourceBooking?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? offset,
    _i1.OrderByBuilder<ResourceBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResourceBookingTable>? orderByList,
    _i1.Transaction? transaction,
    ResourceBookingInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ResourceBooking>(
      where: where?.call(ResourceBooking.t),
      orderBy: orderBy?.call(ResourceBooking.t),
      orderByList: orderByList?.call(ResourceBooking.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ResourceBooking?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ResourceBookingInclude? include,
  }) async {
    return session.dbNext.findById<ResourceBooking>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ResourceBooking>> insert(
    _i1.Session session,
    List<ResourceBooking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ResourceBooking>(
      rows,
      transaction: transaction,
    );
  }

  Future<ResourceBooking> insertRow(
    _i1.Session session,
    ResourceBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ResourceBooking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ResourceBooking>> update(
    _i1.Session session,
    List<ResourceBooking> rows, {
    _i1.ColumnSelections<ResourceBookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ResourceBooking>(
      rows,
      columns: columns?.call(ResourceBooking.t),
      transaction: transaction,
    );
  }

  Future<ResourceBooking> updateRow(
    _i1.Session session,
    ResourceBooking row, {
    _i1.ColumnSelections<ResourceBookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ResourceBooking>(
      row,
      columns: columns?.call(ResourceBooking.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ResourceBooking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ResourceBooking>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ResourceBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ResourceBooking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResourceBookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ResourceBooking>(
      where: where(ResourceBooking.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResourceBookingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ResourceBooking>(
      where: where?.call(ResourceBooking.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ResourceBookingAttachRowRepository {
  const ResourceBookingAttachRowRepository._();

  Future<void> requestedBy(
    _i1.Session session,
    ResourceBooking resourceBooking,
    _i2.Contact requestedBy,
  ) async {
    if (resourceBooking.id == null) {
      throw ArgumentError.notNull('resourceBooking.id');
    }
    if (requestedBy.id == null) {
      throw ArgumentError.notNull('requestedBy.id');
    }

    var $resourceBooking =
        resourceBooking.copyWith(requestedById: requestedBy.id);
    await session.dbNext.updateRow<ResourceBooking>(
      $resourceBooking,
      columns: [ResourceBooking.t.requestedById],
    );
  }

  Future<void> venue(
    _i1.Session session,
    ResourceBooking resourceBooking,
    _i2.Venue venue,
  ) async {
    if (resourceBooking.id == null) {
      throw ArgumentError.notNull('resourceBooking.id');
    }
    if (venue.id == null) {
      throw ArgumentError.notNull('venue.id');
    }

    var $resourceBooking = resourceBooking.copyWith(venueId: venue.id);
    await session.dbNext.updateRow<ResourceBooking>(
      $resourceBooking,
      columns: [ResourceBooking.t.venueId],
    );
  }
}
