-- Active: 1747835496638@@127.0.0.1@5432@ph

CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    fist_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INTEGER,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (fist_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('Ayan', 'Rahman', 18, 'A+', 'Computer Science', 'ayan.rahman@example.com', '2007-03-15', 'O+', 'Bangladesh'),
('Mira', 'Hossain', 19, 'A', 'Mathematics', 'mira.hossain@example.com', '2006-07-22', 'A+', 'Bangladesh'),
('Zahid', 'Khan', 20, 'B+', 'Physics', 'zahid.khan@example.com', '2005-12-05', 'B+', 'India'),
('Sara', 'Akter', 18, 'A-', 'Biology', 'sara.akter@example.com', '2007-01-30', 'A-', 'Bangladesh'),
('Nabil', 'Hassan', 21, 'B', 'Chemistry', 'nabil.hassan@example.com', '2004-09-10', 'O-', 'Pakistan'),
('Farah', 'Jahan', 20, 'C+', 'Economics', 'farah.jahan@example.com', '2005-06-18', 'B-', 'Nepal'),
('Rafi', 'Chowdhury', 22, 'B-', 'Accounting', 'rafi.chowdhury@example.com', '2003-11-02', 'AB+', 'Bangladesh'),
('Tania', 'Sultana', 19, 'A', 'English Literature', 'tania.sultana@example.com', '2006-02-12', 'A+', 'Bangladesh'),
('Imran', 'Kabir', 23, 'C', 'Political Science', 'imran.kabir@example.com', '2002-08-09', 'O+', 'Bangladesh'),
('Lima', 'Begum', 18, 'A+', 'History', 'lima.begum@example.com', '2007-04-03', 'AB-', 'Bangladesh'),
('Shuvo', 'Mia', 20, 'B', 'Computer Science', 'shuvo.mia@example.com', '2005-05-20', 'O+', 'Bangladesh'),
('Faria', 'Nahar', 21, 'A', 'Statistics', 'faria.nahar@example.com', '2004-10-15', 'A-', 'Bangladesh'),
('Tanvir', 'Alam', 22, 'B-', 'Physics', 'tanvir.alam@example.com', '2003-07-11', 'B+', 'India'),
('Rita', 'Das', 19, 'B+', 'Philosophy', 'rita.das@example.com', '2006-09-27', 'O-', 'Bangladesh'),
('Arman', 'Sikder', 20, 'A', 'Engineering', 'arman.sikder@example.com', '2005-01-25', 'B+', 'Bangladesh'),
('Shila', 'Rani', 18, 'A-', 'Sociology', 'shila.rani@example.com', '2007-06-06', 'A+', 'Bangladesh'),
('Hasib', 'Uddin', 21, 'C+', 'Chemistry', 'hasib.uddin@example.com', '2004-03-29', 'O+', 'Bangladesh'),
('Nusrat', 'Jahan', 22, 'B', 'Biology', 'nusrat.jahan@example.com', '2003-02-17', 'AB+', 'Bangladesh'),
('Mehedi', 'Hasan', 23, 'B+', 'Finance', 'mehedi.hasan@example.com', '2002-12-01', 'B-', 'Bangladesh'),
('Rupa', 'Khatun', 18, 'A+', 'Law', 'rupa.khatun@example.com', '2007-08-14', 'A+', 'Bangladesh');


-- 1 show all columns
-- SELECT * FROM students;

-- SELECT fist_name, age, email, course from students;

-- 2 custom table name using 'as'
-- SELECT email as "Student Email" from students;

-- 3 show data based on first name assending order
-- SELECT fist_name from students ORDER BY fist_name ASC;

-- 4 show data based on first name dessending order
-- SELECT fist_name from students ORDER BY fist_name DESC;
 
