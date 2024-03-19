/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'contacts/contact_model.dart' as _i3;
import 'contacts/family_model.dart' as _i4;
import 'contacts/member_model.dart' as _i5;
import 'enums/blood_group.dart' as _i6;
import 'enums/gender.dart' as _i7;
import 'events/event_group_model.dart' as _i8;
import 'events/event_itenary_item_model.dart' as _i9;
import 'events/event_meeting_model.dart' as _i10;
import 'events/event_model.dart' as _i11;
import 'events/event_type.dart' as _i12;
import 'example.dart' as _i13;
import 'groups/group_member_model.dart' as _i14;
import 'groups/group_model.dart' as _i15;
import 'media/file_store.dart' as _i16;
import 'meetings/meeting_model.dart' as _i17;
import 'messages/chats/chat_room.dart' as _i18;
import 'messages/comment/comment.dart' as _i19;
import 'primitve/contact_type.dart' as _i20;
import 'primitve/group_type.dart' as _i21;
import 'primitve/postions.dart' as _i22;
import 'primitve/service_type.dart' as _i23;
import 'primitve/skills_list.dart' as _i24;
import 'resources/booking/resources_booking.dart' as _i25;
import 'resources/booking/venue_booking.dart' as _i26;
import 'resources/resource_types.dart' as _i27;
import 'resources/resources.dart' as _i28;
import 'resources/venue.dart' as _i29;
import 'resources/venue_type.dart' as _i30;
import 'scheduler/schedule_model.dart' as _i31;
import 'scheduler/schedule_status_enum.dart' as _i32;
import 'sermons/sermon_model.dart' as _i33;
import 'sermons/sermon_type.dart' as _i34;
import 'services/service_model.dart' as _i35;
import 'services/service_rosters.dart' as _i36;
import 'protocol.dart' as _i37;
import 'package:churchapp_server/src/generated/primitve/skills_list.dart'
    as _i38;
export 'contacts/contact_model.dart';
export 'contacts/family_model.dart';
export 'contacts/member_model.dart';
export 'enums/blood_group.dart';
export 'enums/gender.dart';
export 'events/event_group_model.dart';
export 'events/event_itenary_item_model.dart';
export 'events/event_meeting_model.dart';
export 'events/event_model.dart';
export 'events/event_type.dart';
export 'example.dart';
export 'groups/group_member_model.dart';
export 'groups/group_model.dart';
export 'media/file_store.dart';
export 'meetings/meeting_model.dart';
export 'messages/chats/chat_room.dart';
export 'messages/comment/comment.dart';
export 'primitve/contact_type.dart';
export 'primitve/group_type.dart';
export 'primitve/postions.dart';
export 'primitve/service_type.dart';
export 'primitve/skills_list.dart';
export 'resources/booking/resources_booking.dart';
export 'resources/booking/venue_booking.dart';
export 'resources/resource_types.dart';
export 'resources/resources.dart';
export 'resources/venue.dart';
export 'resources/venue_type.dart';
export 'scheduler/schedule_model.dart';
export 'scheduler/schedule_status_enum.dart';
export 'sermons/sermon_model.dart';
export 'sermons/sermon_type.dart';
export 'services/service_model.dart';
export 'services/service_rosters.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'chat_rooms',
      dartName: 'ChatRoom',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'chat_rooms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'createdOn',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'lastMessage',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'lastSentBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
        _i2.ColumnDefinition(
          name: 'lastSentAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
        _i2.ColumnDefinition(
          name: '_servicesDiscussionsServicesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'chat_rooms_fk_0',
          columns: ['_servicesDiscussionsServicesId'],
          referenceTable: 'services',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'chat_rooms_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'comments',
      dartName: 'Comment',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'comments_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'sent',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'delivered',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'received',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'read',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'text',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:FileStore?',
        ),
        _i2.ColumnDefinition(
          name: 'sentBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'comments_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'contact_type',
      dartName: 'ContactType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'contact_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'contact_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'contacts',
      dartName: 'Contact',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'contacts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'suffix',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'dob',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'address',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:Gender?',
        ),
        _i2.ColumnDefinition(
          name: 'bloodGroup',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:BloodGroup?',
        ),
        _i2.ColumnDefinition(
          name: 'emergencyContactNo',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'mobile',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'homePhone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'officePhone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'contactType',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:ContactType?',
        ),
        _i2.ColumnDefinition(
          name: 'profilePic',
          columnType: _i2.ColumnType.bytea,
          isNullable: true,
          dartType: 'dart:typed_data:ByteData?',
        ),
        _i2.ColumnDefinition(
          name: '_smallGroupsMembersSmallGroupsId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_chatRoomsMembersChatRoomsId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_sermonsAuthorsSermonsId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_servicesMembersServicesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'contacts_fk_0',
          columns: ['_smallGroupsMembersSmallGroupsId'],
          referenceTable: 'small_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'contacts_fk_1',
          columns: ['_chatRoomsMembersChatRoomsId'],
          referenceTable: 'chat_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'contacts_fk_2',
          columns: ['_sermonsAuthorsSermonsId'],
          referenceTable: 'sermons',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'contacts_fk_3',
          columns: ['_servicesMembersServicesId'],
          referenceTable: 'services',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'contacts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'event_group',
      dartName: 'EventGroup',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'event_group_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'groupId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: '_eventsEventgroupsEventsId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'event_group_fk_0',
          columns: ['groupId'],
          referenceTable: 'small_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'event_group_fk_1',
          columns: ['eventId'],
          referenceTable: 'events',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'event_group_fk_2',
          columns: ['_eventsEventgroupsEventsId'],
          referenceTable: 'events',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'event_group_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'event_itenary_items',
      dartName: 'EventItenaryItem',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'event_itenary_items_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'startTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'event_itenary_items_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'event_meetings',
      dartName: 'EventMeeting',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'event_meetings_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'detailedDescription',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'meetingId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'eventId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: '_eventsEventmeetingsEventsId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'event_meetings_fk_0',
          columns: ['meetingId'],
          referenceTable: 'meetings',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'event_meetings_fk_1',
          columns: ['eventId'],
          referenceTable: 'events',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'event_meetings_fk_2',
          columns: ['_eventsEventmeetingsEventsId'],
          referenceTable: 'events',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'event_meetings_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'event_types',
      dartName: 'EventType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'event_types_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdBy',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'event_types_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'events',
      dartName: 'Event',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'events_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:EventType?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'events_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'families',
      dartName: 'Family',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'families_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'familyName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'famMemIdx',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'families_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'file_store',
      dartName: 'FileStore',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'file_store_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'subTitle',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'addedBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
        _i2.ColumnDefinition(
          name: 'fileName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'fileType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.bytea,
          isNullable: true,
          dartType: 'dart:typed_data:ByteData?',
        ),
        _i2.ColumnDefinition(
          name: 'published',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'fileSize',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: '_servicesFilesServicesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'file_store_fk_0',
          columns: ['_servicesFilesServicesId'],
          referenceTable: 'services',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'file_store_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'group_type',
      dartName: 'GroupType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'group_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'group_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'meetings',
      dartName: 'Meeting',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'meetings_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'startTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'endTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: '_servicesMeetingsServicesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'meetings_fk_0',
          columns: ['_servicesMeetingsServicesId'],
          referenceTable: 'services',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'meetings_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'members',
      dartName: 'Member',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'members_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'contactId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'joiningDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'occupation',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'eduQualification',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'language',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'race',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'ethinicty',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'skills',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<protocol:Skill?>',
        ),
        _i2.ColumnDefinition(
          name: 'baptistDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'membershipFee',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'familyId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: '_familiesMembersFamiliesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'members_fk_0',
          columns: ['contactId'],
          referenceTable: 'contacts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'members_fk_1',
          columns: ['familyId'],
          referenceTable: 'families',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'members_fk_2',
          columns: ['_familiesMembersFamiliesId'],
          referenceTable: 'families',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'members_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'positions',
      dartName: 'Position',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'positions_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'positions_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'resource_bookings',
      dartName: 'ResourceBooking',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'resource_bookings_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'createdDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'requestedById',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'quanity',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: 'startDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'endDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'rate',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'amount',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'approvalStatus',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'paymentStatus',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'transactionID',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'rbookingID',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'venueId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'resource_bookings_fk_0',
          columns: ['requestedById'],
          referenceTable: 'contacts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'resource_bookings_fk_1',
          columns: ['venueId'],
          referenceTable: 'venues',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'resource_bookings_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'resource_type',
      dartName: 'ResourceType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'resource_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'resource_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'resources',
      dartName: 'Resource',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'resources_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'resourceType',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:ResourceType?',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'quanity',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'rent',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'resources_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'schedules',
      dartName: 'Schedule',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'schedules_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdBy',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'dueDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'startDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'endDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: 'recurring',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'tillDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'interval',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: 'totalCount',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ScheduleStatus',
        ),
        _i2.ColumnDefinition(
          name: 'snoozedTo',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'snoozeCount',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'stoppedBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'schedules_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sermon_type',
      dartName: 'SermonType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sermon_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sermon_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sermons',
      dartName: 'Sermon',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sermons_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'subTitle',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'addedBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
        _i2.ColumnDefinition(
          name: 'published',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'file',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:FileStore?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sermons_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'service_rosters',
      dartName: 'ServiceRoster',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'service_rosters_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'member',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:Contact',
        ),
        _i2.ColumnDefinition(
          name: 'service',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:Service',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:Position',
        ),
        _i2.ColumnDefinition(
          name: 'availability',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: '_servicesRostersServicesId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'service_rosters_fk_0',
          columns: ['_servicesRostersServicesId'],
          referenceTable: 'services',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'service_rosters_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'service_type',
      dartName: 'ServiceType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'service_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'service_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'services',
      dartName: 'Service',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'services_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:ServiceType?',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.bytea,
          isNullable: true,
          dartType: 'dart:typed_data:ByteData?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdBy',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Contact?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'services_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'skill',
      dartName: 'Skill',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'skill_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'skill_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'small_group_members',
      dartName: 'SmallGroupMember',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'small_group_members_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'groupId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'memberId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'position',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:Position',
        ),
        _i2.ColumnDefinition(
          name: 'availablePositonCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'small_group_members_fk_0',
          columns: ['groupId'],
          referenceTable: 'small_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'small_group_members_fk_1',
          columns: ['memberId'],
          referenceTable: 'contacts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'small_group_members_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'small_groups',
      dartName: 'SmallGroup',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'small_groups_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'detail',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:GroupType?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'small_groups_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'venue_bookings',
      dartName: 'VenueBooking',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'venue_bookings_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'createdDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'requestedById',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'Duration?',
        ),
        _i2.ColumnDefinition(
          name: 'startDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'endDateTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'rate',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'amount',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'approvalStatus',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'paymentStatus',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'transactionID',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'vbookingID',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'venueId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'resources',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:ResourceBooking?>?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'venue_bookings_fk_0',
          columns: ['requestedById'],
          referenceTable: 'contacts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'venue_bookings_fk_1',
          columns: ['venueId'],
          referenceTable: 'venues',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'venue_bookings_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'venue_type',
      dartName: 'VenueType',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'venue_type_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'venue_type_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'venues',
      dartName: 'Venue',
      schema: 'public',
      module: 'churchapp',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'venues_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'venueType',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:VenueType?',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'capacity',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'rent',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'venues_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Contact) {
      return _i3.Contact.fromJson(data, this) as T;
    }
    if (t == _i4.Family) {
      return _i4.Family.fromJson(data, this) as T;
    }
    if (t == _i5.Member) {
      return _i5.Member.fromJson(data, this) as T;
    }
    if (t == _i6.BloodGroup) {
      return _i6.BloodGroup.fromJson(data) as T;
    }
    if (t == _i7.Gender) {
      return _i7.Gender.fromJson(data) as T;
    }
    if (t == _i8.EventGroup) {
      return _i8.EventGroup.fromJson(data, this) as T;
    }
    if (t == _i9.EventItenaryItem) {
      return _i9.EventItenaryItem.fromJson(data, this) as T;
    }
    if (t == _i10.EventMeeting) {
      return _i10.EventMeeting.fromJson(data, this) as T;
    }
    if (t == _i11.Event) {
      return _i11.Event.fromJson(data, this) as T;
    }
    if (t == _i12.EventType) {
      return _i12.EventType.fromJson(data, this) as T;
    }
    if (t == _i13.Example) {
      return _i13.Example.fromJson(data, this) as T;
    }
    if (t == _i14.SmallGroupMember) {
      return _i14.SmallGroupMember.fromJson(data, this) as T;
    }
    if (t == _i15.SmallGroup) {
      return _i15.SmallGroup.fromJson(data, this) as T;
    }
    if (t == _i16.FileStore) {
      return _i16.FileStore.fromJson(data, this) as T;
    }
    if (t == _i17.Meeting) {
      return _i17.Meeting.fromJson(data, this) as T;
    }
    if (t == _i18.ChatRoom) {
      return _i18.ChatRoom.fromJson(data, this) as T;
    }
    if (t == _i19.Comment) {
      return _i19.Comment.fromJson(data, this) as T;
    }
    if (t == _i20.ContactType) {
      return _i20.ContactType.fromJson(data, this) as T;
    }
    if (t == _i21.GroupType) {
      return _i21.GroupType.fromJson(data, this) as T;
    }
    if (t == _i22.Position) {
      return _i22.Position.fromJson(data, this) as T;
    }
    if (t == _i23.ServiceType) {
      return _i23.ServiceType.fromJson(data, this) as T;
    }
    if (t == _i24.Skill) {
      return _i24.Skill.fromJson(data, this) as T;
    }
    if (t == _i25.ResourceBooking) {
      return _i25.ResourceBooking.fromJson(data, this) as T;
    }
    if (t == _i26.VenueBooking) {
      return _i26.VenueBooking.fromJson(data, this) as T;
    }
    if (t == _i27.ResourceType) {
      return _i27.ResourceType.fromJson(data, this) as T;
    }
    if (t == _i28.Resource) {
      return _i28.Resource.fromJson(data, this) as T;
    }
    if (t == _i29.Venue) {
      return _i29.Venue.fromJson(data, this) as T;
    }
    if (t == _i30.VenueType) {
      return _i30.VenueType.fromJson(data, this) as T;
    }
    if (t == _i31.Schedule) {
      return _i31.Schedule.fromJson(data, this) as T;
    }
    if (t == _i32.ScheduleStatus) {
      return _i32.ScheduleStatus.fromJson(data) as T;
    }
    if (t == _i33.Sermon) {
      return _i33.Sermon.fromJson(data, this) as T;
    }
    if (t == _i34.SermonType) {
      return _i34.SermonType.fromJson(data, this) as T;
    }
    if (t == _i35.Service) {
      return _i35.Service.fromJson(data, this) as T;
    }
    if (t == _i36.ServiceRoster) {
      return _i36.ServiceRoster.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Contact?>()) {
      return (data != null ? _i3.Contact.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Family?>()) {
      return (data != null ? _i4.Family.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Member?>()) {
      return (data != null ? _i5.Member.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.BloodGroup?>()) {
      return (data != null ? _i6.BloodGroup.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Gender?>()) {
      return (data != null ? _i7.Gender.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.EventGroup?>()) {
      return (data != null ? _i8.EventGroup.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.EventItenaryItem?>()) {
      return (data != null ? _i9.EventItenaryItem.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.EventMeeting?>()) {
      return (data != null ? _i10.EventMeeting.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.Event?>()) {
      return (data != null ? _i11.Event.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.EventType?>()) {
      return (data != null ? _i12.EventType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Example?>()) {
      return (data != null ? _i13.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.SmallGroupMember?>()) {
      return (data != null ? _i14.SmallGroupMember.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.SmallGroup?>()) {
      return (data != null ? _i15.SmallGroup.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.FileStore?>()) {
      return (data != null ? _i16.FileStore.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.Meeting?>()) {
      return (data != null ? _i17.Meeting.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.ChatRoom?>()) {
      return (data != null ? _i18.ChatRoom.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.Comment?>()) {
      return (data != null ? _i19.Comment.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i20.ContactType?>()) {
      return (data != null ? _i20.ContactType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.GroupType?>()) {
      return (data != null ? _i21.GroupType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.Position?>()) {
      return (data != null ? _i22.Position.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.ServiceType?>()) {
      return (data != null ? _i23.ServiceType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.Skill?>()) {
      return (data != null ? _i24.Skill.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.ResourceBooking?>()) {
      return (data != null ? _i25.ResourceBooking.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i26.VenueBooking?>()) {
      return (data != null ? _i26.VenueBooking.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i27.ResourceType?>()) {
      return (data != null ? _i27.ResourceType.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i28.Resource?>()) {
      return (data != null ? _i28.Resource.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i29.Venue?>()) {
      return (data != null ? _i29.Venue.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i30.VenueType?>()) {
      return (data != null ? _i30.VenueType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i31.Schedule?>()) {
      return (data != null ? _i31.Schedule.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i32.ScheduleStatus?>()) {
      return (data != null ? _i32.ScheduleStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.Sermon?>()) {
      return (data != null ? _i33.Sermon.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i34.SermonType?>()) {
      return (data != null ? _i34.SermonType.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i35.Service?>()) {
      return (data != null ? _i35.Service.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i36.ServiceRoster?>()) {
      return (data != null ? _i36.ServiceRoster.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<List<_i37.Member>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Member>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i37.Skill?>) {
      return (data as List).map((e) => deserialize<_i37.Skill?>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i37.EventMeeting>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i37.EventMeeting>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.EventGroup>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.EventGroup>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.Contact>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Contact>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.Contact>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Contact>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.ResourceBooking?>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i37.ResourceBooking?>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.Contact>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Contact>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.Meeting>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Meeting>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.ServiceRoster>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i37.ServiceRoster>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.Contact>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.Contact>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.ChatRoom>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.ChatRoom>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i37.FileStore>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i37.FileStore>(e)).toList()
          : null) as dynamic;
    }
    if (t == Map<dynamic, dynamic>) {
      return Map.fromEntries((data as List).map((e) => MapEntry(
              deserialize<dynamic>(e['k']), deserialize<dynamic>(e['v']))))
          as dynamic;
    }
    if (t == List<_i38.Skill>) {
      return (data as List).map((e) => deserialize<_i38.Skill>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.Contact) {
      return 'Contact';
    }
    if (data is _i4.Family) {
      return 'Family';
    }
    if (data is _i5.Member) {
      return 'Member';
    }
    if (data is _i6.BloodGroup) {
      return 'BloodGroup';
    }
    if (data is _i7.Gender) {
      return 'Gender';
    }
    if (data is _i8.EventGroup) {
      return 'EventGroup';
    }
    if (data is _i9.EventItenaryItem) {
      return 'EventItenaryItem';
    }
    if (data is _i10.EventMeeting) {
      return 'EventMeeting';
    }
    if (data is _i11.Event) {
      return 'Event';
    }
    if (data is _i12.EventType) {
      return 'EventType';
    }
    if (data is _i13.Example) {
      return 'Example';
    }
    if (data is _i14.SmallGroupMember) {
      return 'SmallGroupMember';
    }
    if (data is _i15.SmallGroup) {
      return 'SmallGroup';
    }
    if (data is _i16.FileStore) {
      return 'FileStore';
    }
    if (data is _i17.Meeting) {
      return 'Meeting';
    }
    if (data is _i18.ChatRoom) {
      return 'ChatRoom';
    }
    if (data is _i19.Comment) {
      return 'Comment';
    }
    if (data is _i20.ContactType) {
      return 'ContactType';
    }
    if (data is _i21.GroupType) {
      return 'GroupType';
    }
    if (data is _i22.Position) {
      return 'Position';
    }
    if (data is _i23.ServiceType) {
      return 'ServiceType';
    }
    if (data is _i24.Skill) {
      return 'Skill';
    }
    if (data is _i25.ResourceBooking) {
      return 'ResourceBooking';
    }
    if (data is _i26.VenueBooking) {
      return 'VenueBooking';
    }
    if (data is _i27.ResourceType) {
      return 'ResourceType';
    }
    if (data is _i28.Resource) {
      return 'Resource';
    }
    if (data is _i29.Venue) {
      return 'Venue';
    }
    if (data is _i30.VenueType) {
      return 'VenueType';
    }
    if (data is _i31.Schedule) {
      return 'Schedule';
    }
    if (data is _i32.ScheduleStatus) {
      return 'ScheduleStatus';
    }
    if (data is _i33.Sermon) {
      return 'Sermon';
    }
    if (data is _i34.SermonType) {
      return 'SermonType';
    }
    if (data is _i35.Service) {
      return 'Service';
    }
    if (data is _i36.ServiceRoster) {
      return 'ServiceRoster';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Contact') {
      return deserialize<_i3.Contact>(data['data']);
    }
    if (data['className'] == 'Family') {
      return deserialize<_i4.Family>(data['data']);
    }
    if (data['className'] == 'Member') {
      return deserialize<_i5.Member>(data['data']);
    }
    if (data['className'] == 'BloodGroup') {
      return deserialize<_i6.BloodGroup>(data['data']);
    }
    if (data['className'] == 'Gender') {
      return deserialize<_i7.Gender>(data['data']);
    }
    if (data['className'] == 'EventGroup') {
      return deserialize<_i8.EventGroup>(data['data']);
    }
    if (data['className'] == 'EventItenaryItem') {
      return deserialize<_i9.EventItenaryItem>(data['data']);
    }
    if (data['className'] == 'EventMeeting') {
      return deserialize<_i10.EventMeeting>(data['data']);
    }
    if (data['className'] == 'Event') {
      return deserialize<_i11.Event>(data['data']);
    }
    if (data['className'] == 'EventType') {
      return deserialize<_i12.EventType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i13.Example>(data['data']);
    }
    if (data['className'] == 'SmallGroupMember') {
      return deserialize<_i14.SmallGroupMember>(data['data']);
    }
    if (data['className'] == 'SmallGroup') {
      return deserialize<_i15.SmallGroup>(data['data']);
    }
    if (data['className'] == 'FileStore') {
      return deserialize<_i16.FileStore>(data['data']);
    }
    if (data['className'] == 'Meeting') {
      return deserialize<_i17.Meeting>(data['data']);
    }
    if (data['className'] == 'ChatRoom') {
      return deserialize<_i18.ChatRoom>(data['data']);
    }
    if (data['className'] == 'Comment') {
      return deserialize<_i19.Comment>(data['data']);
    }
    if (data['className'] == 'ContactType') {
      return deserialize<_i20.ContactType>(data['data']);
    }
    if (data['className'] == 'GroupType') {
      return deserialize<_i21.GroupType>(data['data']);
    }
    if (data['className'] == 'Position') {
      return deserialize<_i22.Position>(data['data']);
    }
    if (data['className'] == 'ServiceType') {
      return deserialize<_i23.ServiceType>(data['data']);
    }
    if (data['className'] == 'Skill') {
      return deserialize<_i24.Skill>(data['data']);
    }
    if (data['className'] == 'ResourceBooking') {
      return deserialize<_i25.ResourceBooking>(data['data']);
    }
    if (data['className'] == 'VenueBooking') {
      return deserialize<_i26.VenueBooking>(data['data']);
    }
    if (data['className'] == 'ResourceType') {
      return deserialize<_i27.ResourceType>(data['data']);
    }
    if (data['className'] == 'Resource') {
      return deserialize<_i28.Resource>(data['data']);
    }
    if (data['className'] == 'Venue') {
      return deserialize<_i29.Venue>(data['data']);
    }
    if (data['className'] == 'VenueType') {
      return deserialize<_i30.VenueType>(data['data']);
    }
    if (data['className'] == 'Schedule') {
      return deserialize<_i31.Schedule>(data['data']);
    }
    if (data['className'] == 'ScheduleStatus') {
      return deserialize<_i32.ScheduleStatus>(data['data']);
    }
    if (data['className'] == 'Sermon') {
      return deserialize<_i33.Sermon>(data['data']);
    }
    if (data['className'] == 'SermonType') {
      return deserialize<_i34.SermonType>(data['data']);
    }
    if (data['className'] == 'Service') {
      return deserialize<_i35.Service>(data['data']);
    }
    if (data['className'] == 'ServiceRoster') {
      return deserialize<_i36.ServiceRoster>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Contact:
        return _i3.Contact.t;
      case _i4.Family:
        return _i4.Family.t;
      case _i5.Member:
        return _i5.Member.t;
      case _i8.EventGroup:
        return _i8.EventGroup.t;
      case _i9.EventItenaryItem:
        return _i9.EventItenaryItem.t;
      case _i10.EventMeeting:
        return _i10.EventMeeting.t;
      case _i11.Event:
        return _i11.Event.t;
      case _i12.EventType:
        return _i12.EventType.t;
      case _i14.SmallGroupMember:
        return _i14.SmallGroupMember.t;
      case _i15.SmallGroup:
        return _i15.SmallGroup.t;
      case _i16.FileStore:
        return _i16.FileStore.t;
      case _i17.Meeting:
        return _i17.Meeting.t;
      case _i18.ChatRoom:
        return _i18.ChatRoom.t;
      case _i19.Comment:
        return _i19.Comment.t;
      case _i20.ContactType:
        return _i20.ContactType.t;
      case _i21.GroupType:
        return _i21.GroupType.t;
      case _i22.Position:
        return _i22.Position.t;
      case _i23.ServiceType:
        return _i23.ServiceType.t;
      case _i24.Skill:
        return _i24.Skill.t;
      case _i25.ResourceBooking:
        return _i25.ResourceBooking.t;
      case _i26.VenueBooking:
        return _i26.VenueBooking.t;
      case _i27.ResourceType:
        return _i27.ResourceType.t;
      case _i28.Resource:
        return _i28.Resource.t;
      case _i29.Venue:
        return _i29.Venue.t;
      case _i30.VenueType:
        return _i30.VenueType.t;
      case _i31.Schedule:
        return _i31.Schedule.t;
      case _i33.Sermon:
        return _i33.Sermon.t;
      case _i34.SermonType:
        return _i34.SermonType.t;
      case _i35.Service:
        return _i35.Service.t;
      case _i36.ServiceRoster:
        return _i36.ServiceRoster.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'churchapp';
}
