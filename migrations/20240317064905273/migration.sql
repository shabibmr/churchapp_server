BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "skill" (
    "id" serial PRIMARY KEY,
    "description" text NOT NULL,
    "color" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317064905273', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317064905273', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
