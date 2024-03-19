BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contact" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "suffix" text NOT NULL,
    "phone" text NOT NULL,
    "emailAddress" text NOT NULL,
    "address" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "bloodGroup" text NOT NULL,
    "gender" text NOT NULL,
    "maritalStatus" text NOT NULL,
    "emergencyContactNo" text NOT NULL
);


--
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317090308101', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317090308101', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
