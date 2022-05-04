CREATE USER 'admin '@'localhost' identified by '';
GRANT all PRIVILEGES on crddms.* to 'admin'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'student'@'localhost' identified by '';
GRANT SELECT on crdbms.view_student to 'student'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'teacher'@'localhost' identified by '';
GRANT SELECT on crdbms.view_student to 'teacher'@'localhost';
GRANT SELECT on crdbms.vtbsyllabus to 'teachert'@'localhost';
FLUSH PRIVILEGES;																				

updete tbemployee
set emp_firstname = 'สมเกียจ'
where emp_id = 1;

revoke select on crdbms.view_student from 'student'@'localhost';