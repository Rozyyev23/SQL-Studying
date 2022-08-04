DROP TABLE Students;
DROP TABLE Subject_teacher;
DROP TABLE Subjects;
DROP TABLE Teachers;
DROP TABLE Groups;
CREATE TABLE Groups
("group_id" NUMBER(5),
"Title" VARCHAR(20),
CONSTRAINT "Groups_group id_pk" PRIMARY KEY ("group_id")
);
CREATE TABLE Students
("Student_id" NUMBER(5),
"first_name" VARCHAR2(20),
"last_name" VARCHAR2(20),
"group_id" NUMBER(5),
CONSTRAINT "std_group_fk" FOREIGN KEY ("group_id")
REFERENCES Groups("group_id")
);

CREATE TABLE Subjects
("subject_id" NUMBER(5),
"title" VARCHAR2(25),
CONSTRAINT "sub_subject_id_pk" PRIMARY KEY ("subject_id")
);
CREATE TABLE Teachers
("teacher_id" NUMBER(5),
"First_name" VARCHAR2(25),
"Last_name" VARCHAR2(25),
CONSTRAINT "teach_teacherid_pk" PRIMARY KEY ("teacher_id")
);
CREATE TABLE Subject_teacher
("subject_id" NUMBER(5),
"teacher_id" NUMBER(5),
"group_id" NUMBER(5),
CONSTRAINT "subteach_group_fk" FOREIGN KEY ("group_id")
REFERENCES Groups("group_id"),
CONSTRAINT "subteach_subject_fk" FOREIGN KEY ("subject_id")
REFERENCES Subjects("subject_id"),
CONSTRAINT "subteach_teach_fk" FOREIGN KEY ("teacher_id")
REFERENCES Teachers("teacher_id")
);
INSERT INTO Groups ("group_id", "Title")
VALUES (1,'Beginner');
INSERT INTO Groups ("group_id", "Title")
VALUES (2,'Elementary');
INSERT INTO Groups ("group_id", "Title")
VALUES (3,'Pre-Intermediate');
INSERT INTO Groups ("group_id", "Title")
VALUES (4,'Intermediate');
INSERT INTO Groups ("group_id", "Title")
VALUES (5,'Advanced');
INSERT INTO Students ("Student_id","first_name","last_name","group_id")
VALUES (17,'Daler','Samiev',1);
INSERT INTO Students ("Student_id","first_name","last_name","group_id")
VALUES (9,'Boboniyoz','Khafizov',2);
INSERT INTO Students ("Student_id","first_name","last_name","group_id")
VALUES (3,'Sulton','Abdurakhmanov',3);
INSERT INTO Students ("Student_id","first_name","last_name","group_id")
VALUES (14,'Safar','Niezov',4);
INSERT INTO Students ("Student_id","first_name","last_name","group_id")
VALUES (27,'Ismoil','Umarov',5);
INSERT INTO Subjects ("subject_id","title")
VALUES (34,'Math');
INSERT INTO Subjects ("subject_id","title")
VALUES (43,'Geometry');
INSERT INTO Subjects ("subject_id","title")
VALUES (52,'English language');
INSERT INTO Subjects ("subject_id","title")
VALUES (88,'Russian language');
INSERT INTO Subjects ("subject_id","title")
VALUES (12,'History');
INSERT INTO Teachers ("teacher_id","First_name","Last_name")
VALUES (66,'Pavel','Courtois');
INSERT INTO Teachers ("teacher_id","First_name","Last_name")
VALUES (23,'Vitu','Nun');
INSERT INTO Teachers ("teacher_id","First_name","Last_name")
VALUES (13,'Eremy','Mendy');
INSERT INTO Teachers ("teacher_id","First_name","Last_name")
VALUES (25,'Aaron','Paul');
INSERT INTO Teachers ("teacher_id","First_name","Last_name")
VALUES (100,'Joanne','Rowling');
INSERT INTO Subject_teacher ("subject_id","teacher_id","group_id")
VALUES (34,66,1);
INSERT INTO Subject_teacher ("subject_id","teacher_id","group_id")
VALUES (43,23,2);
INSERT INTO Subject_teacher ("subject_id","teacher_id","group_id")
VALUES (52,13,3);
INSERT INTO Subject_teacher ("subject_id","teacher_id","group_id")
VALUES (88,25,4);
INSERT INTO Subject_teacher ("subject_id","teacher_id","group_id")
VALUES (12,100,5);

