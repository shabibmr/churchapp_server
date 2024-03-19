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

abstract class Comment extends _i1.TableRow {
  Comment._({
    int? id,
    required this.sent,
    this.delivered,
    this.received,
    this.read,
    this.text,
    this.file,
    this.sentBy,
  }) : super(id);

  factory Comment({
    int? id,
    required DateTime sent,
    DateTime? delivered,
    DateTime? received,
    DateTime? read,
    String? text,
    _i2.FileStore? file,
    _i2.Contact? sentBy,
  }) = _CommentImpl;

  factory Comment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Comment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sent:
          serializationManager.deserialize<DateTime>(jsonSerialization['sent']),
      delivered: serializationManager
          .deserialize<DateTime?>(jsonSerialization['delivered']),
      received: serializationManager
          .deserialize<DateTime?>(jsonSerialization['received']),
      read: serializationManager
          .deserialize<DateTime?>(jsonSerialization['read']),
      text:
          serializationManager.deserialize<String?>(jsonSerialization['text']),
      file: serializationManager
          .deserialize<_i2.FileStore?>(jsonSerialization['file']),
      sentBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['sentBy']),
    );
  }

  static final t = CommentTable();

  static const db = CommentRepository._();

  DateTime sent;

  DateTime? delivered;

  DateTime? received;

  DateTime? read;

  String? text;

  _i2.FileStore? file;

  _i2.Contact? sentBy;

  @override
  _i1.Table get table => t;

  Comment copyWith({
    int? id,
    DateTime? sent,
    DateTime? delivered,
    DateTime? received,
    DateTime? read,
    String? text,
    _i2.FileStore? file,
    _i2.Contact? sentBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'sent': sent.toJson(),
      if (delivered != null) 'delivered': delivered?.toJson(),
      if (received != null) 'received': received?.toJson(),
      if (read != null) 'read': read?.toJson(),
      if (text != null) 'text': text,
      if (file != null) 'file': file?.toJson(),
      if (sentBy != null) 'sentBy': sentBy?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sent': sent,
      'delivered': delivered,
      'received': received,
      'read': read,
      'text': text,
      'file': file,
      'sentBy': sentBy,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'sent': sent.toJson(),
      if (delivered != null) 'delivered': delivered?.toJson(),
      if (received != null) 'received': received?.toJson(),
      if (read != null) 'read': read?.toJson(),
      if (text != null) 'text': text,
      if (file != null) 'file': file?.allToJson(),
      if (sentBy != null) 'sentBy': sentBy?.allToJson(),
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
      case 'sent':
        sent = value;
        return;
      case 'delivered':
        delivered = value;
        return;
      case 'received':
        received = value;
        return;
      case 'read':
        read = value;
        return;
      case 'text':
        text = value;
        return;
      case 'file':
        file = value;
        return;
      case 'sentBy':
        sentBy = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Comment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Comment>(
      where: where != null ? where(Comment.t) : null,
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
  static Future<Comment?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Comment>(
      where: where != null ? where(Comment.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Comment?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Comment>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Comment>(
      where: where(Comment.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Comment row, {
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
    Comment row, {
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
    Comment row, {
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
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Comment>(
      where: where != null ? where(Comment.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static CommentInclude include() {
    return CommentInclude._();
  }

  static CommentIncludeList includeList({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    CommentInclude? include,
  }) {
    return CommentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Comment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Comment.t),
      include: include,
    );
  }
}

class _Undefined {}

class _CommentImpl extends Comment {
  _CommentImpl({
    int? id,
    required DateTime sent,
    DateTime? delivered,
    DateTime? received,
    DateTime? read,
    String? text,
    _i2.FileStore? file,
    _i2.Contact? sentBy,
  }) : super._(
          id: id,
          sent: sent,
          delivered: delivered,
          received: received,
          read: read,
          text: text,
          file: file,
          sentBy: sentBy,
        );

  @override
  Comment copyWith({
    Object? id = _Undefined,
    DateTime? sent,
    Object? delivered = _Undefined,
    Object? received = _Undefined,
    Object? read = _Undefined,
    Object? text = _Undefined,
    Object? file = _Undefined,
    Object? sentBy = _Undefined,
  }) {
    return Comment(
      id: id is int? ? id : this.id,
      sent: sent ?? this.sent,
      delivered: delivered is DateTime? ? delivered : this.delivered,
      received: received is DateTime? ? received : this.received,
      read: read is DateTime? ? read : this.read,
      text: text is String? ? text : this.text,
      file: file is _i2.FileStore? ? file : this.file?.copyWith(),
      sentBy: sentBy is _i2.Contact? ? sentBy : this.sentBy?.copyWith(),
    );
  }
}

class CommentTable extends _i1.Table {
  CommentTable({super.tableRelation}) : super(tableName: 'comments') {
    sent = _i1.ColumnDateTime(
      'sent',
      this,
    );
    delivered = _i1.ColumnDateTime(
      'delivered',
      this,
    );
    received = _i1.ColumnDateTime(
      'received',
      this,
    );
    read = _i1.ColumnDateTime(
      'read',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
    file = _i1.ColumnSerializable(
      'file',
      this,
    );
    sentBy = _i1.ColumnSerializable(
      'sentBy',
      this,
    );
  }

  late final _i1.ColumnDateTime sent;

  late final _i1.ColumnDateTime delivered;

  late final _i1.ColumnDateTime received;

  late final _i1.ColumnDateTime read;

  late final _i1.ColumnString text;

  late final _i1.ColumnSerializable file;

  late final _i1.ColumnSerializable sentBy;

  @override
  List<_i1.Column> get columns => [
        id,
        sent,
        delivered,
        received,
        read,
        text,
        file,
        sentBy,
      ];
}

@Deprecated('Use CommentTable.t instead.')
CommentTable tComment = CommentTable();

class CommentInclude extends _i1.IncludeObject {
  CommentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Comment.t;
}

class CommentIncludeList extends _i1.IncludeList {
  CommentIncludeList._({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Comment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Comment.t;
}

class CommentRepository {
  const CommentRepository._();

  Future<List<Comment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Comment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Comment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Comment>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Comment>> insert(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<Comment> insertRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Comment>> update(
    _i1.Session session,
    List<Comment> rows, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Comment>(
      rows,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<Comment> updateRow(
    _i1.Session session,
    Comment row, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Comment>(
      row,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Comment>(
      where: where(Comment.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Comment>(
      where: where?.call(Comment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
