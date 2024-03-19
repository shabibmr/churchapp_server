/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Skill extends _i1.TableRow {
  Skill._({
    int? id,
    this.description,
    this.color,
    this.createdAt,
  }) : super(id);

  factory Skill({
    int? id,
    String? description,
    String? color,
    DateTime? createdAt,
  }) = _SkillImpl;

  factory Skill.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Skill(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      description: serializationManager
          .deserialize<String?>(jsonSerialization['description']),
      color:
          serializationManager.deserialize<String?>(jsonSerialization['color']),
      createdAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdAt']),
    );
  }

  static final t = SkillTable();

  static const db = SkillRepository._();

  String? description;

  String? color;

  DateTime? createdAt;

  @override
  _i1.Table get table => t;

  Skill copyWith({
    int? id,
    String? description,
    String? color,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'description': description,
      'color': color,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
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
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Skill>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Skill>(
      where: where != null ? where(Skill.t) : null,
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
  static Future<Skill?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Skill>(
      where: where != null ? where(Skill.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Skill?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Skill>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SkillTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Skill>(
      where: where(Skill.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Skill row, {
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
    Skill row, {
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
    Skill row, {
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
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Skill>(
      where: where != null ? where(Skill.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SkillInclude include() {
    return SkillInclude._();
  }

  static SkillIncludeList includeList({
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SkillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkillTable>? orderByList,
    SkillInclude? include,
  }) {
    return SkillIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Skill.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Skill.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SkillImpl extends Skill {
  _SkillImpl({
    int? id,
    String? description,
    String? color,
    DateTime? createdAt,
  }) : super._(
          id: id,
          description: description,
          color: color,
          createdAt: createdAt,
        );

  @override
  Skill copyWith({
    Object? id = _Undefined,
    Object? description = _Undefined,
    Object? color = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return Skill(
      id: id is int? ? id : this.id,
      description: description is String? ? description : this.description,
      color: color is String? ? color : this.color,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class SkillTable extends _i1.Table {
  SkillTable({super.tableRelation}) : super(tableName: 'skill') {
    description = _i1.ColumnString(
      'description',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString description;

  late final _i1.ColumnString color;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        description,
        color,
        createdAt,
      ];
}

@Deprecated('Use SkillTable.t instead.')
SkillTable tSkill = SkillTable();

class SkillInclude extends _i1.IncludeObject {
  SkillInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Skill.t;
}

class SkillIncludeList extends _i1.IncludeList {
  SkillIncludeList._({
    _i1.WhereExpressionBuilder<SkillTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Skill.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Skill.t;
}

class SkillRepository {
  const SkillRepository._();

  Future<List<Skill>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SkillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkillTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Skill>(
      where: where?.call(Skill.t),
      orderBy: orderBy?.call(Skill.t),
      orderByList: orderByList?.call(Skill.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Skill?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? offset,
    _i1.OrderByBuilder<SkillTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkillTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Skill>(
      where: where?.call(Skill.t),
      orderBy: orderBy?.call(Skill.t),
      orderByList: orderByList?.call(Skill.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Skill?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Skill>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Skill>> insert(
    _i1.Session session,
    List<Skill> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Skill>(
      rows,
      transaction: transaction,
    );
  }

  Future<Skill> insertRow(
    _i1.Session session,
    Skill row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Skill>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Skill>> update(
    _i1.Session session,
    List<Skill> rows, {
    _i1.ColumnSelections<SkillTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Skill>(
      rows,
      columns: columns?.call(Skill.t),
      transaction: transaction,
    );
  }

  Future<Skill> updateRow(
    _i1.Session session,
    Skill row, {
    _i1.ColumnSelections<SkillTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Skill>(
      row,
      columns: columns?.call(Skill.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Skill> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Skill>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Skill row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Skill>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SkillTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Skill>(
      where: where(Skill.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkillTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Skill>(
      where: where?.call(Skill.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
