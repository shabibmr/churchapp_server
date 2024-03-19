BEGIN;

--
-- Class ChatRoom as table chat_rooms
--
CREATE TABLE "chat_rooms" (
    "id" serial PRIMARY KEY,
    "createdOn" timestamp without time zone,
    "lastMessage" text,
    "lastSentBy" json,
    "lastSentAt" timestamp without time zone,
    "createdBy" json,
    "_servicesDiscussionsServicesId" integer
);

--
-- Class Comment as table comments
--
CREATE TABLE "comments" (
    "id" serial PRIMARY KEY,
    "sent" timestamp without time zone NOT NULL,
    "delivered" timestamp without time zone,
    "received" timestamp without time zone,
    "read" timestamp without time zone,
    "text" text,
    "file" json,
    "sentBy" json
);

--
-- Class ContactType as table contact_type
--
CREATE TABLE "contact_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Contact as table contacts
--
CREATE TABLE "contacts" (
    "id" serial PRIMARY KEY,
    "name" text,
    "suffix" text,
    "dob" timestamp without time zone,
    "email" text,
    "address" text,
    "gender" text,
    "bloodGroup" text,
    "emergencyContactNo" text,
    "mobile" text,
    "homePhone" text,
    "officePhone" text,
    "contactType" json,
    "profilePic" bytea,
    "_smallGroupsMembersSmallGroupsId" integer,
    "_chatRoomsMembersChatRoomsId" integer,
    "_sermonsAuthorsSermonsId" integer,
    "_servicesMembersServicesId" integer
);

--
-- Class EventGroup as table event_group
--
CREATE TABLE "event_group" (
    "id" serial PRIMARY KEY,
    "groupId" integer NOT NULL,
    "eventId" integer NOT NULL,
    "_eventsEventgroupsEventsId" integer
);

--
-- Class EventItenaryItem as table event_itenary_items
--
CREATE TABLE "event_itenary_items" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "startTime" timestamp without time zone,
    "duration" bigint
);

--
-- Class EventMeeting as table event_meetings
--
CREATE TABLE "event_meetings" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "detailedDescription" text,
    "meetingId" integer NOT NULL,
    "eventId" integer NOT NULL,
    "_eventsEventmeetingsEventsId" integer
);

--
-- Class EventType as table event_types
--
CREATE TABLE "event_types" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text,
    "createdBy" integer,
    "createdAt" timestamp without time zone
);

--
-- Class Event as table events
--
CREATE TABLE "events" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "type" json
);

--
-- Class Family as table families
--
CREATE TABLE "families" (
    "id" serial PRIMARY KEY,
    "familyName" text,
    "famMemIdx" uuid NOT NULL
);

--
-- Class FileStore as table file_store
--
CREATE TABLE "file_store" (
    "id" serial PRIMARY KEY,
    "title" text,
    "subTitle" text,
    "addedBy" json,
    "fileName" text,
    "fileType" text,
    "file" bytea,
    "published" boolean,
    "duration" bigint,
    "description" text,
    "fileSize" double precision,
    "_servicesFilesServicesId" integer
);

--
-- Class GroupType as table group_type
--
CREATE TABLE "group_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Meeting as table meetings
--
CREATE TABLE "meetings" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "createdBy" json,
    "createdAt" timestamp without time zone,
    "startTime" timestamp without time zone,
    "endTime" timestamp without time zone,
    "duration" bigint,
    "_servicesMeetingsServicesId" integer
);

--
-- Class Member as table members
--
CREATE TABLE "members" (
    "id" serial PRIMARY KEY,
    "contactId" integer NOT NULL,
    "joiningDate" timestamp without time zone,
    "occupation" text,
    "eduQualification" text,
    "language" text,
    "race" text,
    "ethinicty" text,
    "skills" json NOT NULL,
    "baptistDate" timestamp without time zone,
    "membershipFee" integer,
    "familyId" integer NOT NULL,
    "_familiesMembersFamiliesId" integer
);

--
-- Class Position as table positions
--
CREATE TABLE "positions" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class ResourceBooking as table resource_bookings
--
CREATE TABLE "resource_bookings" (
    "id" serial PRIMARY KEY,
    "createdDateTime" timestamp without time zone,
    "requestedById" integer NOT NULL,
    "quanity" integer,
    "duration" bigint,
    "startDateTime" timestamp without time zone,
    "endDateTime" timestamp without time zone,
    "rate" integer,
    "amount" integer,
    "approvalStatus" boolean,
    "paymentStatus" boolean,
    "transactionID" text,
    "rbookingID" integer,
    "venueId" integer NOT NULL
);

--
-- Class ResourceType as table resource_type
--
CREATE TABLE "resource_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Resource as table resources
--
CREATE TABLE "resources" (
    "id" serial PRIMARY KEY,
    "name" text,
    "resourceType" json,
    "location" text,
    "quanity" integer,
    "rent" integer
);

--
-- Class Schedule as table schedules
--
CREATE TABLE "schedules" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "createdAt" timestamp without time zone,
    "createdBy" timestamp without time zone,
    "dueDateTime" timestamp without time zone,
    "startDateTime" timestamp without time zone,
    "endDateTime" timestamp without time zone,
    "duration" bigint,
    "recurring" boolean,
    "tillDateTime" timestamp without time zone,
    "interval" bigint,
    "totalCount" integer,
    "status" text NOT NULL,
    "snoozedTo" timestamp without time zone,
    "snoozeCount" integer,
    "stoppedBy" json
);

--
-- Class SermonType as table sermon_type
--
CREATE TABLE "sermon_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Sermon as table sermons
--
CREATE TABLE "sermons" (
    "id" serial PRIMARY KEY,
    "title" text,
    "subTitle" text,
    "addedBy" json,
    "published" boolean,
    "file" json
);

--
-- Class ServiceRoster as table service_rosters
--
CREATE TABLE "service_rosters" (
    "id" serial PRIMARY KEY,
    "member" json NOT NULL,
    "service" json NOT NULL,
    "position" json NOT NULL,
    "availability" integer NOT NULL,
    "_servicesRostersServicesId" integer
);

--
-- Class ServiceType as table service_type
--
CREATE TABLE "service_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Service as table services
--
CREATE TABLE "services" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "type" json,
    "image" bytea,
    "createdAt" timestamp without time zone,
    "createdBy" json
);

--
-- Class Skill as table skill
--
CREATE TABLE "skill" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text,
    "createdAt" timestamp without time zone
);

--
-- Class SmallGroupMember as table small_group_members
--
CREATE TABLE "small_group_members" (
    "id" serial PRIMARY KEY,
    "groupId" integer NOT NULL,
    "memberId" integer NOT NULL,
    "position" json NOT NULL,
    "availablePositonCount" integer NOT NULL
);

--
-- Class SmallGroup as table small_groups
--
CREATE TABLE "small_groups" (
    "id" serial PRIMARY KEY,
    "name" text,
    "description" text,
    "detail" text,
    "type" json
);

--
-- Class VenueBooking as table venue_bookings
--
CREATE TABLE "venue_bookings" (
    "id" serial PRIMARY KEY,
    "createdDateTime" timestamp without time zone,
    "requestedById" integer NOT NULL,
    "duration" bigint,
    "startDateTime" timestamp without time zone,
    "endDateTime" timestamp without time zone,
    "rate" integer,
    "amount" integer,
    "approvalStatus" boolean,
    "paymentStatus" boolean,
    "transactionID" text,
    "vbookingID" integer,
    "venueId" integer NOT NULL,
    "resources" json
);

--
-- Class VenueType as table venue_type
--
CREATE TABLE "venue_type" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text
);

--
-- Class Venue as table venues
--
CREATE TABLE "venues" (
    "id" serial PRIMARY KEY,
    "name" text,
    "venueType" json,
    "location" text,
    "capacity" integer,
    "rent" integer
);

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "chat_rooms" table
--
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_0"
    FOREIGN KEY("_servicesDiscussionsServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "contacts" table
--
ALTER TABLE ONLY "contacts"
    ADD CONSTRAINT "contacts_fk_0"
    FOREIGN KEY("_smallGroupsMembersSmallGroupsId")
    REFERENCES "small_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "contacts"
    ADD CONSTRAINT "contacts_fk_1"
    FOREIGN KEY("_chatRoomsMembersChatRoomsId")
    REFERENCES "chat_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "contacts"
    ADD CONSTRAINT "contacts_fk_2"
    FOREIGN KEY("_sermonsAuthorsSermonsId")
    REFERENCES "sermons"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "contacts"
    ADD CONSTRAINT "contacts_fk_3"
    FOREIGN KEY("_servicesMembersServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "event_group" table
--
ALTER TABLE ONLY "event_group"
    ADD CONSTRAINT "event_group_fk_0"
    FOREIGN KEY("groupId")
    REFERENCES "small_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "event_group"
    ADD CONSTRAINT "event_group_fk_1"
    FOREIGN KEY("eventId")
    REFERENCES "events"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "event_group"
    ADD CONSTRAINT "event_group_fk_2"
    FOREIGN KEY("_eventsEventgroupsEventsId")
    REFERENCES "events"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "event_meetings" table
--
ALTER TABLE ONLY "event_meetings"
    ADD CONSTRAINT "event_meetings_fk_0"
    FOREIGN KEY("meetingId")
    REFERENCES "meetings"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "event_meetings"
    ADD CONSTRAINT "event_meetings_fk_1"
    FOREIGN KEY("eventId")
    REFERENCES "events"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "event_meetings"
    ADD CONSTRAINT "event_meetings_fk_2"
    FOREIGN KEY("_eventsEventmeetingsEventsId")
    REFERENCES "events"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "file_store" table
--
ALTER TABLE ONLY "file_store"
    ADD CONSTRAINT "file_store_fk_0"
    FOREIGN KEY("_servicesFilesServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "meetings" table
--
ALTER TABLE ONLY "meetings"
    ADD CONSTRAINT "meetings_fk_0"
    FOREIGN KEY("_servicesMeetingsServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "members" table
--
ALTER TABLE ONLY "members"
    ADD CONSTRAINT "members_fk_0"
    FOREIGN KEY("contactId")
    REFERENCES "contacts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "members"
    ADD CONSTRAINT "members_fk_1"
    FOREIGN KEY("familyId")
    REFERENCES "families"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "members"
    ADD CONSTRAINT "members_fk_2"
    FOREIGN KEY("_familiesMembersFamiliesId")
    REFERENCES "families"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "resource_bookings" table
--
ALTER TABLE ONLY "resource_bookings"
    ADD CONSTRAINT "resource_bookings_fk_0"
    FOREIGN KEY("requestedById")
    REFERENCES "contacts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "resource_bookings"
    ADD CONSTRAINT "resource_bookings_fk_1"
    FOREIGN KEY("venueId")
    REFERENCES "venues"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "service_rosters" table
--
ALTER TABLE ONLY "service_rosters"
    ADD CONSTRAINT "service_rosters_fk_0"
    FOREIGN KEY("_servicesRostersServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "small_group_members" table
--
ALTER TABLE ONLY "small_group_members"
    ADD CONSTRAINT "small_group_members_fk_0"
    FOREIGN KEY("groupId")
    REFERENCES "small_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "small_group_members"
    ADD CONSTRAINT "small_group_members_fk_1"
    FOREIGN KEY("memberId")
    REFERENCES "contacts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "venue_bookings" table
--
ALTER TABLE ONLY "venue_bookings"
    ADD CONSTRAINT "venue_bookings_fk_0"
    FOREIGN KEY("requestedById")
    REFERENCES "contacts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "venue_bookings"
    ADD CONSTRAINT "venue_bookings_fk_1"
    FOREIGN KEY("venueId")
    REFERENCES "venues"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240319163250170', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240319163250170', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
