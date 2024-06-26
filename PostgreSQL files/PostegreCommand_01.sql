CREATE TABLE "episodes" (
    "episodeID" INT PRIMARY KEY,
    "title" varchar,
    "airMonth" varchar,
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
    "episodeID" INT,
    "colorID" INT,
    PRIMARY KEY("episodeID", "colorID")
);

ALTER TABLE "episode_colors" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");
ALTER TABLE "episode_colors" ADD FOREIGN KEY ("colorID") REFERENCES "colors" ("colorID");

CREATE TABLE "episode_subjects" (
    "episodeID" INT,
    "subjectID" INT,
    PRIMARY KEY("episodeID", "subjectID")
);

ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("episodeID") REFERENCES "episodes" ("episodeID");
ALTER TABLE "episode_subjects" ADD FOREIGN KEY ("subjectID") REFERENCES "subjects" ("subjectID");