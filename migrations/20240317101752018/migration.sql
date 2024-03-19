BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "contact" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "contact_type" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contact_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contacts" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "suffix" text NOT NULL,
    "dob" timestamp without time zone NOT NULL,
    "email" text NOT NULL,
    "address" text NOT NULL,
    "gender" text NOT NULL,
    "bloodGroup" text NOT NULL,
    "emergencyContactNo" text NOT NULL,
    "mobile" text NOT NULL,
    "homePhone" text NOT NULL,
    "officePhone" text NOT NULL,
    "contactType" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "event_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "resource_bookings" (
    "id" serial PRIMARY KEY,
    "createdDateTime" timestamp without time zone NOT NULL,
    "requestedById" integer NOT NULL,
    "quanity" integer NOT NULL,
    "duration" bigint,
    "startDateTime" timestamp without time zone,
    "endDateTime" timestamp without time zone,
    "rate" integer,
    "amount" integer,
    "approvalStatus" boolean,
    "paymentStatus" boolean,
    "transactionID" text,
    "rbookingID" integer NOT NULL,
    "venueId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "resources" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "resourceType" json NOT NULL,
    "location" text NOT NULL,
    "quanity" integer NOT NULL,
    "rent" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "venue_bookings" (
    "id" serial PRIMARY KEY,
    "createdDateTime" timestamp without time zone NOT NULL,
    "requestedById" integer NOT NULL,
    "duration" bigint,
    "startDateTime" timestamp without time zone,
    "endDateTime" timestamp without time zone,
    "rate" integer,
    "amount" integer,
    "approvalStatus" boolean,
    "paymentStatus" boolean,
    "transactionID" text,
    "vbookingID" integer NOT NULL,
    "venueId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "venues" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "venueType" json NOT NULL,
    "location" text NOT NULL,
    "capacity" integer NOT NULL,
    "rent" integer NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
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
-- ACTION CREATE FOREIGN KEY
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
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317101752018', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317101752018', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
