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

CREATE TABLE "episodes_episode_subjects" (
  "episodes_paintingID" integer,
  "episode_subjects_paintingID" integer,
  PRIMARY KEY ("episodes_paintingID", "episode_subjects_paintingID")
);

ALTER TABLE "episodes_episode_subjects" ADD FOREIGN KEY ("episodes_paintingID") REFERENCES "episodes" ("paintingID");

ALTER TABLE "episodes_episode_subjects" ADD FOREIGN KEY ("episode_subjects_paintingID") REFERENCES "episode_subjects" ("paintingID");


CREATE TABLE "episodes_episode_colors" (
  "episodes_paintingID" integer,
  "episode_colors_paintingID" integer,
  PRIMARY KEY ("episodes_paintingID", "episode_colors_paintingID")
);

ALTER TABLE "episodes_episode_colors" ADD FOREIGN KEY ("episodes_paintingID") REFERENCES "episodes" ("paintingID");

ALTER TABLE "episodes_episode_colors" ADD FOREIGN KEY ("episode_colors_paintingID") REFERENCES "episode_colors" ("paintingID");


ALTER TABLE "subjects" ADD FOREIGN KEY ("subjectID") REFERENCES "episode_subjects" ("subjectID");

ALTER TABLE "colors" ADD FOREIGN KEY ("colorsID") REFERENCES "episode_colors" ("paintingID");
