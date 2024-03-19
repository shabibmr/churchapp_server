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

abstract class ChatRoom extends _i1.TableRow {
  ChatRoom._({
    int? id,
    this.createdOn,
    this.members,
    this.lastMessage,
    this.lastSentBy,
    this.lastSentAt,
    this.createdBy,
  }) : super(id);

  factory ChatRoom({
    int? id,
    DateTime? createdOn,
    List<_i2.Contact>? members,
    String? lastMessage,
    _i2.Contact? lastSentBy,
    DateTime? lastSentAt,
    _i2.Contact? createdBy,
  }) = _ChatRoomImpl;

  factory ChatRoom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ChatRoom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      createdOn: serializationManager
          .deserialize<DateTime?>(jsonSerialization['createdOn']),
      members: serializationManager
          .deserialize<List<_i2.Contact>?>(jsonSerialization['members']),
      lastMessage: serializationManager
          .deserialize<String?>(jsonSerialization['lastMessage']),
      lastSentBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['lastSentBy']),
      lastSentAt: serializationManager
          .deserialize<DateTime?>(jsonSerialization['lastSentAt']),
      createdBy: serializationManager
          .deserialize<_i2.Contact?>(jsonSerialization['createdBy']),
    );
  }

  static final t = ChatRoomTable();

  static const db = ChatRoomRepository._();

  DateTime? createdOn;

  List<_i2.Contact>? members;

  String? lastMessage;

  _i2.Contact? lastSentBy;

  DateTime? lastSentAt;

  _i2.Contact? createdBy;

  int? _servicesDiscussionsServicesId;

  @override
  _i1.Table get table => t;

  ChatRoom copyWith({
    int? id,
    DateTime? createdOn,
    List<_i2.Contact>? members,
    String? lastMessage,
    _i2.Contact? lastSentBy,
    DateTime? lastSentAt,
    _i2.Contact? createdBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (createdOn != null) 'createdOn': createdOn?.toJson(),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
      if (lastMessage != null) 'lastMessage': lastMessage,
      if (lastSentBy != null) 'lastSentBy': lastSentBy?.toJson(),
      if (lastSentAt != null) 'lastSentAt': lastSentAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'createdOn': createdOn,
      'lastMessage': lastMessage,
      'lastSentBy': lastSentBy,
      'lastSentAt': lastSentAt,
      'createdBy': createdBy,
      '_servicesDiscussionsServicesId': _servicesDiscussionsServicesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (createdOn != null) 'createdOn': createdOn?.toJson(),
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.allToJson()),
      if (lastMessage != null) 'lastMessage': lastMessage,
      if (lastSentBy != null) 'lastSentBy': lastSentBy?.allToJson(),
      if (lastSentAt != null) 'lastSentAt': lastSentAt?.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.allToJson(),
      if (_servicesDiscussionsServicesId != null)
        '_servicesDiscussionsServicesId': _servicesDiscussionsServicesId,
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
      case 'createdOn':
        createdOn = value;
        return;
      case 'lastMessage':
        lastMessage = value;
        return;
      case 'lastSentBy':
        lastSentBy = value;
        return;
      case 'lastSentAt':
        lastSentAt = value;
        return;
      case 'createdBy':
        createdBy = value;
        return;
      case '_servicesDiscussionsServicesId':
        _servicesDiscussionsServicesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ChatRoom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ChatRoomInclude? include,
  }) async {
    return session.db.find<ChatRoom>(
      where: where != null ? where(ChatRoom.t) : null,
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
  static Future<ChatRoom?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ChatRoomInclude? include,
  }) async {
    return session.db.findSingleRow<ChatRoom>(
      where: where != null ? where(ChatRoom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ChatRoom?> findById(
    _i1.Session session,
    int id, {
    ChatRoomInclude? include,
  }) async {
    return session.db.findById<ChatRoom>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ChatRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ChatRoom>(
      where: where(ChatRoom.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ChatRoom row, {
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
    ChatRoom row, {
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
    ChatRoom row, {
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
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ChatRoom>(
      where: where != null ? where(ChatRoom.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ChatRoomInclude include({_i2.ContactIncludeList? members}) {
    return ChatRoomInclude._(members: members);
  }

  static ChatRoomIncludeList includeList({
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    ChatRoomInclude? include,
  }) {
    return ChatRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatRoom.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChatRoom.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ChatRoomImpl extends ChatRoom {
  _ChatRoomImpl({
    int? id,
    DateTime? createdOn,
    List<_i2.Contact>? members,
    String? lastMessage,
    _i2.Contact? lastSentBy,
    DateTime? lastSentAt,
    _i2.Contact? createdBy,
  }) : super._(
          id: id,
          createdOn: createdOn,
          members: members,
          lastMessage: lastMessage,
          lastSentBy: lastSentBy,
          lastSentAt: lastSentAt,
          createdBy: createdBy,
        );

  @override
  ChatRoom copyWith({
    Object? id = _Undefined,
    Object? createdOn = _Undefined,
    Object? members = _Undefined,
    Object? lastMessage = _Undefined,
    Object? lastSentBy = _Undefined,
    Object? lastSentAt = _Undefined,
    Object? createdBy = _Undefined,
  }) {
    return ChatRoom(
      id: id is int? ? id : this.id,
      createdOn: createdOn is DateTime? ? createdOn : this.createdOn,
      members: members is List<_i2.Contact>? ? members : this.members?.clone(),
      lastMessage: lastMessage is String? ? lastMessage : this.lastMessage,
      lastSentBy:
          lastSentBy is _i2.Contact? ? lastSentBy : this.lastSentBy?.copyWith(),
      lastSentAt: lastSentAt is DateTime? ? lastSentAt : this.lastSentAt,
      createdBy:
          createdBy is _i2.Contact? ? createdBy : this.createdBy?.copyWith(),
    );
  }
}

class ChatRoomImplicit extends _ChatRoomImpl {
  ChatRoomImplicit._({
    int? id,
    DateTime? createdOn,
    List<_i2.Contact>? members,
    String? lastMessage,
    _i2.Contact? lastSentBy,
    DateTime? lastSentAt,
    _i2.Contact? createdBy,
    this.$_servicesDiscussionsServicesId,
  }) : super(
          id: id,
          createdOn: createdOn,
          members: members,
          lastMessage: lastMessage,
          lastSentBy: lastSentBy,
          lastSentAt: lastSentAt,
          createdBy: createdBy,
        );

  factory ChatRoomImplicit(
    ChatRoom chatRoom, {
    int? $_servicesDiscussionsServicesId,
  }) {
    return ChatRoomImplicit._(
      id: chatRoom.id,
      createdOn: chatRoom.createdOn,
      members: chatRoom.members,
      lastMessage: chatRoom.lastMessage,
      lastSentBy: chatRoom.lastSentBy,
      lastSentAt: chatRoom.lastSentAt,
      createdBy: chatRoom.createdBy,
      $_servicesDiscussionsServicesId: $_servicesDiscussionsServicesId,
    );
  }

  int? $_servicesDiscussionsServicesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll(
        {'_servicesDiscussionsServicesId': $_servicesDiscussionsServicesId});
    return jsonMap;
  }
}

class ChatRoomTable extends _i1.Table {
  ChatRoomTable({super.tableRelation}) : super(tableName: 'chat_rooms') {
    createdOn = _i1.ColumnDateTime(
      'createdOn',
      this,
    );
    lastMessage = _i1.ColumnString(
      'lastMessage',
      this,
    );
    lastSentBy = _i1.ColumnSerializable(
      'lastSentBy',
      this,
    );
    lastSentAt = _i1.ColumnDateTime(
      'lastSentAt',
      this,
    );
    createdBy = _i1.ColumnSerializable(
      'createdBy',
      this,
    );
    $_servicesDiscussionsServicesId = _i1.ColumnInt(
      '_servicesDiscussionsServicesId',
      this,
    );
  }

  late final _i1.ColumnDateTime createdOn;

  _i2.ContactTable? ___members;

  _i1.ManyRelation<_i2.ContactTable>? _members;

  late final _i1.ColumnString lastMessage;

  late final _i1.ColumnSerializable lastSentBy;

  late final _i1.ColumnDateTime lastSentAt;

  late final _i1.ColumnSerializable createdBy;

  late final _i1.ColumnInt $_servicesDiscussionsServicesId;

  _i2.ContactTable get __members {
    if (___members != null) return ___members!;
    ___members = _i1.createRelationTable(
      relationFieldName: '__members',
      field: ChatRoom.t.id,
      foreignField: _i2.Contact.t.$_chatRoomsMembersChatRoomsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ContactTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _i1.ManyRelation<_i2.ContactTable> get members {
    if (_members != null) return _members!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'members',
      field: ChatRoom.t.id,
      foreignField: _i2.Contact.t.$_chatRoomsMembersChatRoomsId,
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

  @override
  List<_i1.Column> get columns => [
        id,
        createdOn,
        lastMessage,
        lastSentBy,
        lastSentAt,
        createdBy,
        $_servicesDiscussionsServicesId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'members') {
      return __members;
    }
    return null;
  }
}

@Deprecated('Use ChatRoomTable.t instead.')
ChatRoomTable tChatRoom = ChatRoomTable();

class ChatRoomInclude extends _i1.IncludeObject {
  ChatRoomInclude._({_i2.ContactIncludeList? members}) {
    _members = members;
  }

  _i2.ContactIncludeList? _members;

  @override
  Map<String, _i1.Include?> get includes => {'members': _members};

  @override
  _i1.Table get table => ChatRoom.t;
}

class ChatRoomIncludeList extends _i1.IncludeList {
  ChatRoomIncludeList._({
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChatRoom.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ChatRoom.t;
}

class ChatRoomRepository {
  const ChatRoomRepository._();

  final attach = const ChatRoomAttachRepository._();

  final attachRow = const ChatRoomAttachRowRepository._();

  final detach = const ChatRoomDetachRepository._();

  final detachRow = const ChatRoomDetachRowRepository._();

  Future<List<ChatRoom>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    _i1.Transaction? transaction,
    ChatRoomInclude? include,
  }) async {
    return session.dbNext.find<ChatRoom>(
      where: where?.call(ChatRoom.t),
      orderBy: orderBy?.call(ChatRoom.t),
      orderByList: orderByList?.call(ChatRoom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ChatRoom?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChatRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRoomTable>? orderByList,
    _i1.Transaction? transaction,
    ChatRoomInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ChatRoom>(
      where: where?.call(ChatRoom.t),
      orderBy: orderBy?.call(ChatRoom.t),
      orderByList: orderByList?.call(ChatRoom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ChatRoom?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ChatRoomInclude? include,
  }) async {
    return session.dbNext.findById<ChatRoom>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ChatRoom>> insert(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ChatRoom>(
      rows,
      transaction: transaction,
    );
  }

  Future<ChatRoom> insertRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ChatRoom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ChatRoom>> update(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.ColumnSelections<ChatRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ChatRoom>(
      rows,
      columns: columns?.call(ChatRoom.t),
      transaction: transaction,
    );
  }

  Future<ChatRoom> updateRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.ColumnSelections<ChatRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ChatRoom>(
      row,
      columns: columns?.call(ChatRoom.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ChatRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ChatRoom>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ChatRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ChatRoom>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ChatRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ChatRoom>(
      where: where(ChatRoom.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatRoomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ChatRoom>(
      where: where?.call(ChatRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ChatRoomAttachRepository {
  const ChatRoomAttachRepository._();

  Future<void> members(
    _i1.Session session,
    ChatRoom chatRoom,
    List<_i2.Contact> contact,
  ) async {
    if (contact.any((e) => e.id == null)) {
      throw ArgumentError.notNull('contact.id');
    }
    if (chatRoom.id == null) {
      throw ArgumentError.notNull('chatRoom.id');
    }

    var $contact = contact
        .map((e) => _i2.ContactImplicit(
              e,
              $_chatRoomsMembersChatRoomsId: chatRoom.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_chatRoomsMembersChatRoomsId],
    );
  }
}

class ChatRoomAttachRowRepository {
  const ChatRoomAttachRowRepository._();

  Future<void> members(
    _i1.Session session,
    ChatRoom chatRoom,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }
    if (chatRoom.id == null) {
      throw ArgumentError.notNull('chatRoom.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_chatRoomsMembersChatRoomsId: chatRoom.id,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_chatRoomsMembersChatRoomsId],
    );
  }
}

class ChatRoomDetachRepository {
  const ChatRoomDetachRepository._();

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
              $_chatRoomsMembersChatRoomsId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_chatRoomsMembersChatRoomsId],
    );
  }
}

class ChatRoomDetachRowRepository {
  const ChatRoomDetachRowRepository._();

  Future<void> members(
    _i1.Session session,
    _i2.Contact contact,
  ) async {
    if (contact.id == null) {
      throw ArgumentError.notNull('contact.id');
    }

    var $contact = _i2.ContactImplicit(
      contact,
      $_chatRoomsMembersChatRoomsId: null,
    );
    await session.dbNext.updateRow<_i2.Contact>(
      $contact,
      columns: [_i2.Contact.t.$_chatRoomsMembersChatRoomsId],
    );
  }
}
