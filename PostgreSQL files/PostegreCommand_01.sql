CREATE TABLE "episodes" (
  "paintingID" integer PRIMARY KEY,
  "title" varchar,
  "date" varchar,
  "season" integer,
  "episode" integer
);

CREATE TABLE "episode_colors" (
  "paintingID" integer PRIMARY KEY,
  "colorsID" integer
);

CREATE TABLE "episode_subjects" (
  "paintingID" integer PRIMARY KEY,
  "subjectID" integer
);

CREATE TABLE "colors" (
  "colorsID" integer PRIMARY KEY,
  "colorName" char,
  "hex" varchar
);

CREATE TABLE "subjects" (
  "subjectID" integer PRIMARY KEY,
  "subjectName" char
);

ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("subjectID") REFERENCES "episodes" ("paintingID");

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("paintingID") REFERENCES "episodes" ("paintingID");

ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("paintingID") REFERENCES "subjects" ("subjectID");

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("paintingID") REFERENCES "colors" ("colorsID");
