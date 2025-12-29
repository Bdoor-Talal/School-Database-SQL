-- عرض كل الطلاب
SELECT * FROM Students;

-- عرض المواد لكل طالب حسب المستوى والمسار
SELECT s.StudentID, s.StudentName, s.StudentLevel, s.Track, sub.SubjectName
FROM Students s
JOIN Subjects sub ON s.StudentLevel = sub.SubjectsLevel
AND s.Track = sub.Track
ORDER BY s.StudentID;

-- الطلاب المتفوقين في المستوى 6
SELECT s.StudentID, s.StudentName, g.Grade, sub.SubjectName, s.StudentLevel
FROM Students s
JOIN Grades g ON s.StudentID = g.StudentID
JOIN Subjects sub ON g.SubjectID = sub.SubjectID
WHERE s.StudentLevel = 6 AND g.Grade = 100;

--  حساب متوسط وتقريبة لاقرب عدد صحيح لل(GPA) 
SELECT ROUND(AVG(GPA), 0) AS Avg_GPA
FROM Students;

-- الطلاب الذين يبدأ اسمهم بحرف A
SELECT * FROM Students
WHERE StudentName LIKE 'A%';

-- عرض المواد بحيث يكون الحرف الأول كبير (تحويل كل الحروف للأحرف الكبيرة) 
SELECT UPPER(SubjectName) AS SubjectName
FROM Subjects;

-- استعلام يظهر عدد الطلاب في المستوى 2
SELECT COUNT(*) AS StudentCount
FROM Students
WHERE StudentLevel = 2;

