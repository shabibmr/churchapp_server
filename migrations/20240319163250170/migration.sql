BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "organization" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "event_type" CASCADE;

--
-- ACTION CREATE TABLE
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
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "contact_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "contact_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "contacts" ADD COLUMN "_smallGroupsMembersSmallGroupsId" integer;
ALTER TABLE "contacts" ADD COLUMN "_chatRoomsMembersChatRoomsId" integer;
ALTER TABLE "contacts" ADD COLUMN "_sermonsAuthorsSermonsId" integer;
ALTER TABLE "contacts" ADD COLUMN "_servicesMembersServicesId" integer;
ALTER TABLE "contacts" ALTER COLUMN "name" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "suffix" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "dob" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "email" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "address" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "gender" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "bloodGroup" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "emergencyContactNo" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "mobile" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "homePhone" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "officePhone" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "contactType" DROP NOT NULL;
ALTER TABLE "contacts" ALTER COLUMN "profilePic" DROP NOT NULL;
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
-- ACTION CREATE TABLE
--
CREATE TABLE "event_group" (
    "id" serial PRIMARY KEY,
    "groupId" integer NOT NULL,
    "eventId" integer NOT NULL,
    "_eventsEventgroupsEventsId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "event_itenary_items" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "startTime" timestamp without time zone,
    "duration" bigint
);

--
-- ACTION CREATE TABLE
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
-- ACTION CREATE TABLE
--
CREATE TABLE "event_types" (
    "id" serial PRIMARY KEY,
    "description" text,
    "color" text,
    "createdBy" integer,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "events" (
    "id" serial PRIMARY KEY,
    "title" text,
    "description" text,
    "type" json
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "families" ALTER COLUMN "familyName" DROP NOT NULL;
--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "group_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "group_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "positions" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "positions" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "resource_bookings" ALTER COLUMN "createdDateTime" DROP NOT NULL;
ALTER TABLE "resource_bookings" ALTER COLUMN "quanity" DROP NOT NULL;
ALTER TABLE "resource_bookings" ALTER COLUMN "rbookingID" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "resource_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "resource_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "resources" ALTER COLUMN "name" DROP NOT NULL;
ALTER TABLE "resources" ALTER COLUMN "resourceType" DROP NOT NULL;
ALTER TABLE "resources" ALTER COLUMN "location" DROP NOT NULL;
ALTER TABLE "resources" ALTER COLUMN "quanity" DROP NOT NULL;
ALTER TABLE "resources" ALTER COLUMN "rent" DROP NOT NULL;
--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "sermon_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "sermon_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION CREATE TABLE
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
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "service_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "service_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION CREATE TABLE
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
-- ACTION ALTER TABLE
--
ALTER TABLE "skill" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "skill" ALTER COLUMN "color" DROP NOT NULL;
ALTER TABLE "skill" ALTER COLUMN "createdAt" DROP NOT NULL;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "small_group_members" (
    "id" serial PRIMARY KEY,
    "groupId" integer NOT NULL,
    "memberId" integer NOT NULL,
    "position" json NOT NULL,
    "availablePositonCount" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "small_groups" (
    "id" serial PRIMARY KEY,
    "name" text,
    "description" text,
    "detail" text,
    "type" json
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "venue_bookings" ADD COLUMN "resources" json;
ALTER TABLE "venue_bookings" ALTER COLUMN "createdDateTime" DROP NOT NULL;
ALTER TABLE "venue_bookings" ALTER COLUMN "vbookingID" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "venue_type" ALTER COLUMN "description" DROP NOT NULL;
ALTER TABLE "venue_type" ALTER COLUMN "color" DROP NOT NULL;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "venues" ALTER COLUMN "name" DROP NOT NULL;
ALTER TABLE "venues" ALTER COLUMN "venueType" DROP NOT NULL;
ALTER TABLE "venues" ALTER COLUMN "location" DROP NOT NULL;
ALTER TABLE "venues" ALTER COLUMN "capacity" DROP NOT NULL;
ALTER TABLE "venues" ALTER COLUMN "rent" DROP NOT NULL;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_0"
    FOREIGN KEY("_servicesDiscussionsServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "file_store"
    ADD CONSTRAINT "file_store_fk_0"
    FOREIGN KEY("_servicesFilesServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "meetings"
    ADD CONSTRAINT "meetings_fk_0"
    FOREIGN KEY("_servicesMeetingsServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "service_rosters"
    ADD CONSTRAINT "service_rosters_fk_0"
    FOREIGN KEY("_servicesRostersServicesId")
    REFERENCES "services"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
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
