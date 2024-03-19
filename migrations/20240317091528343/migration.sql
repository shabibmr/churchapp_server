BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contact_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "group_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "positions" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "resource_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sermon_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "service_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "venue_type" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL
);


--
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317091528343', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317091528343', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
