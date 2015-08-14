CREATE TABLE schools(
  id INTEGER PRIMARY KEY,
  name TEXT,
  rating INTEGER,
  year_established INTEGER
);
CREATE TABLE courses(
  id INTEGER PRIMARY KEY,
  name TEXT,
  school_id INTEGER REFERENCES schools
);
CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);
CREATE TABLE enrollments(
  id INTEGER PRIMARY KEY,
  student_id INTEGER REFERENCES students,
  course_id INTEGER REFERENCES courses
);
