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

abstract class Contact extends _i1.TableRow {
  Contact._({
    int? id,
    this.name,
    this.suffix,
    this.dob,
    this.email,
    this.address,
    this.gender,
    this.bloodGroup,
    this.emergencyContactNo,
    this.mobile,
    this.homePhone,
    this.officePhone,
    this.contactType,
    this.profilePic,
  }) : super(id);

  factory Contact({
    int? id,
    String? name,
    String? suffix,
    DateTime? dob,
    String? email,
    String? address,
    _i2.Gender? gender,
    _i2.BloodGroup? bloodGroup,
    String? emergencyContactNo,
    String? mobile,
    String? homePhone,
    String? officePhone,
    _i2.ContactType? contactType,
    _i3.ByteData? profilePic,
  }) = _ContactImpl;

  factory Contact.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Contact(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name:
          serializationManager.deserialize<String?>(jsonSerialization['name']),
      suffix: serializationManager
          .deserialize<String?>(jsonSerialization['suffix']),
      dob:
          serializationManager.deserialize<DateTime?>(jsonSerialization['dob']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      address: serializationManager
          .deserialize<String?>(jsonSerialization['address']),
      gender: serializationManager
          .deserialize<_i2.Gender?>(jsonSerialization['gender']),
      bloodGroup: serializationManager
          .deserialize<_i2.BloodGroup?>(jsonSerialization['bloodGroup']),
      emergencyContactNo: serializationManager
          .deserialize<String?>(jsonSerialization['emergencyContactNo']),
      mobile: serializationManager
          .deserialize<String?>(jsonSerialization['mobile']),
      homePhone: serializationManager
          .deserialize<String?>(jsonSerialization['homePhone']),
      officePhone: serializationManager
          .deserialize<String?>(jsonSerialization['officePhone']),
      contactType: serializationManager
          .deserialize<_i2.ContactType?>(jsonSerialization['contactType']),
      profilePic: serializationManager
          .deserialize<_i3.ByteData?>(jsonSerialization['profilePic']),
    );
  }

  static final t = ContactTable();

  static const db = ContactRepository._();

  String? name;

  String? suffix;

  DateTime? dob;

  String? email;

  String? address;

  _i2.Gender? gender;

  _i2.BloodGroup? bloodGroup;

  String? emergencyContactNo;

  String? mobile;

  String? homePhone;

  String? officePhone;

  _i2.ContactType? contactType;

  _i3.ByteData? profilePic;

  int? _smallGroupsMembersSmallGroupsId;

  int? _chatRoomsMembersChatRoomsId;

  int? _sermonsAuthorsSermonsId;

  int? _servicesMembersServicesId;

  @override
  _i1.Table get table => t;

  Contact copyWith({
    int? id,
    String? name,
    String? suffix,
    DateTime? dob,
    String? email,
    String? address,
    _i2.Gender? gender,
    _i2.BloodGroup? bloodGroup,
    String? emergencyContactNo,
    String? mobile,
    String? homePhone,
    String? officePhone,
    _i2.ContactType? contactType,
    _i3.ByteData? profilePic,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (suffix != null) 'suffix': suffix,
      if (dob != null) 'dob': dob?.toJson(),
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (gender != null) 'gender': gender?.toJson(),
      if (bloodGroup != null) 'bloodGroup': bloodGroup?.toJson(),
      if (emergencyContactNo != null) 'emergencyContactNo': emergencyContactNo,
      if (mobile != null) 'mobile': mobile,
      if (homePhone != null) 'homePhone': homePhone,
      if (officePhone != null) 'officePhone': officePhone,
      if (contactType != null) 'contactType': contactType?.toJson(),
      if (profilePic != null) 'profilePic': profilePic?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'suffix': suffix,
      'dob': dob,
      'email': email,
      'address': address,
      'gender': gender,
      'bloodGroup': bloodGroup,
      'emergencyContactNo': emergencyContactNo,
      'mobile': mobile,
      'homePhone': homePhone,
      'officePhone': officePhone,
      'contactType': contactType,
      'profilePic': profilePic,
      '_smallGroupsMembersSmallGroupsId': _smallGroupsMembersSmallGroupsId,
      '_chatRoomsMembersChatRoomsId': _chatRoomsMembersChatRoomsId,
      '_sermonsAuthorsSermonsId': _sermonsAuthorsSermonsId,
      '_servicesMembersServicesId': _servicesMembersServicesId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (suffix != null) 'suffix': suffix,
      if (dob != null) 'dob': dob?.toJson(),
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (gender != null) 'gender': gender?.toJson(),
      if (bloodGroup != null) 'bloodGroup': bloodGroup?.toJson(),
      if (emergencyContactNo != null) 'emergencyContactNo': emergencyContactNo,
      if (mobile != null) 'mobile': mobile,
      if (homePhone != null) 'homePhone': homePhone,
      if (officePhone != null) 'officePhone': officePhone,
      if (contactType != null) 'contactType': contactType?.allToJson(),
      if (profilePic != null) 'profilePic': profilePic?.toJson(),
      if (_smallGroupsMembersSmallGroupsId != null)
        '_smallGroupsMembersSmallGroupsId': _smallGroupsMembersSmallGroupsId,
      if (_chatRoomsMembersChatRoomsId != null)
        '_chatRoomsMembersChatRoomsId': _chatRoomsMembersChatRoomsId,
      if (_sermonsAuthorsSermonsId != null)
        '_sermonsAuthorsSermonsId': _sermonsAuthorsSermonsId,
      if (_servicesMembersServicesId != null)
        '_servicesMembersServicesId': _servicesMembersServicesId,
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
      case 'suffix':
        suffix = value;
        return;
      case 'dob':
        dob = value;
        return;
      case 'email':
        email = value;
        return;
      case 'address':
        address = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'bloodGroup':
        bloodGroup = value;
        return;
      case 'emergencyContactNo':
        emergencyContactNo = value;
        return;
      case 'mobile':
        mobile = value;
        return;
      case 'homePhone':
        homePhone = value;
        return;
      case 'officePhone':
        officePhone = value;
        return;
      case 'contactType':
        contactType = value;
        return;
      case 'profilePic':
        profilePic = value;
        return;
      case '_smallGroupsMembersSmallGroupsId':
        _smallGroupsMembersSmallGroupsId = value;
        return;
      case '_chatRoomsMembersChatRoomsId':
        _chatRoomsMembersChatRoomsId = value;
        return;
      case '_sermonsAuthorsSermonsId':
        _sermonsAuthorsSermonsId = value;
        return;
      case '_servicesMembersServicesId':
        _servicesMembersServicesId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Contact>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Contact>(
      where: where != null ? where(Contact.t) : null,
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
  static Future<Contact?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Contact>(
      where: where != null ? where(Contact.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Contact?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Contact>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Contact>(
      where: where(Contact.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Contact row, {
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
    Contact row, {
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
    Contact row, {
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
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Contact>(
      where: where != null ? where(Contact.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ContactInclude include() {
    return ContactInclude._();
  }

  static ContactIncludeList includeList({
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    ContactInclude? include,
  }) {
    return ContactIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Contact.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Contact.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ContactImpl extends Contact {
  _ContactImpl({
    int? id,
    String? name,
    String? suffix,
    DateTime? dob,
    String? email,
    String? address,
    _i2.Gender? gender,
    _i2.BloodGroup? bloodGroup,
    String? emergencyContactNo,
    String? mobile,
    String? homePhone,
    String? officePhone,
    _i2.ContactType? contactType,
    _i3.ByteData? profilePic,
  }) : super._(
          id: id,
          name: name,
          suffix: suffix,
          dob: dob,
          email: email,
          address: address,
          gender: gender,
          bloodGroup: bloodGroup,
          emergencyContactNo: emergencyContactNo,
          mobile: mobile,
          homePhone: homePhone,
          officePhone: officePhone,
          contactType: contactType,
          profilePic: profilePic,
        );

  @override
  Contact copyWith({
    Object? id = _Undefined,
    Object? name = _Undefined,
    Object? suffix = _Undefined,
    Object? dob = _Undefined,
    Object? email = _Undefined,
    Object? address = _Undefined,
    Object? gender = _Undefined,
    Object? bloodGroup = _Undefined,
    Object? emergencyContactNo = _Undefined,
    Object? mobile = _Undefined,
    Object? homePhone = _Undefined,
    Object? officePhone = _Undefined,
    Object? contactType = _Undefined,
    Object? profilePic = _Undefined,
  }) {
    return Contact(
      id: id is int? ? id : this.id,
      name: name is String? ? name : this.name,
      suffix: suffix is String? ? suffix : this.suffix,
      dob: dob is DateTime? ? dob : this.dob,
      email: email is String? ? email : this.email,
      address: address is String? ? address : this.address,
      gender: gender is _i2.Gender? ? gender : this.gender,
      bloodGroup: bloodGroup is _i2.BloodGroup? ? bloodGroup : this.bloodGroup,
      emergencyContactNo: emergencyContactNo is String?
          ? emergencyContactNo
          : this.emergencyContactNo,
      mobile: mobile is String? ? mobile : this.mobile,
      homePhone: homePhone is String? ? homePhone : this.homePhone,
      officePhone: officePhone is String? ? officePhone : this.officePhone,
      contactType: contactType is _i2.ContactType?
          ? contactType
          : this.contactType?.copyWith(),
      profilePic:
          profilePic is _i3.ByteData? ? profilePic : this.profilePic?.clone(),
    );
  }
}

class ContactImplicit extends _ContactImpl {
  ContactImplicit._({
    int? id,
    String? name,
    String? suffix,
    DateTime? dob,
    String? email,
    String? address,
    _i2.Gender? gender,
    _i2.BloodGroup? bloodGroup,
    String? emergencyContactNo,
    String? mobile,
    String? homePhone,
    String? officePhone,
    _i2.ContactType? contactType,
    _i3.ByteData? profilePic,
    this.$_smallGroupsMembersSmallGroupsId,
    this.$_chatRoomsMembersChatRoomsId,
    this.$_sermonsAuthorsSermonsId,
    this.$_servicesMembersServicesId,
  }) : super(
          id: id,
          name: name,
          suffix: suffix,
          dob: dob,
          email: email,
          address: address,
          gender: gender,
          bloodGroup: bloodGroup,
          emergencyContactNo: emergencyContactNo,
          mobile: mobile,
          homePhone: homePhone,
          officePhone: officePhone,
          contactType: contactType,
          profilePic: profilePic,
        );

  factory ContactImplicit(
    Contact contact, {
    int? $_smallGroupsMembersSmallGroupsId,
    int? $_chatRoomsMembersChatRoomsId,
    int? $_sermonsAuthorsSermonsId,
    int? $_servicesMembersServicesId,
  }) {
    return ContactImplicit._(
      id: contact.id,
      name: contact.name,
      suffix: contact.suffix,
      dob: contact.dob,
      email: contact.email,
      address: contact.address,
      gender: contact.gender,
      bloodGroup: contact.bloodGroup,
      emergencyContactNo: contact.emergencyContactNo,
      mobile: contact.mobile,
      homePhone: contact.homePhone,
      officePhone: contact.officePhone,
      contactType: contact.contactType,
      profilePic: contact.profilePic,
      $_smallGroupsMembersSmallGroupsId: $_smallGroupsMembersSmallGroupsId,
      $_chatRoomsMembersChatRoomsId: $_chatRoomsMembersChatRoomsId,
      $_sermonsAuthorsSermonsId: $_sermonsAuthorsSermonsId,
      $_servicesMembersServicesId: $_servicesMembersServicesId,
    );
  }

  int? $_smallGroupsMembersSmallGroupsId;

  int? $_chatRoomsMembersChatRoomsId;

  int? $_sermonsAuthorsSermonsId;

  int? $_servicesMembersServicesId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({
      '_smallGroupsMembersSmallGroupsId': $_smallGroupsMembersSmallGroupsId,
      '_chatRoomsMembersChatRoomsId': $_chatRoomsMembersChatRoomsId,
      '_sermonsAuthorsSermonsId': $_sermonsAuthorsSermonsId,
      '_servicesMembersServicesId': $_servicesMembersServicesId
    });
    return jsonMap;
  }
}

class ContactTable extends _i1.Table {
  ContactTable({super.tableRelation}) : super(tableName: 'contacts') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    suffix = _i1.ColumnString(
      'suffix',
      this,
    );
    dob = _i1.ColumnDateTime(
      'dob',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byName,
    );
    bloodGroup = _i1.ColumnEnum(
      'bloodGroup',
      this,
      _i1.EnumSerialization.byName,
    );
    emergencyContactNo = _i1.ColumnString(
      'emergencyContactNo',
      this,
    );
    mobile = _i1.ColumnString(
      'mobile',
      this,
    );
    homePhone = _i1.ColumnString(
      'homePhone',
      this,
    );
    officePhone = _i1.ColumnString(
      'officePhone',
      this,
    );
    contactType = _i1.ColumnSerializable(
      'contactType',
      this,
    );
    profilePic = _i1.ColumnByteData(
      'profilePic',
      this,
    );
    $_smallGroupsMembersSmallGroupsId = _i1.ColumnInt(
      '_smallGroupsMembersSmallGroupsId',
      this,
    );
    $_chatRoomsMembersChatRoomsId = _i1.ColumnInt(
      '_chatRoomsMembersChatRoomsId',
      this,
    );
    $_sermonsAuthorsSermonsId = _i1.ColumnInt(
      '_sermonsAuthorsSermonsId',
      this,
    );
    $_servicesMembersServicesId = _i1.ColumnInt(
      '_servicesMembersServicesId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString suffix;

  late final _i1.ColumnDateTime dob;

  late final _i1.ColumnString email;

  late final _i1.ColumnString address;

  late final _i1.ColumnEnum<_i2.Gender> gender;

  late final _i1.ColumnEnum<_i2.BloodGroup> bloodGroup;

  late final _i1.ColumnString emergencyContactNo;

  late final _i1.ColumnString mobile;

  late final _i1.ColumnString homePhone;

  late final _i1.ColumnString officePhone;

  late final _i1.ColumnSerializable contactType;

  late final _i1.ColumnByteData profilePic;

  late final _i1.ColumnInt $_smallGroupsMembersSmallGroupsId;

  late final _i1.ColumnInt $_chatRoomsMembersChatRoomsId;

  late final _i1.ColumnInt $_sermonsAuthorsSermonsId;

  late final _i1.ColumnInt $_servicesMembersServicesId;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        suffix,
        dob,
        email,
        address,
        gender,
        bloodGroup,
        emergencyContactNo,
        mobile,
        homePhone,
        officePhone,
        contactType,
        profilePic,
        $_smallGroupsMembersSmallGroupsId,
        $_chatRoomsMembersChatRoomsId,
        $_sermonsAuthorsSermonsId,
        $_servicesMembersServicesId,
      ];
}

@Deprecated('Use ContactTable.t instead.')
ContactTable tContact = ContactTable();

class ContactInclude extends _i1.IncludeObject {
  ContactInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Contact.t;
}

class ContactIncludeList extends _i1.IncludeList {
  ContactIncludeList._({
    _i1.WhereExpressionBuilder<ContactTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Contact.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Contact.t;
}

class ContactRepository {
  const ContactRepository._();

  Future<List<Contact>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Contact>(
      where: where?.call(Contact.t),
      orderBy: orderBy?.call(Contact.t),
      orderByList: orderByList?.call(Contact.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Contact?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? offset,
    _i1.OrderByBuilder<ContactTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Contact>(
      where: where?.call(Contact.t),
      orderBy: orderBy?.call(Contact.t),
      orderByList: orderByList?.call(Contact.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Contact?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Contact>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Contact>> insert(
    _i1.Session session,
    List<Contact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Contact>(
      rows,
      transaction: transaction,
    );
  }

  Future<Contact> insertRow(
    _i1.Session session,
    Contact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Contact>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Contact>> update(
    _i1.Session session,
    List<Contact> rows, {
    _i1.ColumnSelections<ContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Contact>(
      rows,
      columns: columns?.call(Contact.t),
      transaction: transaction,
    );
  }

  Future<Contact> updateRow(
    _i1.Session session,
    Contact row, {
    _i1.ColumnSelections<ContactTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Contact>(
      row,
      columns: columns?.call(Contact.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Contact> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Contact>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Contact row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Contact>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Contact>(
      where: where(Contact.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Contact>(
      where: where?.call(Contact.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
