/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ContactType extends _i1.TableRow {
  ContactType._({
    int? id,
    this.description,
    this.color,
  }) : super(id);

  factory ContactType({
    int? id,
    String? description,
    String? color,
  }) = _ContactTypeImpl;

  factory ContactType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ContactType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
    );
  }

  static final t = ContactTypeTable();

  static const db = ContactTypeRepository._();

  String? description;

  String? color;

  @override
  _i1.Table get table => t;

  ContactType copyWith({
    int? id,
    String? description,
    String? color,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'description': description,
      'color': color,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
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
      case 'description':
        description = value;
        return;
      case 'color':
        color = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ContactType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ContactType>(
      where: where != null ? where(ContactType.t) : null,
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
  static Future<ContactType?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ContactType>(
      where: where != null ? where(ContactType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ContactType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ContactType>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ContactType>(
      where: where(ContactType.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ContactType row, {
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
    ContactType row, {
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
    ContactType row, {
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
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ContactType>(
      where: where != null ? where(ContactType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ContactTypeInclude include() {
    return ContactTypeInclude._();
  }

  static ContactTypeIncludeList includeList({
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTypeTable>? orderByList,
    ContactTypeInclude? include,
  }) {
    return ContactTypeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ContactType.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ContactType.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ContactTypeImpl extends ContactType {
  _ContactTypeImpl({
    int? id,
    String? description,
    String? color,
  }) : super._(
          id: id,
          description: description,
          color: color,
        );

  @override
  ContactType copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
  }) {
    return ContactType(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
    );
  }
}

class ContactTypeTable extends _i1.Table {
  ContactTypeTable({super.tableRelation}) : super(tableName: 'contact_type') {
    description = _i1.ColumnString(
      'description',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
  }

  late final _i1.ColumnString description;

  late final _i1.ColumnString color;

  @override
  List<_i1.Column> get columns => [
        id,
        description,
        color,
      ];
}

@Deprecated('Use ContactTypeTable.t instead.')
ContactTypeTable tContactType = ContactTypeTable();

class ContactTypeInclude extends _i1.IncludeObject {
  ContactTypeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ContactType.t;
}

class ContactTypeIncludeList extends _i1.IncludeList {
  ContactTypeIncludeList._({
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ContactType.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ContactType.t;
}

class ContactTypeRepository {
  const ContactTypeRepository._();

  Future<List<ContactType>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ContactType>(
      where: where?.call(ContactType.t),
      orderBy: orderBy?.call(ContactType.t),
      orderByList: orderByList?.call(ContactType.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ContactType?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? offset,
    _i1.OrderByBuilder<ContactTypeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTypeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ContactType>(
      where: where?.call(ContactType.t),
      orderBy: orderBy?.call(ContactType.t),
      orderByList: orderByList?.call(ContactType.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ContactType?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ContactType>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ContactType>> insert(
    _i1.Session session,
    List<ContactType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ContactType>(
      rows,
      transaction: transaction,
    );
  }

  Future<ContactType> insertRow(
    _i1.Session session,
    ContactType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ContactType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ContactType>> update(
    _i1.Session session,
    List<ContactType> rows, {
    _i1.ColumnSelections<ContactTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ContactType>(
      rows,
      columns: columns?.call(ContactType.t),
      transaction: transaction,
    );
  }

  Future<ContactType> updateRow(
    _i1.Session session,
    ContactType row, {
    _i1.ColumnSelections<ContactTypeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ContactType>(
      row,
      columns: columns?.call(ContactType.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ContactType> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ContactType>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ContactType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ContactType>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactTypeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ContactType>(
      where: where(ContactType.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTypeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ContactType>(
      where: where?.call(ContactType.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
