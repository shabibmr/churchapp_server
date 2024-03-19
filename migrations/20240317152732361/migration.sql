BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "organization" (
    "id" serial PRIMARY KEY,
    "companyName" text NOT NULL,
    "companyAddress" text NOT NULL,
    "taxRegistrationNo" text NOT NULL
);


--
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317152732361', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317152732361', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
