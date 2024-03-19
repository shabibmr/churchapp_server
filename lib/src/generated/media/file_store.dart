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

abstract class FileStore extends _i1.TableRow {
  FileStore._({
    int? id,
    this.title,
    this.subTitle,
    this.addedBy,
    this.fileName,
    this.fileType,
    this.file,
    this.published,
    this.duration,
    this.description,
    this.fileSize,
  }) : super(id);

  factory FileStore({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    String? fileName,
    String? fileType,
    _i3.ByteData? file,
    bool? published,
    Duration? duration,
    String? description,
    double? fileSize,
  }) = _FileStoreImpl;

  factory FileStore.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FileStore(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String?>(jsonSerialization['title']),
      subTitle: serializationManager
          .deserialize<String?>(jsonSerialization['subTitle']),
      addedBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['addedBy']),
      fileName: serializationManager
          .deserialize<String?>(jsonSerialization['fileName']),
      fileType: serializationManager
          .deserialize<String?>(jsonSerialization['fileType']),
      file: serializationManager
          .deserialize<_i3.ByteData?>(jsonSerialization['file']),
      published: serializationManager
          .deserialize<bool?>(jsonSerialization['published']),
      duration: serializationManager
          .deserialize<Duration?>(jsonSerialization['duration']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      fileSize: serializationManager
          .deserialize<double?>(jsonSerialization['fileSize']),
    );
  }

  static final t = FileStoreTable();

  static const db = FileStoreRepository._();

  String? title;

  String? subTitle;

  _i2.Contact? addedBy;

  String? fileName;

  String? fileType;

  _i3.ByteData? file;

  bool? published;

  Duration? duration;

  String? description;

  double? fileSize;

  int? _servicesFilesServicesId;

  @override
  _i1.Table get table => t;

  FileStore copyWith({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    String? fileName,
    String? fileType,
    _i3.ByteData? file,
    bool? published,
    Duration? duration,
    String? description,
    double? fileSize,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subTitle != null) 'subTitle': subTitle,
      if (addedBy != null) 'addedBy': addedBy?.toJson(),
      if (fileName != null) 'fileName': fileName,
      if (fileType != null) 'fileType': fileType,
      if (file != null) 'file': file?.toJson(),
      if (published != null) 'published': published,
      if (duration != null) 'duration': duration?.toJson(),
      if (description != null) 'description': description,
      if (fileSize != null) 'fileSize': fileSize,
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
      'fileName': fileName,
      'fileType': fileType,
      'file': file,
      'published': published,
      'duration': duration,
      'description': description,
      'fileSize': fileSize,
      '_servicesFilesServicesId': _servicesFilesServicesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subTitle != null) 'subTitle': subTitle,
      if (addedBy != null) 'addedBy': addedBy?.allToJson(),
      if (fileName != null) 'fileName': fileName,
      if (fileType != null) 'fileType': fileType,
      if (file != null) 'file': file?.toJson(),
      if (published != null) 'published': published,
      if (duration != null) 'duration': duration?.toJson(),
      if (description != null) 'description': description,
      if (fileSize != null) 'fileSize': fileSize,
      if (_servicesFilesServicesId != null)
        '_servicesFilesServicesId': _servicesFilesServicesId,
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
      case 'fileName':
        fileName = value;
        return;
      case 'fileType':
        fileType = value;
        return;
      case 'file':
        file = value;
        return;
      case 'published':
        published = value;
        return;
      case 'duration':
        duration = value;
        return;
      case 'description':
        description = value;
        return;
      case 'fileSize':
        fileSize = value;
        return;
      case '_servicesFilesServicesId':
        _servicesFilesServicesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FileStore>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FileStore>(
      where: where != null ? where(FileStore.t) : null,
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
  static Future<FileStore?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<FileStore>(
      where: where != null ? where(FileStore.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FileStore?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<FileStore>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FileStoreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FileStore>(
      where: where(FileStore.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FileStore row, {
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
    FileStore row, {
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
    FileStore row, {
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
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FileStore>(
      where: where != null ? where(FileStore.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FileStoreInclude include() {
    return FileStoreInclude._();
  }

  static FileStoreIncludeList includeList({
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FileStoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FileStoreTable>? orderByList,
    FileStoreInclude? include,
  }) {
    return FileStoreIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FileStore.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FileStore.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FileStoreImpl extends FileStore {
  _FileStoreImpl({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    String? fileName,
    String? fileType,
    _i3.ByteData? file,
    bool? published,
    Duration? duration,
    String? description,
    double? fileSize,
  }) : super._(
          id: id,
          title: title,
          subTitle: subTitle,
          addedBy: addedBy,
          fileName: fileName,
          fileType: fileType,
          file: file,
          published: published,
          duration: duration,
          description: description,
          fileSize: fileSize,
        );

  @override
  FileStore copyWith({
    Object? id = _Undefined,
    Object? title = _Undefined,
    Object? subTitle = _Undefined,
    Object? addedBy = _Undefined,
    Object? fileName = _Undefined,
    Object? fileType = _Undefined,
    Object? file = _Undefined,
    Object? published = _Undefined,
    Object? duration = _Undefined,
    Object? description = _Undefined,
    Object? fileSize = _Undefined,
  }) {
    return FileStore(
      id: id is int? ? id : this.id,
      title: title is String? ? title : this.title,
      subTitle: subTitle is String? ? subTitle : this.subTitle,
      addedBy: addedBy is _i2.Contact? ? addedBy : this.addedBy?.copyWith(),
      fileName: fileName is String? ? fileName : this.fileName,
      fileType: fileType is String? ? fileType : this.fileType,
      file: file is _i3.ByteData? ? file : this.file?.clone(),
      published: published is bool? ? published : this.published,
      duration: duration is Duration? ? duration : this.duration,
      description: description is String? ? description : this.description,
      fileSize: fileSize is double? ? fileSize : this.fileSize,
    );
  }
}

class FileStoreImplicit extends _FileStoreImpl {
  FileStoreImplicit._({
    int? id,
    String? title,
    String? subTitle,
    _i2.Contact? addedBy,
    String? fileName,
    String? fileType,
    _i3.ByteData? file,
    bool? published,
    Duration? duration,
    String? description,
    double? fileSize,
    this.$_servicesFilesServicesId,
  }) : super(
          id: id,
          title: title,
          subTitle: subTitle,
          addedBy: addedBy,
          fileName: fileName,
          fileType: fileType,
          file: file,
          published: published,
          duration: duration,
          description: description,
          fileSize: fileSize,
        );

  factory FileStoreImplicit(
    FileStore fileStore, {
    int? $_servicesFilesServicesId,
  }) {
    return FileStoreImplicit._(
      id: fileStore.id,
      title: fileStore.title,
      subTitle: fileStore.subTitle,
      addedBy: fileStore.addedBy,
      fileName: fileStore.fileName,
      fileType: fileStore.fileType,
      file: fileStore.file,
      published: fileStore.published,
      duration: fileStore.duration,
      description: fileStore.description,
      fileSize: fileStore.fileSize,
      $_servicesFilesServicesId: $_servicesFilesServicesId,
    );
  }

  int? $_servicesFilesServicesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_servicesFilesServicesId': $_servicesFilesServicesId});
    return jsonMap;
  }
}

class FileStoreTable extends _i1.Table {
  FileStoreTable({super.tableRelation}) : super(tableName: 'file_store') {
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
    fileName = _i1.ColumnString(
      'fileName',
      this,
    );
    fileType = _i1.ColumnString(
      'fileType',
      this,
    );
    file = _i1.ColumnByteData(
      'file',
      this,
    );
    published = _i1.ColumnBool(
      'published',
      this,
    );
    duration = _i1.ColumnDuration(
      'duration',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    fileSize = _i1.ColumnDouble(
      'fileSize',
      this,
    );
    $_servicesFilesServicesId = _i1.ColumnInt(
      '_servicesFilesServicesId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString subTitle;

  late final _i1.ColumnSerializable addedBy;

  late final _i1.ColumnString fileName;

  late final _i1.ColumnString fileType;

  late final _i1.ColumnByteData file;

  late final _i1.ColumnBool published;

  late final _i1.ColumnDuration duration;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble fileSize;

  late final _i1.ColumnInt $_servicesFilesServicesId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        subTitle,
        addedBy,
        fileName,
        fileType,
        file,
        published,
        duration,
        description,
        fileSize,
        $_servicesFilesServicesId,
      ];
}

@Deprecated('Use FileStoreTable.t instead.')
FileStoreTable tFileStore = FileStoreTable();

class FileStoreInclude extends _i1.IncludeObject {
  FileStoreInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => FileStore.t;
}

class FileStoreIncludeList extends _i1.IncludeList {
  FileStoreIncludeList._({
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FileStore.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FileStore.t;
}

class FileStoreRepository {
  const FileStoreRepository._();

  Future<List<FileStore>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FileStoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FileStoreTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<FileStore>(
      where: where?.call(FileStore.t),
      orderBy: orderBy?.call(FileStore.t),
      orderByList: orderByList?.call(FileStore.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FileStore?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? offset,
    _i1.OrderByBuilder<FileStoreTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FileStoreTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<FileStore>(
      where: where?.call(FileStore.t),
      orderBy: orderBy?.call(FileStore.t),
      orderByList: orderByList?.call(FileStore.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FileStore?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<FileStore>(
      id,
      transaction: transaction,
    );
  }

  Future<List<FileStore>> insert(
    _i1.Session session,
    List<FileStore> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FileStore>(
      rows,
      transaction: transaction,
    );
  }

  Future<FileStore> insertRow(
    _i1.Session session,
    FileStore row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FileStore>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FileStore>> update(
    _i1.Session session,
    List<FileStore> rows, {
    _i1.ColumnSelections<FileStoreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FileStore>(
      rows,
      columns: columns?.call(FileStore.t),
      transaction: transaction,
    );
  }

  Future<FileStore> updateRow(
    _i1.Session session,
    FileStore row, {
    _i1.ColumnSelections<FileStoreTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FileStore>(
      row,
      columns: columns?.call(FileStore.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FileStore> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FileStore>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FileStore row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FileStore>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FileStoreTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FileStore>(
      where: where(FileStore.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FileStoreTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FileStore>(
      where: where?.call(FileStore.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
