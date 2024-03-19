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

abstract class Sermon extends _i1.TableRow {
  Sermon._({
    int? id,
    this.title,
    this.subTitle,
    this.addedBy,
    this.published,
    this.authors,
    this.file,
  }) : super(id);

  factory Sermon({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    bool? published,
    List<_i2.Contact>? authors,
    _i2.FileStore? file,
  }) = _SermonImpl;

  factory Sermon.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sermon(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      subTitle: serializationManager
          .deserialize<String?>(jsonSerialization['subTitle']),
      addedBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['addedBy']),
      published: serializationManager
          .deserialize<bool?>(jsonSerialization['published']),
      authors: serializationManager
          .deserialize<List<_i2.Contact>?>(jsonSerialization['authors']),
      file: serializationManager
          .deserialize<_i2.FileStore?>(jsonSerialization['file']),
    );
  }

  static final t = SermonTable();

  static const db = SermonRepository._();

  String? title;

  String? subTitle;

  _i2.Contact? addedBy;

  bool? published;

  List<_i2.Contact>? authors;

  _i2.FileStore? file;

  @override
  _i1.Table get table => t;

  Sermon copyWith({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    bool? published,
    List<_i2.Contact>? authors,
    _i2.FileStore? file,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subTitle != null) 'subTitle': subTitle,
      if (addedBy != null) 'addedBy': addedBy?.toJson(),
      if (published != null) 'published': published,
      if (authors != null)
        'authors': authors?.toJson(valueToJson: (v) => v.toJson()),
      if (file != null) 'file': file?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'subTitle': subTitle,
      'addedBy': addedBy,
      'published': published,
      'file': file,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subTitle != null) 'subTitle': subTitle,
      if (addedBy != null) 'addedBy': addedBy?.allToJson(),
      if (published != null) 'published': published,
      if (authors != null)
        'authors': authors?.toJson(valueToJson: (v) => v.allToJson()),
      if (file != null) 'file': file?.allToJson(),
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
      case 'subTitle':
        subTitle = value;
        return;
      case 'addedBy':
        addedBy = value;
        return;
      case 'published':
        published = value;
        return;
      case 'file':
        file = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Sermon>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SermonInclude? include,
  }) async {
    return session.db.find<Sermon>(
      where: where != null ? where(Sermon.t) : null,
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
  static Future<Sermon?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SermonInclude? include,
  }) async {
    return session.db.findSingleRow<Sermon>(
      where: where != null ? where(Sermon.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Sermon?> findById(
    _i1.Session session,
    int id, {
    SermonInclude? include,
  }) async {
    return session.db.findById<Sermon>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SermonTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Sermon>(
      where: where(Sermon.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Sermon row, {
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
    Sermon row, {
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
    Sermon row, {
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
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Sermon>(
      where: where != null ? where(Sermon.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SermonInclude include({_i2.ContactIncludeList? authors}) {
    return SermonInclude._(authors: authors);
  }

  static SermonIncludeList includeList({
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SermonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTable>? orderByList,
    SermonInclude? include,
  }) {
    return SermonIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Sermon.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Sermon.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SermonImpl extends Sermon {
  _SermonImpl({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    bool? published,
    List<_i2.Contact>? authors,
    _i2.FileStore? file,
  }) : super._(
          id: id,
          title: title,
          subTitle: subTitle,
          addedBy: addedBy,
          published: published,
          authors: authors,
          file: file,
        );

  @override
  Sermon copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? subTitle = _Undefined,
    Object? addedBy = _Undefined,
    Object? published = _Undefined,
    Object? authors = _Undefined,
    Object? file = _Undefined,
  }) {
    return Sermon(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      subTitle: subTitle is String? ? subTitle : this.subTitle,
      addedBy: addedBy is _i2.Contact? ? addedBy : this.addedBy?.copyWith(),
      published: published is bool? ? published : this.published,
      authors: authors is List<_i2.Contact>? ? authors : this.authors?.clone(),
      file: file is _i2.FileStore? ? file : this.file?.copyWith(),
    );
  }
}

class SermonTable extends _i1.Table {
  SermonTable({super.tableRelation}) : super(tableName: 'sermons') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    subTitle = _i1.ColumnString(
      'subTitle',
      this,
    );
    addedBy = _i1.ColumnSerializable(
      'addedBy',
      this,
    );
    published = _i1.ColumnBool(
      'published',
      this,
    );
    file = _i1.ColumnSerializable(
      'file',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString subTitle;

  late final _i1.ColumnSerializable addedBy;

  late final _i1.ColumnBool published;

  _i2.ContactTable? ___authors;

  _i1.ManyRelation<_i2.ContactTable>? _authors;

  late final _i1.ColumnSerializable file;

  _i2.ContactTable get __authors {
    if (___authors != null) return ___authors!;
    ___authors = _i1.createRelationTable(
      relationFieldName: '__authors',
      field: Sermon.t.id,
      foreignField: _i2.Contact.t.$_sermonsAuthorsSermonsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return ___authors!;
  }

  _i1.ManyRelation<_i2.ContactTable> get authors {
    if (_authors != null) return _authors!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'authors',
      field: Sermon.t.id,
      foreignField: _i2.Contact.t.$_sermonsAuthorsSermonsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    _authors = _i1.ManyRelation<_i2.ContactTable>(
      tableWithRelations: relationTable,
      table: _i2.ContactTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _authors!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        subTitle,
        addedBy,
        published,
        file,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'authors') {
      return __authors;
    }
    return null;
  }
}

@Deprecated('Use SermonTable.t instead.')
SermonTable tSermon = SermonTable();

class SermonInclude extends _i1.IncludeObject {
  SermonInclude._({_i2.ContactIncludeList? authors}) {
    _authors = authors;
  }

  _i2.ContactIncludeList? _authors;

  @override
  Map<String, _i1.Include?> get includes => {'authors': _authors};

  @override
  _i1.Table get table => Sermon.t;
}

class SermonIncludeList extends _i1.IncludeList {
  SermonIncludeList._({
    _i1.WhereExpressionBuilder<SermonTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Sermon.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Sermon.t;
}

class SermonRepository {
  const SermonRepository._();

  final attach = const SermonAttachRepository._();

  final attachRow = const SermonAttachRowRepository._();

  final detach = const SermonDetachRepository._();

  final detachRow = const SermonDetachRowRepository._();

  Future<List<Sermon>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SermonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTable>? orderByList,
    _i1.Transaction? transaction,
    SermonInclude? include,
  }) async {
    return session.dbNext.find<Sermon>(
      where: where?.call(Sermon.t),
      orderBy: orderBy?.call(Sermon.t),
      orderByList: orderByList?.call(Sermon.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Sermon?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? offset,
    _i1.OrderByBuilder<SermonTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SermonTable>? orderByList,
    _i1.Transaction? transaction,
    SermonInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Sermon>(
      where: where?.call(Sermon.t),
      orderBy: orderBy?.call(Sermon.t),
      orderByList: orderByList?.call(Sermon.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Sermon?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SermonInclude? include,
  }) async {
    return session.dbNext.findById<Sermon>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Sermon>> insert(
    _i1.Session session,
    List<Sermon> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Sermon>(
      rows,
      transaction: transaction,
    );
  }

  Future<Sermon> insertRow(
    _i1.Session session,
    Sermon row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Sermon>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Sermon>> update(
    _i1.Session session,
    List<Sermon> rows, {
    _i1.ColumnSelections<SermonTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Sermon>(
      rows,
      columns: columns?.call(Sermon.t),
      transaction: transaction,
    );
  }

  Future<Sermon> updateRow(
    _i1.Session session,
    Sermon row, {
    _i1.ColumnSelections<SermonTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Sermon>(
      row,
      columns: columns?.call(Sermon.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Sermon> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Sermon>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Sermon row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Sermon>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SermonTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Sermon>(
      where: where(Sermon.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SermonTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Sermon>(
      where: where?.call(Sermon.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SermonAttachRepository {
  const SermonAttachRepository._();

  Future<void> authors(
    _i1.Session session,
    Sermon sermon,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }
    if (sermon.id == null) {
      throw ArgumentError.notNull('sermon.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_sermonsAuthorsSermonsId: sermon.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_sermonsAuthorsSermonsId],
    );
  }
}

class SermonAttachRowRepository {
  const SermonAttachRowRepository._();

  Future<void> authors(
    _i1.Session session,
    Sermon sermon,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }
    if (sermon.id == null) {
      throw ArgumentError.notNull('sermon.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_sermonsAuthorsSermonsId: sermon.id,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_sermonsAuthorsSermonsId],
    );
  }
}

class SermonDetachRepository {
  const SermonDetachRepository._();

  Future<void> authors(
    _i1.Session session,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_sermonsAuthorsSermonsId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_sermonsAuthorsSermonsId],
    );
  }
}

class SermonDetachRowRepository {
  const SermonDetachRowRepository._();

  Future<void> authors(
    _i1.Session session,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_sermonsAuthorsSermonsId: null,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_sermonsAuthorsSermonsId],
    );
  }
}
