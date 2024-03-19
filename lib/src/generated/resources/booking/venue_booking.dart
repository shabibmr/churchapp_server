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

abstract class VenueBooking extends _i1.TableRow {
  VenueBooking._({
    int? id,
    this.createdDateTime,
    required this.requestedById,
    this.requestedBy,
    this.duration,
    this.startDateTime,
    this.endDateTime,
    this.rate,
    this.amount,
    this.approvalStatus,
    this.paymentStatus,
    this.transactionID,
    this.vbookingID,
    required this.venueId,
    this.venue,
    this.resources,
  }) : super(id);

  factory VenueBooking({
    int? id,
    DateTime? createdDateTime,
    required int requestedById,
    _i2.Contact? requestedBy,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? vbookingID,
    required int venueId,
    _i2.Venue? venue,
    List<_i2.ResourceBooking?>? resources,
  }) = _VenueBookingImpl;

  factory VenueBooking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return VenueBooking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      createdDateTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdDateTime']),
      requestedById: serializationManager
          .deserialize<int>(jsonSerialization['requestedById']),
      requestedBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['requestedBy']),
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
      vbookingID: serializationManager
          .deserialize<int?>(jsonSerialization['vbookingID']),
      venueId:
          serializationManager.deserialize<int>(jsonSerialization['venueId']),
      venue: serializationManager
          .deserialize<_i2.Venue?>(jsonSerialization['venue']),
      resources: serializationManager.deserialize<List<_i2.ResourceBooking?>?>(
          jsonSerialization['resources']),
    );
  }

  static final t = VenueBookingTable();

  static const db = VenueBookingRepository._();

  DateTime? createdDateTime;

  int requestedById;

  _i2.Contact? requestedBy;

  Duration? duration;

  DateTime? startDateTime;

  DateTime? endDateTime;

  int? rate;

  int? amount;

  bool? approvalStatus;

  bool? paymentStatus;

  String? transactionID;

  int? vbookingID;

  int venueId;

  _i2.Venue? venue;

  List<_i2.ResourceBooking?>? resources;

  @override
  _i1.Table get table => t;

  VenueBooking copyWith({
    int? id,
    DateTime? createdDateTime,
    int? requestedById,
    _i2.Contact? requestedBy,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? vbookingID,
    int? venueId,
    _i2.Venue? venue,
    List<_i2.ResourceBooking?>? resources,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (createdDateTime != null) 'createdDateTime': createdDateTime?.toJson(),
      'requestedById': requestedById,
      if (requestedBy != null) 'requestedBy': requestedBy?.toJson(),
      if (duration != null) 'duration': duration?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (rate != null) 'rate': rate,
      if (amount != null) 'amount': amount,
      if (approvalStatus != null) 'approvalStatus': approvalStatus,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (transactionID != null) 'transactionID': transactionID,
      if (vbookingID != null) 'vbookingID': vbookingID,
      'venueId': venueId,
      if (venue != null) 'venue': venue?.toJson(),
      if (resources != null)
        'resources': resources?.toJson(valueToJson: (v) => v?.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'createdDateTime': createdDateTime,
      'requestedById': requestedById,
      'duration': duration,
      'startDateTime': startDateTime,
      'endDateTime': endDateTime,
      'rate': rate,
      'amount': amount,
      'approvalStatus': approvalStatus,
      'paymentStatus': paymentStatus,
      'transactionID': transactionID,
      'vbookingID': vbookingID,
      'venueId': venueId,
      'resources': resources,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (createdDateTime != null) 'createdDateTime': createdDateTime?.toJson(),
      'requestedById': requestedById,
      if (requestedBy != null) 'requestedBy': requestedBy?.allToJson(),
      if (duration != null) 'duration': duration?.toJson(),
      if (startDateTime != null) 'startDateTime': startDateTime?.toJson(),
      if (endDateTime != null) 'endDateTime': endDateTime?.toJson(),
      if (rate != null) 'rate': rate,
      if (amount != null) 'amount': amount,
      if (approvalStatus != null) 'approvalStatus': approvalStatus,
      if (paymentStatus != null) 'paymentStatus': paymentStatus,
      if (transactionID != null) 'transactionID': transactionID,
      if (vbookingID != null) 'vbookingID': vbookingID,
      'venueId': venueId,
      if (venue != null) 'venue': venue?.allToJson(),
      if (resources != null)
        'resources': resources?.toJson(valueToJson: (v) => v?.allToJson()),
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
      case 'vbookingID':
        vbookingID = value;
        return;
      case 'venueId':
        venueId = value;
        return;
      case 'resources':
        resources = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<VenueBooking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    VenueBookingInclude? include,
  }) async {
    return session.db.find<VenueBooking>(
      where: where != null ? where(VenueBooking.t) : null,
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
  static Future<VenueBooking?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    VenueBookingInclude? include,
  }) async {
    return session.db.findSingleRow<VenueBooking>(
      where: where != null ? where(VenueBooking.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<VenueBooking?> findById(
    _i1.Session session,
    int id, {
    VenueBookingInclude? include,
  }) async {
    return session.db.findById<VenueBooking>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueBookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<VenueBooking>(
      where: where(VenueBooking.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    VenueBooking row, {
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
    VenueBooking row, {
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
    VenueBooking row, {
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
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<VenueBooking>(
      where: where != null ? where(VenueBooking.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static VenueBookingInclude include({
    _i2.ContactInclude? requestedBy,
    _i2.VenueInclude? venue,
  }) {
    return VenueBookingInclude._(
      requestedBy: requestedBy,
      venue: venue,
    );
  }

  static VenueBookingIncludeList includeList({
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueBookingTable>? orderByList,
    VenueBookingInclude? include,
  }) {
    return VenueBookingIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(VenueBooking.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(VenueBooking.t),
      include: include,
    );
  }
}

class _Undefined {}

class _VenueBookingImpl extends VenueBooking {
  _VenueBookingImpl({
    int? id,
    DateTime? createdDateTime,
    required int requestedById,
    _i2.Contact? requestedBy,
    Duration? duration,
    DateTime? startDateTime,
    DateTime? endDateTime,
    int? rate,
    int? amount,
    bool? approvalStatus,
    bool? paymentStatus,
    String? transactionID,
    int? vbookingID,
    required int venueId,
    _i2.Venue? venue,
    List<_i2.ResourceBooking?>? resources,
  }) : super._(
          id: id,
          createdDateTime: createdDateTime,
          requestedById: requestedById,
          requestedBy: requestedBy,
          duration: duration,
          startDateTime: startDateTime,
          endDateTime: endDateTime,
          rate: rate,
          amount: amount,
          approvalStatus: approvalStatus,
          paymentStatus: paymentStatus,
          transactionID: transactionID,
          vbookingID: vbookingID,
          venueId: venueId,
          venue: venue,
          resources: resources,
        );

  @override
  VenueBooking copyWith({
    Object? id = _Undefined,
    Object? createdDateTime = _Undefined,
    int? requestedById,
    Object? requestedBy = _Undefined,
    Object? duration = _Undefined,
    Object? startDateTime = _Undefined,
    Object? endDateTime = _Undefined,
    Object? rate = _Undefined,
    Object? amount = _Undefined,
    Object? approvalStatus = _Undefined,
    Object? paymentStatus = _Undefined,
    Object? transactionID = _Undefined,
    Object? vbookingID = _Undefined,
    int? venueId,
    Object? venue = _Undefined,
    Object? resources = _Undefined,
  }) {
    return VenueBooking(
      id: id is int? ? id : this.id,
      createdDateTime:
          createdDateTime is DateTime? ? createdDateTime : this.createdDateTime,
      requestedById: requestedById ?? this.requestedById,
      requestedBy: requestedBy is _i2.Contact?
          ? requestedBy
          : this.requestedBy?.copyWith(),
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
      vbookingID: vbookingID is int? ? vbookingID : this.vbookingID,
      venueId: venueId ?? this.venueId,
      venue: venue is _i2.Venue? ? venue : this.venue?.copyWith(),
      resources: resources is List<_i2.ResourceBooking?>?
          ? resources
          : this.resources?.clone(),
    );
  }
}

class VenueBookingTable extends _i1.Table {
  VenueBookingTable({super.tableRelation})
      : super(tableName: 'venue_bookings') {
    createdDateTime = _i1.ColumnDateTime(
      'createdDateTime',
      this,
    );
    requestedById = _i1.ColumnInt(
      'requestedById',
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
    vbookingID = _i1.ColumnInt(
      'vbookingID',
      this,
    );
    venueId = _i1.ColumnInt(
      'venueId',
      this,
    );
    resources = _i1.ColumnSerializable(
      'resources',
      this,
    );
  }

  late final _i1.ColumnDateTime createdDateTime;

  late final _i1.ColumnInt requestedById;

  _i2.ContactTable? _requestedBy;

  late final _i1.ColumnDuration duration;

  late final _i1.ColumnDateTime startDateTime;

  late final _i1.ColumnDateTime endDateTime;

  late final _i1.ColumnInt rate;

  late final _i1.ColumnInt amount;

  late final _i1.ColumnBool approvalStatus;

  late final _i1.ColumnBool paymentStatus;

  late final _i1.ColumnString transactionID;

  late final _i1.ColumnInt vbookingID;

  late final _i1.ColumnInt venueId;

  _i2.VenueTable? _venue;

  late final _i1.ColumnSerializable resources;

  _i2.ContactTable get requestedBy {
    if (_requestedBy != null) return _requestedBy!;
    _requestedBy = _i1.createRelationTable(
      relationFieldName: 'requestedBy',
      field: VenueBooking.t.requestedById,
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
      field: VenueBooking.t.venueId,
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
        duration,
        startDateTime,
        endDateTime,
        rate,
        amount,
        approvalStatus,
        paymentStatus,
        transactionID,
        vbookingID,
        venueId,
        resources,
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

@Deprecated('Use VenueBookingTable.t instead.')
VenueBookingTable tVenueBooking = VenueBookingTable();

class VenueBookingInclude extends _i1.IncludeObject {
  VenueBookingInclude._({
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
  _i1.Table get table => VenueBooking.t;
}

class VenueBookingIncludeList extends _i1.IncludeList {
  VenueBookingIncludeList._({
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(VenueBooking.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => VenueBooking.t;
}

class VenueBookingRepository {
  const VenueBookingRepository._();

  final attachRow = const VenueBookingAttachRowRepository._();

  Future<List<VenueBooking>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueBookingTable>? orderByList,
    _i1.Transaction? transaction,
    VenueBookingInclude? include,
  }) async {
    return session.dbNext.find<VenueBooking>(
      where: where?.call(VenueBooking.t),
      orderBy: orderBy?.call(VenueBooking.t),
      orderByList: orderByList?.call(VenueBooking.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<VenueBooking?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? offset,
    _i1.OrderByBuilder<VenueBookingTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueBookingTable>? orderByList,
    _i1.Transaction? transaction,
    VenueBookingInclude? include,
  }) async {
    return session.dbNext.findFirstRow<VenueBooking>(
      where: where?.call(VenueBooking.t),
      orderBy: orderBy?.call(VenueBooking.t),
      orderByList: orderByList?.call(VenueBooking.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<VenueBooking?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    VenueBookingInclude? include,
  }) async {
    return session.dbNext.findById<VenueBooking>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<VenueBooking>> insert(
    _i1.Session session,
    List<VenueBooking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<VenueBooking>(
      rows,
      transaction: transaction,
    );
  }

  Future<VenueBooking> insertRow(
    _i1.Session session,
    VenueBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<VenueBooking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<VenueBooking>> update(
    _i1.Session session,
    List<VenueBooking> rows, {
    _i1.ColumnSelections<VenueBookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<VenueBooking>(
      rows,
      columns: columns?.call(VenueBooking.t),
      transaction: transaction,
    );
  }

  Future<VenueBooking> updateRow(
    _i1.Session session,
    VenueBooking row, {
    _i1.ColumnSelections<VenueBookingTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<VenueBooking>(
      row,
      columns: columns?.call(VenueBooking.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<VenueBooking> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<VenueBooking>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    VenueBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<VenueBooking>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueBookingTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<VenueBooking>(
      where: where(VenueBooking.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueBookingTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<VenueBooking>(
      where: where?.call(VenueBooking.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class VenueBookingAttachRowRepository {
  const VenueBookingAttachRowRepository._();

  Future<void> requestedBy(
    _i1.Session session,
    VenueBooking venueBooking,
    _i2.Contact requestedBy,
  ) async {
    if (venueBooking.id == null) {
      throw ArgumentError.notNull('venueBooking.id');
    }
    if (requestedBy.id == null) {
      throw ArgumentError.notNull('requestedBy.id');
    }

    var $venueBooking = venueBooking.copyWith(requestedById: requestedBy.id);
    await session.dbNext.updateRow<VenueBooking>(
      $venueBooking,
      columns: [VenueBooking.t.requestedById],
    );
  }

  Future<void> venue(
    _i1.Session session,
    VenueBooking venueBooking,
    _i2.Venue venue,
  ) async {
    if (venueBooking.id == null) {
      throw ArgumentError.notNull('venueBooking.id');
    }
    if (venue.id == null) {
      throw ArgumentError.notNull('venue.id');
    }

    var $venueBooking = venueBooking.copyWith(venueId: venue.id);
    await session.dbNext.updateRow<VenueBooking>(
      $venueBooking,
      columns: [VenueBooking.t.venueId],
    );
  }
}
