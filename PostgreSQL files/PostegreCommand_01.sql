CREATE TABLE "episodes" (
  "episodeID" INT PRIMARY KEY,
  "title" char,
  "airMonth" char,
  "airDate" varchar,
  "season" INT,
  "episode" INT
);

CREATE TABLE "colors" (
  "colorID" INT PRIMARY KEY,
  "colorName" varchar,
  "hexCode" varchar
);

CREATE TABLE "subjects" (
  "subjectID" INT PRIMARY KEY,
  "subjectName" VARCHAR
);

CREATE TABLE "episode_colors" (
  "episodeID" int,
  "colorID" int[]
);

CREATE TABLE "episode_subjects" (
  "episodeID" INT,
  "subjectID" INT[]
);

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("colorID") REFERENCES "colors" ("colorID");

ALTER TABLE "episode_subject" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");

ALTER TABLE "episode_subject" ADD FOREIGN KEY ("subjectID") REFERENCES "subjects" ("subjectID");
