BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "contacts" CASCADE;

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
    "contactType" json NOT NULL,
    "profilePic" bytea NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "families" (
    "id" serial PRIMARY KEY,
    "familyName" text NOT NULL,
    "famMemIdx" uuid NOT NULL
);

--
-- ACTION CREATE TABLE
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
-- ACTION CREATE FOREIGN KEY
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
-- MIGRATION VERSION FOR churchapp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('churchapp', '20240317144719730', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317144719730', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
