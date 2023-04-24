CREATE TABLE "things"(
    "id" SERIAL PRIMARY KEY,
    "description" TEXT NOT NULL CHECK("description" != ''),
    "createdAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--create new instance
-- INSERT INTO "things"("description") VALUES ('test thing');
--read
-- SELECT * from "things" WHERE "id"=12;
--update
-- UPDATE "things"
-- SET "description" = 'update test'
-- WHERE "id" = 12;
--delete
-- DELETE FROM "things" 
-- WHERE "id" = 12;