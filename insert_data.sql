-- بيانات الطلاب
INSERT INTO Students (StudentID, StudentName, Age, StudentLevel, GPA, Gender, Track)
VALUES
(1, 'Ahmad Ali', 15, 1, 95, 'Male', 'Science'),
(2, 'Sara Mohamed', 16, 1, 88, 'Female', 'Arts'),
-- ... جميع الطلاب حتى 60
(60, 'Talia Khalid', 16, 1, 92, 'Female', 'Arts');

-- بيانات المواد
INSERT INTO Subjects (SubjectID, SubjectName, SubjectsLevel, Track)
VALUES
(1, 'Mathematics I', 1, 'Science'),
(2, 'Biology I', 1, 'Science'),
-- ... باقي المواد لكل المسارات
(54, 'Graduation Project - Business', 6, 'Business');

-- درجات الطلاب
INSERT INTO Grades (StudentID, SubjectID, Grade)
VALUES
(1, 1, 92), (1, 2, 85), (1, 3, 78),
(2, 1, 67), (2, 2, 90), (2, 3, 81),
-- ... جميع الدرجات
(60, 1, 91), (60, 2, 77), (60, 3, 90);
