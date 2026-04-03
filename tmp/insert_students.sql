USE best_outgoing;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE academic_records;
DELETE FROM users WHERE role = 'student';
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ARAPUREDDY RAMA RANJITHA', '22a81a0103@sves.org.in', '9398576433', 'student', 'CE', '22A81A0103', '9398576433');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.7, 6.77, 7.69, 7.88, 7.42, 8.12, 7.74, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOLLA RAVI TEJA', '22a81a0106@sves.org.in', '7095337142', 'student', 'CE', '22A81A0106', '7095337142');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.6, 8.38, 8.92, 9.29, 8.33, 9.02, 8.26, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOMMIDI HARSHA PRIYA', '22a81a0107@sves.org.in', '7396110435', 'student', 'CE', '22A81A0107', '7396110435');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 7.77, 8.38, 8.25, 8.14, 8.46, 7.56, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DANGETI KAVYASRI', '22a81a0110@sves.org.in', '7981556235', 'student', 'CE', '22A81A0110', '7981556235');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 6.85, 6.69, 7.59, 7.65, 8.05, 7.74, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DARAPUREDDI RAJESWARI', '22a81a0111@sves.org.in', '9550334625', 'student', 'CE', '22A81A0111', '9550334625');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.37, 7.15, 8.69, 8.29, 8.28, 8.61, 8.74, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDHAM BALA ANUHARIKA', '22a81a0115@sves.org.in', '8919613022', 'student', 'CE', '22A81A0115', '8919613022');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.23, 6.62, 7.38, 7.33, 7.21, 7.35, 7.49, 7.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDIREDDY HEMANTH', '22a81a0117@sves.org.in', '6300229412', 'student', 'CE', '22A81A0117', '6300229412');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.76, 8.23, 8.92, 8.88, 8.67, 9.16, 8.46, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOLUGURI TANUJA', '22a81a0118@sves.org.in', '7569225179', 'student', 'CE', '22A81A0118', '7569225179');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.24, 5.92, 6.31, 7.59, 7.33, 7.67, 7.42, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KALAVAKUNTLA PAVANI DURGA', '22a81a0120@sves.org.in', '8125765299', 'student', 'CE', '22A81A0120', '8125765299');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.36, 8.08, 7.69, 8.53, 8.12, 8.95, 8.39, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOMMIREDDY JAYASRI', '22a81a0122@sves.org.in', '9515585575', 'student', 'CE', '22A81A0122', '9515585575');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.54, 8.77, 8.35, 8.09, 8.88, 8.05, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANNE PUJITA', '22a81a0128@sves.org.in', '9912515727', 'student', 'CE', '22A81A0128', '9912515727');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.3, 6.46, 7.08, 7.35, 7.53, 7.63, 7.21, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MIDATANI SINDHUSHA NAGA SRI', '22a81a0129@sves.org.in', '7337586784', 'student', 'CE', '22A81A0129', '7337586784');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.93, 8.92, 8.92, 9.41, 8.61, 9.58, 8.19, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TARAGALLA YASASRI VENKATA LAKSHMI', '22a81a0141@sves.org.in', '8500058067', 'student', 'CE', '22A81A0141', '8500058067');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.39, 6.46, 7.38, 7.51, 6.79, 7.91, 7.63, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMBATI SURYA CHARAN', '23a85a0102@sves.org.in', '8121643757', 'student', 'CE', '23A85A0102', '8121643757');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, NULL, NULL, 8.35, 8.58, 8.74, 8.12, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMMIREDDI ESWARI DEVI', '23a85a0103@sves.org.in', '9182639275', 'student', 'CE', '23A85A0103', '9182639275');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, NULL, NULL, 8.84, 8.33, 8.51, 8.19, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADHAVARAPU SAI SIVA SANTHOSH BABU', '23a85a0105@sves.org.in', '7386592365', 'student', 'CE', '23A85A0105', '7386592365');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.74, NULL, NULL, 9.18, 8.88, 8.61, 8.39, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NANDURI BHARATH UMA LAKSHMAN', '23a85a0107@sves.org.in', '7013749946', 'student', 'CE', '23A85A0107', '7013749946');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.07, NULL, NULL, 8.43, 7.79, 7.98, 7.63, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NETHALA TEJASWI', '23a85a0108@sves.org.in', '8317676245', 'student', 'CE', '23A85A0108', '8317676245');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.39, NULL, NULL, 9.65, 9.44, 9.58, 9.02, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SARIDE PRASANTH', '23a85a0110@sves.org.in', '8885019667', 'student', 'CE', '23A85A0110', '8885019667');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.88, NULL, NULL, 9.25, 8.61, 9.02, 8.88, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VINUKONDA RAMA SATYANARAYANA', '23a85a0111@sves.org.in', '7815866367', 'student', 'CE', '23A85A0111', '7815866367');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.46, NULL, NULL, 9.14, 8.05, 8.61, 8.12, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANEGONDI TARUN KUMAR', '22a81a0501@sves.org.in', '8309196931', 'student', 'CSE', '22A81A0501', '8309196931');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.47, 8.85, 8.0, 8.94, 8.67, 8.16, 8.09, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BEELLA RUPADEVI', '22a81a0502@sves.org.in', '7672009595', 'student', 'CSE', '22A81A0502', '7672009595');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.84, 9.54, 8.54, 9.06, 8.95, 8.37, 8.72, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BHIMASINGI VENKATESWARA RAO', '22a81a0503@sves.org.in', '9491019773', 'student', 'CSE', '22A81A0503', '9491019773');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.56, 8.92, 9.08, 8.59, 8.33, 8.46, 8.46, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DONGA SANKAR', '22a81a0506@sves.org.in', '7569505631', 'student', 'CSE', '22A81A0506', '7569505631');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.27, 9.31, 8.08, 8.35, 8.61, 7.88, 7.47, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EDUPALLI JESHITHA VENKAT', '22a81a0507@sves.org.in', '9182960108', 'student', 'CSE', '22A81A0507', '9182960108');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.82, 8.62, 6.85, 8.06, 7.49, 7.47, 8.02, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GARAKA TEJASWINI', '22a81a0509@sves.org.in', '6304787664', 'student', 'CSE', '22A81A0509', '6304787664');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.67, 9.23, 9.08, 8.71, 8.46, 8.74, 8.3, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GAVARA SREEJA', '22a81a0510@sves.org.in', '8688363045', 'student', 'CSE', '22A81A0510', '8688363045');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.72, 9.31, 9.38, 8.59, 8.88, 8.39, 8.23, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA MEGHANA', '22a81a0512@sves.org.in', '9398934454', 'student', 'CSE', '22A81A0512', '9398934454');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.92, 8.46, 6.85, 7.94, 7.84, 7.98, 7.98, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('IMMIDISETTI SAI GANESH', '22a81a0513@sves.org.in', '9346797159', 'student', 'CSE', '22A81A0513', '9346797159');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.2, 8.54, 7.54, 8.35, 8.33, 8.39, 7.98, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('INNI TANINKI', '22a81a0514@sves.org.in', '9573653146', 'student', 'CSE', '22A81A0514', '9573653146');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.31, 8.92, 9.06, 9.51, 9.21, 9.37, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAMMILA SAI', '22a81a0516@sves.org.in', '8179077852', 'student', 'CSE', '22A81A0516', '8179077852');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.63, 8.0, 7.54, 7.71, 7.28, 7.84, 7.81, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANAK AGARWAL', '22a81a0517@sves.org.in', '9346857997', 'student', 'CSE', '22A81A0517', '9346857997');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.95, 9.46, 9.23, 9.06, 8.74, 8.88, 8.81, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KILARU KIRAN SRI SAI', '22a81a0520@sves.org.in', '9392642327', 'student', 'CSE', '22A81A0520', '9392642327');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 9.0, 7.92, 8.29, 7.98, 7.47, 8.02, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KURAM SUPREEYA', '22a81a0525@sves.org.in', '8886097298', 'student', 'CSE', '22A81A0525', '8886097298');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.75, 8.31, 6.46, 7.94, 7.56, 8.26, 7.49, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANEPALLI MUKESH CHANDRA RAMA GANESH', '22a81a0529@sves.org.in', '8074034884', 'student', 'CSE', '22A81A0529', '8074034884');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.62, 8.54, 8.65, 8.12, 8.61, 8.26, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDAPATI VENKATA SAI ABHIRAM REDDY', '22a81a0530@sves.org.in', '7702980878', 'student', 'CSE', '22A81A0530', '7702980878');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 8.38, 7.46, 8.23, 7.49, 8.46, 7.81, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADEM JAYASRI', '22a81a0532@sves.org.in', '8019680503', 'student', 'CSE', '22A81A0532', '8019680503');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 8.62, 8.62, 8.53, 8.39, 8.61, 8.3, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANDAPAKA BALAMADHURI', '22a81a0533@sves.org.in', '8074975372', 'student', 'CSE', '22A81A0533', '8074975372');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.95, 7.85, 8.08, 8.59, 7.56, 8.07, 7.53, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDAPATI UMESH ANJAN', '22a81a0534@sves.org.in', '9346307371', 'student', 'CSE', '22A81A0534', '9346307371');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.62, 7.38, 6.77, 8.12, 7.35, 7.86, 7.81, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMAD AAKHIL', '22a81a0535@sves.org.in', '8919928452', 'student', 'CSE', '22A81A0535', '8919928452');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.04, 8.15, 7.15, 8.18, 8.05, 8.49, 8.19, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOLLI LOVARAJU', '22a81a0537@sves.org.in', '7993265890', 'student', 'CSE', '22A81A0537', '7993265890');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 9.0, 7.77, 8.65, 8.67, 8.72, 8.93, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MUCHERLA UMA DEVI', '22a81a0538@sves.org.in', '9346696952', 'student', 'CSE', '22A81A0538', '9346696952');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.92, 7.54, 6.69, 8.35, 7.84, 8.51, 7.88, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAIDU KIRAN MAHESH', '22a81a0539@sves.org.in', '9392774033', 'student', 'CSE', '22A81A0539', '9392774033');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.62, 7.85, 7.31, 7.71, 7.7, 8.21, 7.35, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAKKA SHARMILA', '22a81a0540@sves.org.in', '9912016003', 'student', 'CSE', '22A81A0540', '9912016003');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.07, 9.15, 8.92, 9.06, 8.74, 9.44, 9.35, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALAMATI LAHARI', '22a81a0541@sves.org.in', '9989334599', 'student', 'CSE', '22A81A0541', '9989334599');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.23, 9.08, 9.06, 8.81, 8.88, 9.3, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLA THRISHITHA', '22a81a0542@sves.org.in', '9676717115', 'student', 'CSE', '22A81A0542', '9676717115');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.86, 9.0, 8.54, 8.94, 8.74, 9.3, 8.95, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLA VARSHITHA BANU', '22a81a0543@sves.org.in', '8985547973', 'student', 'CSE', '22A81A0543', '8985547973');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.54, 9.38, 9.18, 9.02, 9.44, 9.16, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NARNI VASANTHI LAKSHMI PRIYA', '22a81a0544@sves.org.in', '7093544020', 'student', 'CSE', '22A81A0544', '7093544020');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.14, 9.85, 9.38, 8.94, 9.02, 9.3, 9.16, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NERUTURI SRAVANI', '22a81a0545@sves.org.in', '9493442866', 'student', 'CSE', '22A81A0545', '9493442866');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.66, 7.85, 6.31, 7.88, 7.14, 7.95, 8.19, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PADALA SAI KANAKA DURGA', '22a81a0546@sves.org.in', '9701749629', 'student', 'CSE', '22A81A0546', '9701749629');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 9.15, 7.77, 8.23, 8.33, 8.65, 8.81, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATSA JNANA VENKATA SATYA SRI', '22a81a0547@sves.org.in', '9494418933', 'student', 'CSE', '22A81A0547', '9494418933');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.29, 9.85, 9.15, 9.65, 9.16, 9.44, 9.3, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PENMETSA SAI PHANEENDRA VARMA', '22a81a0548@sves.org.in', '9182838219', 'student', 'CSE', '22A81A0548', '9182838219');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.95, 9.38, 9.46, 9.23, 9.16, 8.37, 8.95, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PEREPU PUJITHA', '22a81a0549@sves.org.in', '8688079531', 'student', 'CSE', '22A81A0549', '8688079531');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.29, 9.62, 9.69, 9.29, 9.3, 9.35, 9.21, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PINDI MOUNIKA', '22a81a0550@sves.org.in', '9989646255', 'student', 'CSE', '22A81A0550', '9989646255');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 9.08, 8.15, 8.82, 8.26, 8.37, 8.54, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POTHULA LALITHASRIPANI', '22a81a0551@sves.org.in', '9515071459', 'student', 'CSE', '22A81A0551', '9515071459');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.09, 9.54, 9.23, 9.29, 8.95, 8.81, 9.3, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('REDDY KEERTHI YUGASRI', '22a81a0554@sves.org.in', '7799551149', 'student', 'CSE', '22A81A0554', '7799551149');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 8.85, 8.54, 8.59, 8.39, 8.74, 7.79, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SUMA SREE MANDRU', '22a81a0560@sves.org.in', '9063285803', 'student', 'CSE', '22A81A0560', '9063285803');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.82, 9.15, 8.15, 9.29, 8.95, 8.88, 8.58, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('THANGUDU SHANMUKHA RAO', '22a81a0561@sves.org.in', '8712248783', 'student', 'CSE', '22A81A0561', '8712248783');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, 8.69, 8.0, 8.94, 8.61, 8.74, 8.33, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UNGATA YAMINI SAI SRI SUSEELA', '22a81a0563@sves.org.in', '7993692188', 'student', 'CSE', '22A81A0563', '7993692188');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.3, 9.62, 9.54, 9.06, 9.44, 9.56, 9.3, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VALLURI GOWTHAMI RUSHITHA', '22a81a0564@sves.org.in', '9392582344', 'student', 'CSE', '22A81A0564', '9392582344');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.93, 9.15, 8.69, 9.18, 8.74, 8.88, 9.16, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VANGALA MRUDULA', '22a81a0565@sves.org.in', '6281201159', 'student', 'CSE', '22A81A0565', '6281201159');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.46, 8.31, 8.0, 8.35, 8.74, 8.67, 8.74, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERAMALLA VENKATA DURGA PARVATHI', '22a81a0566@sves.org.in', '8121837543', 'student', 'CSE', '22A81A0566', '8121837543');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 8.77, 8.85, 8.71, 8.81, 8.61, 8.61, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADDALA GOPIKA ANJALI', '22a81a0567@sves.org.in', '9347514335', 'student', 'CSE', '22A81A0567', '9347514335');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 8.62, 8.31, 8.43, 9.07, 8.88, 8.67, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANNAPAREDDY PRAVEEN KUMAR', '22a81a0568@sves.org.in', '9866678399', 'student', 'CSE', '22A81A0568', '9866678399');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.65, 7.31, 7.38, 8.0, 7.63, 7.88, 7.63, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANYAM VENKATA NAGA BHAVANI PAVAN KUMAR', '22a81a0569@sves.org.in', '9398585389', 'student', 'CSE', '22A81A0569', '9398585389');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.77, 7.54, 7.72, 7.98, 8.09, 8.54, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BODDETI KUSUMA', '22a81a0572@sves.org.in', '9963870893', 'student', 'CSE', '22A81A0572', '9963870893');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 9.23, 8.31, 8.78, 8.95, 8.74, 8.88, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHEBOLU NAGA PRASANNA', '22a81a0574@sves.org.in', '9490549112', 'student', 'CSE', '22A81A0574', '9490549112');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.84, 8.77, 9.38, 8.86, 8.88, 8.46, 9.16, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHIDARALA DURGAPRASAD', '22a81a0575@sves.org.in', '9618808831', 'student', 'CSE', '22A81A0575', '9618808831');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.59, 8.69, 9.0, 8.94, 8.51, 8.37, 8.54, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DASARI KEERTHI RAJU', '22a81a0577@sves.org.in', '7207466128', 'student', 'CSE', '22A81A0577', '7207466128');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.32, 7.08, 7.31, 7.47, 7.0, 7.6, 6.98, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EDUPALLI SUJITHA', '22a81a0578@sves.org.in', '8121736577', 'student', 'CSE', '22A81A0578', '8121736577');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.38, 8.69, 8.46, 8.78, 8.23, 8.74, 7.49, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EEDARA TEJASWINI', '22a81a0579@sves.org.in', '9392418489', 'student', 'CSE', '22A81A0579', '9392418489');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.21, 9.69, 9.15, 9.41, 9.02, 8.81, 9.3, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDHAM HEMANTH SATYAVENKATA KRISHNAPRASAD', '22a81a0580@sves.org.in', '9652306468', 'student', 'CSE', '22A81A0580', '9652306468');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.81, 8.54, 7.77, 8.2, 7.33, 7.4, 7.47, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GADAMSETTI RAMALAKSHMI', '22a81a0581@sves.org.in', '9059318626', 'student', 'CSE', '22A81A0581', '9059318626');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, 8.69, 8.23, 8.82, 8.26, 8.33, 8.65, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA LOKESH', '22a81a0582@sves.org.in', '7995743710', 'student', 'CSE', '22A81A0582', '7995743710');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, 9.31, 9.08, 9.1, 9.16, 8.74, 8.81, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUDAPATI SAI SATYA GANAPATHI', '22a81a0583@sves.org.in', '9014889933', 'student', 'CSE', '22A81A0583', '9014889933');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 8.31, 8.0, 8.08, 8.19, 7.67, 7.91, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUTTULA SOMA DURGA ARJUN', '22a81a0584@sves.org.in', '7780733677', 'student', 'CSE', '22A81A0584', '7780733677');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 8.38, 8.46, 8.9, 8.61, 8.72, 8.37, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KADIYAM DIVYA BHAVANI', '22a81a0588@sves.org.in', '9515767259', 'student', 'CSE', '22A81A0588', '9515767259');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.89, 9.08, 8.92, 9.02, 8.93, 8.95, 8.54, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAKANI SRIPADHA', '22a81a0589@sves.org.in', '6300889541', 'student', 'CSE', '22A81A0589', '6300889541');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.15, 8.62, 8.71, 7.91, 7.74, 7.88, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARRI JAYA NAGA SRI', '22a81a0591@sves.org.in', '8019231338', 'student', 'CSE', '22A81A0591', '8019231338');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 8.08, 8.31, 8.71, 8.74, 8.72, 8.02, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KESAVARAPU VENKATA SESHA PRASANNA VASAVI', '22a81a0594@sves.org.in', '7981879511', 'student', 'CSE', '22A81A0594', '7981879511');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.87, 9.0, 8.62, 9.1, 9.16, 9.02, 8.74, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMAD JAHEERUNNISA', '22a81a05a0@sves.org.in', '7569826345', 'student', 'CSE', '22A81A05A0', '7569826345');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.13, 9.38, 8.77, 9.18, 9.02, 9.02, 9.16, 9.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POSIMSETTY LEELA SESHA BALAJI', '22a81a05a7@sves.org.in', '8332955678', 'student', 'CSE', '22A81A05A7', '8332955678');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.27, 9.46, 9.38, 8.96, 9.35, 9.16, 9.16, 9.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PESARAGANTI HARSHAVARDHAN', '22a81a05a9@sves.org.in', '9515978355', 'student', 'CSE', '22A81A05A9', '9515978355');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.5, 8.46, 8.54, 8.22, 8.61, 8.58, 8.61, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAMOJU SAI KUMAR', '22a81a05b3@sves.org.in', '9177605366', 'student', 'CSE', '22A81A05B3', '9177605366');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 9.15, 8.15, 8.25, 8.93, 8.51, 8.39, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SADANALA RAJASRI SIVA PRIYA', '22a81a05b4@sves.org.in', '7680011211', 'student', 'CSE', '22A81A05B4', '7680011211');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.03, 9.62, 9.08, 9.41, 9.3, 8.74, 8.54, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SANABOINA VAMSI NAGA SAI', '22a81a05b5@sves.org.in', '8555954068', 'student', 'CSE', '22A81A05B5', '8555954068');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.38, 7.38, 7.15, 7.53, 6.93, 7.33, 7.53, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SANAMANDRA VIJAYKUMAR', '22a81a05b6@sves.org.in', '8008787061', 'student', 'CSE', '22A81A05B6', '8008787061');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, 8.46, 7.69, 8.45, 8.16, 7.4, 7.77, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SHAIK AASHIMA FATHIMA', '22a81a05b7@sves.org.in', '9704924239', 'student', 'CSE', '22A81A05B7', '9704924239');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.85, 7.85, 8.9, 9.16, 8.3, 7.84, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TALLA SRINU', '22a81a05b8@sves.org.in', '7794969377', 'student', 'CSE', '22A81A05B8', '7794969377');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 8.85, 7.31, 8.9, 8.44, 8.3, 8.26, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TARAGALLA LAKSHMI AKHILA SWATHI', '22a81a05c0@sves.org.in', '7989790712', 'student', 'CSE', '22A81A05C0', '7989790712');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.45, 9.69, 9.54, 9.65, 9.72, 9.3, 9.02, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TATAVARTHI RISHI VARUN', '22a81a05c1@sves.org.in', '9347740140', 'student', 'CSE', '22A81A05C1', '9347740140');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.16, 9.46, 8.54, 9.65, 9.02, 9.3, 8.88, 9.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VANKAYALA GANESH SIVA SAI KRISHNA', '22a81a05c5@sves.org.in', '6300260522', 'student', 'CSE', '22A81A05C5', '6300260522');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.28, 8.85, 7.15, 8.47, 7.95, 8.65, 8.33, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VALLURI REETHI', '22a81a05c6@sves.org.in', '7995435659', 'student', 'CSE', '22A81A05C6', '7995435659');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 8.85, 7.46, 8.47, 8.19, 8.37, 8.39, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VELAGALA VARSHA SRI', '22a81a05c8@sves.org.in', '9154972789', 'student', 'CSE', '22A81A05C8', '9154972789');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.6, 8.46, 7.69, 9.0, 8.42, 8.88, 8.67, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VELUGULA HEMANTH', '22a81a05c9@sves.org.in', '9542849956', 'student', 'CSE', '22A81A05C9', '9542849956');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.25, 8.46, 7.08, 8.67, 8.67, 7.88, 8.54, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEMULURI JAYA KANTH', '22a81a05d0@sves.org.in', '9573951246', 'student', 'CSE', '22A81A05D0', '9573951246');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.59, 8.15, 7.0, 7.92, 7.49, 7.33, 7.77, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YADAVALLI LAKSHMI VYSHNAVI', '22a81a05d1@sves.org.in', '6301693123', 'student', 'CSE', '22A81A05D1', '6301693123');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.15, 9.23, 8.92, 9.1, 9.16, 9.3, 9.3, 9.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YALAMARTHI LAHARI', '22a81a05d2@sves.org.in', '6301833679', 'student', 'CSE', '22A81A05D2', '6301833679');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 8.38, 7.15, 8.43, 8.74, 8.61, 8.39, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADABALA UMA SAHITHI', '22a81a05d4@sves.org.in', '9346344262', 'student', 'CSE', '22A81A05D4', '9346344262');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.03, 9.38, 8.77, 9.06, 8.88, 9.02, 9.07, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AKULA MADHURI', '22a81a05d5@sves.org.in', '8341192827', 'student', 'CSE', '22A81A05D5', '8341192827');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, 8.15, 7.0, 8.18, 8.54, 9.16, 8.23, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ARIGELA RAMAKRISHNA VINAYAK', '22a81a05d6@sves.org.in', '9550461464', 'student', 'CSE', '22A81A05D6', '9550461464');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.14, 8.23, 7.38, 8.59, 7.91, 8.46, 8.39, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BODDU JAYANTH PATHRUDU', '22a81a05d9@sves.org.in', '9493422727', 'student', 'CSE', '22A81A05D9', '9493422727');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.1, 7.54, 7.62, 8.1, 8.33, 8.46, 8.05, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHALLA VISHNU VARDHAN', '22a81a05e0@sves.org.in', '8919758517', 'student', 'CSE', '22A81A05E0', '8919758517');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.38, 8.92, 8.94, 9.02, 9.16, 8.88, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHIKKALA VYSHNAVI', '22a81a05e1@sves.org.in', '9390558534', 'student', 'CSE', '22A81A05E1', '9390558534');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.41, 8.38, 7.92, 8.82, 8.39, 8.54, 8.46, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DINDUKURTHI CHATURVED', '22a81a05e4@sves.org.in', '9059632955', 'student', 'CSE', '22A81A05E4', '9059632955');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.08, 7.92, 8.33, 8.05, 8.67, 8.39, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ELIPE MOUNIKA', '22a81a05e5@sves.org.in', '9963129370', 'student', 'CSE', '22A81A05E5', '9963129370');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.11, 9.08, 9.08, 9.22, 9.02, 9.3, 9.3, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANNI MAHITHA LAKSHMI', '22a81a05e6@sves.org.in', '8179542429', 'student', 'CSE', '22A81A05E6', '8179542429');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.12, 9.15, 9.08, 9.29, 9.02, 9.44, 9.3, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GARAKA SNEHA LATHA', '22a81a05e7@sves.org.in', '9502048286', 'student', 'CSE', '22A81A05E7', '9502048286');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.12, 9.54, 8.77, 9.06, 8.88, 9.44, 9.3, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOLUGURI AYYAPPA SRI SAI REDDY', '22a81a05e8@sves.org.in', '9701539868', 'student', 'CSE', '22A81A05E8', '9701539868');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.78, 8.31, 7.31, 8.04, 7.0, 8.05, 8.02, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA VENKATA VARSHINI', '22a81a05e9@sves.org.in', '9912778655', 'student', 'CSE', '22A81A05E9', '9912778655');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.54, 8.92, 8.98, 8.88, 9.02, 8.79, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUNJI MADHU BABU', '22a81a05f1@sves.org.in', '8074440534', 'student', 'CSE', '22A81A05F1', '8074440534');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.55, 8.0, 6.31, 8.16, 7.63, 7.77, 7.56, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('INDUKURI MEGHASINDHU', '22a81a05f3@sves.org.in', '6302032121', 'student', 'CSE', '22A81A05F3', '6302032121');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.03, 9.54, 9.23, 8.86, 9.02, 9.02, 9.35, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOPPULA PAAVANI VENKATA SAI', '22a81a05f4@sves.org.in', '8331872336', 'student', 'CSE', '22A81A05F4', '8331872336');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.96, 9.23, 9.23, 8.71, 8.74, 8.95, 9.3, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANDIKATLA DHARANI', '22a81a05f5@sves.org.in', '8143914511', 'student', 'CSE', '22A81A05F5', '8143914511');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.57, 8.08, 7.38, 8.51, 8.67, 9.09, 9.44, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARRI ANJANI NAGA KOTESWARI', '22a81a05f6@sves.org.in', '6301837306', 'student', 'CSE', '22A81A05F6', '6301837306');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 9.23, 8.31, 8.59, 8.33, 8.88, 9.02, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARRI SAI GOWRY VIKAS REDDY', '22a81a05f7@sves.org.in', '9908059846', 'student', 'CSE', '22A81A05F7', '9908059846');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, 9.0, 8.38, 9.1, 9.16, 9.44, 9.21, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KASINIKOTA VENKAT', '22a81a05f8@sves.org.in', '8374788644', 'student', 'CSE', '22A81A05F8', '8374788644');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.42, 7.77, 6.77, 7.88, 7.07, 7.56, 7.53, 7.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATTA JAYA DURGA PEDDI LAKSHMI', '22a81a05f9@sves.org.in', '9177076673', 'student', 'CSE', '22A81A05F9', '9177076673');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 8.46, 7.85, 8.59, 8.54, 9.44, 9.44, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATTA PALLAVI DURGA YADAV', '22a81a05g0@sves.org.in', '9493043266', 'student', 'CSE', '22A81A05G0', '9493043266');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.28, 9.54, 9.08, 9.41, 9.3, 9.21, 9.72, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTA NAGA MANJUSHA', '22a81a05g2@sves.org.in', '7993327777', 'student', 'CSE', '22A81A05G2', '7993327777');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.86, 9.0, 8.38, 8.82, 8.74, 9.16, 9.44, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MATTA PRATHYUSHA DHANA LAKSHMI', '22a81a05g3@sves.org.in', '9121802399', 'student', 'CSE', '22A81A05G3', '9121802399');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.94, 9.0, 8.54, 9.1, 9.02, 9.16, 9.02, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANDAPATI VIJAYA LAKSHMI', '22a81a05g5@sves.org.in', '6305442259', 'student', 'CSE', '22A81A05G5', '6305442259');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 8.54, 7.31, 8.94, 8.54, 9.16, 9.02, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAREEDU SAIRAM', '22a81a05g6@sves.org.in', '8501890522', 'student', 'CSE', '22A81A05G6', '8501890522');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 9.0, 8.38, 8.59, 8.46, 8.88, 8.67, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMAD AZMATULLA', '22a81a05g8@sves.org.in', '7569512424', 'student', 'CSE', '22A81A05G8', '7569512424');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.63, 9.0, 8.08, 8.71, 8.19, 9.09, 8.88, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMAD RAHIMUNNISA', '22a81a05g9@sves.org.in', '9014022798', 'student', 'CSE', '22A81A05G9', '9014022798');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.14, 9.38, 8.15, 8.59, 7.91, 8.02, 7.84, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MUKKU MOHITH', '22a81a05h1@sves.org.in', '9346370710', 'student', 'CSE', '22A81A05H1', '9346370710');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.47, 8.85, 8.54, 8.71, 8.19, 8.81, 8.26, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NANDAMURI LOKESH SRI ABHIRAM', '22a81a05h2@sves.org.in', '9014953519', 'student', 'CSE', '22A81A05H2', '9014953519');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 8.38, 8.23, 8.86, 8.74, 8.95, 8.19, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NERELLA N S VENKATA SIVA SAI RIHITHA', '22a81a05h4@sves.org.in', '8790150978', 'student', 'CSE', '22A81A05H4', '8790150978');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.31, 9.38, 9.23, 9.41, 9.44, 9.58, 9.44, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLAPOLU SAI MEGHANA', '22a81a05h5@sves.org.in', '9618692300', 'student', 'CSE', '22A81A05H5', '9618692300');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.19, 9.15, 8.69, 9.77, 9.16, 9.3, 9.44, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PANTHAGANI SWEETY', '22a81a05h6@sves.org.in', '9063672646', 'student', 'CSE', '22A81A05H6', '9063672646');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.08, 7.15, 8.23, 8.39, 8.33, 8.09, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PARIMI JNANA SAI', '22a81a05h7@sves.org.in', '6281815552', 'student', 'CSE', '22A81A05H7', '6281815552');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 8.46, 8.31, 9.12, 8.46, 8.61, 8.46, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PAVANI PUNYAMANTHULA', '22a81a05h8@sves.org.in', '7569505926', 'student', 'CSE', '22A81A05H8', '7569505926');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, 9.31, 8.08, 8.94, 7.63, 8.39, 7.98, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PEDAMURTHI KIRANKUMAR', '22a81a05h9@sves.org.in', '9014268313', 'student', 'CSE', '22A81A05H9', '9014268313');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.73, 7.15, 7.31, 7.8, 8.33, 7.67, 7.67, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PRATTI GAYATRI', '22a81a05i2@sves.org.in', '9390561761', 'student', 'CSE', '22A81A05I2', '9390561761');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 8.92, 8.77, 9.06, 8.74, 8.67, 8.09, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAMBHA RASMITHA LEKHA', '22a81a05i6@sves.org.in', '9121487799', 'student', 'CSE', '22A81A05I6', '9121487799');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 8.92, 9.23, 8.94, 9.44, 8.74, 8.95, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAPARLA PRASANNA KUMAR', '22a81a05i7@sves.org.in', '9392693465', 'student', 'CSE', '22A81A05I7', '9392693465');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.37, 9.08, 9.23, 9.18, 10.0, 9.58, 9.3, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SAMUDRALA S S N V RANGA DURGA MAHATHI', '22a81a05i9@sves.org.in', '8500012222', 'student', 'CSE', '22A81A05I9', '8500012222');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.05, 9.08, 8.77, 8.94, 9.3, 9.58, 8.88, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TEKI VIJAYARATNAM', '22a81a05j2@sves.org.in', '8688132605', 'student', 'CSE', '22A81A05J2', '8688132605');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, 8.46, 8.0, 8.16, 8.33, 8.19, 7.56, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TUMMALAPALLI MANIKANTA VINAY', '22a81a05j3@sves.org.in', '9550085889', 'student', 'CSE', '22A81A05J3', '9550085889');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.76, 7.31, 7.31, 8.04, 7.91, 7.84, 7.74, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UMMIDI CHAITANYA SURYA SAI DEEPTHI', '22a81a05j4@sves.org.in', '8143163882', 'student', 'CSE', '22A81A05J4', '8143163882');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.76, 8.77, 8.31, 8.94, 9.02, 9.16, 8.61, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UKKUSURI VENKATA KRISHNA PRASAD', '22a81a05j5@sves.org.in', '9705849347', 'student', 'CSE', '22A81A05J5', '9705849347');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 7.46, 7.38, 7.28, 7.21, 7.7, 7.49, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YARAMOLU LAKSHMI SADWIKA', '22a81a05j7@sves.org.in', '7989968788', 'student', 'CSE', '22A81A05J7', '7989968788');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.46, 8.69, 7.85, 8.35, 8.46, 8.61, 8.88, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YERRAGOLLA BHARGAVI', '22a81a05j8@sves.org.in', '9550223469', 'student', 'CSE', '22A81A05J8', '9550223469');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.64, 8.62, 8.31, 8.53, 8.88, 8.74, 9.16, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ALLU ROHINI JNANA PRASOONA', '22a81a05j9@sves.org.in', '9505268966', 'student', 'CSE', '22A81A05J9', '9505268966');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.38, 8.15, 7.23, 8.35, 8.23, 8.95, 9.02, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANDRA TULASI LAKSHMI TANYA', '22a81a05k0@sves.org.in', '6302601497', 'student', 'CSE', '22A81A05K0', '6302601497');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.24, 9.54, 9.62, 8.94, 9.3, 9.02, 9.44, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ACHANTA MADHUR', '22a81a05k1@sves.org.in', '8712279935', 'student', 'CSE', '22A81A05K1', '8712279935');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.37, 9.54, 9.54, 9.29, 9.44, 9.3, 9.16, 9.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ACHYUTHA DURGA YASASWINI', '22a81a05k2@sves.org.in', '6301189990', 'student', 'CSE', '22A81A05K2', '6301189990');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.3, 9.54, 9.54, 9.18, 9.51, 9.02, 9.3, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANKADI UDAYA SRI', '22a81a05k3@sves.org.in', '8519817259', 'student', 'CSE', '22A81A05K3', '8519817259');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.62, 8.08, 7.88, 8.61, 8.46, 9.02, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('APPASANI JYOTHI PRANEETHA', '22a81a05k4@sves.org.in', '7993863539', 'student', 'CSE', '22A81A05K4', '7993863539');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.38, 8.69, 8.65, 8.74, 9.16, 8.74, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BADAMPUDI SRIYA', '22a81a05k5@sves.org.in', '9502182533', 'student', 'CSE', '22A81A05K5', '9502182533');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 9.08, 9.08, 8.59, 8.67, 8.65, 9.02, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDARU UMA DEVI', '22a81a05k6@sves.org.in', '7075664542', 'student', 'CSE', '22A81A05K6', '7075664542');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 8.62, 8.31, 8.18, 8.46, 8.61, 9.16, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BHUSHI BINNU ANURAGH', '22a81a05k9@sves.org.in', '9393397621', 'student', 'CSE', '22A81A05K9', '9393397621');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.76, 7.23, 7.0, 7.86, 7.7, 7.98, 8.19, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOKKA KUSUMA SRI', '22a81a05l0@sves.org.in', '7207431798', 'student', 'CSE', '22A81A05L0', '7207431798');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.14, 9.38, 8.77, 9.18, 9.07, 9.44, 9.16, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BURILA RAMYA', '22a81a05l1@sves.org.in', '9121553665', 'student', 'CSE', '22A81A05L1', '9121553665');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.76, 8.46, 8.0, 9.06, 8.65, 9.02, 9.37, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHINTAPALLI LOKESH', '22a81a05l2@sves.org.in', '9908872977', 'student', 'CSE', '22A81A05L2', '9908872977');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.19, 9.38, 9.23, 9.53, 9.16, 9.3, 9.16, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DARLA JYOTHSNA', '22a81a05l3@sves.org.in', '9391681988', 'student', 'CSE', '22A81A05L3', '9391681988');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 8.08, 8.77, 8.53, 8.42, 8.88, 8.54, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DASU RAJA GOPAL', '22a81a05l5@sves.org.in', '7036619772', 'student', 'CSE', '22A81A05L5', '7036619772');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.58, 8.0, 6.92, 7.51, 7.56, 7.63, 7.49, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DOPPASANI VENKATESH', '22a81a05l7@sves.org.in', '9110561475', 'student', 'CSE', '22A81A05L7', '9110561475');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.73, 8.0, 7.38, 7.88, 7.56, 7.42, 7.77, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EERLA PREM CHANDU', '22a81a05l9@sves.org.in', '7093790711', 'student', 'CSE', '22A81A05L9', '7093790711');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.77, 7.62, 7.62, 8.45, 7.4, 7.91, 7.84, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GAMINI PAPA RATNA SRI PRAVEENA', '22a81a05m0@sves.org.in', '9963477168', 'student', 'CSE', '22A81A05M0', '9963477168');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.93, 9.54, 8.77, 8.59, 8.88, 9.02, 9.02, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA ANUDEEPIKA', '22a81a05m1@sves.org.in', '9182114749', 'student', 'CSE', '22A81A05M1', '9182114749');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.94, 9.77, 8.69, 9.06, 8.65, 8.74, 9.02, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA SATISH', '22a81a05m2@sves.org.in', '7075753498', 'student', 'CSE', '22A81A05M2', '7075753498');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.15, 7.85, 8.08, 8.12, 7.95, 8.02, 8.33, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAKARLA SUBHASH', '22a81a05m4@sves.org.in', '9550583815', 'student', 'CSE', '22A81A05M4', '9550583815');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.49, 7.62, 6.92, 7.51, 7.33, 7.56, 7.28, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAVALA DHANUSH GOPI', '22a81a05m6@sves.org.in', '6281716735', 'student', 'CSE', '22A81A05M6', '6281716735');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.04, 9.31, 9.0, 8.94, 9.16, 9.16, 8.74, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDEPALLI TRIVENI', '22a81a05n0@sves.org.in', '6305456772', 'student', 'CSE', '22A81A05N0', '6305456772');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.78, 9.46, 8.54, 8.82, 8.88, 8.61, 8.74, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MULLAPUDI APARNA', '22a81a05n2@sves.org.in', '9885849927', 'student', 'CSE', '22A81A05N2', '9885849927');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.92, 9.38, 9.0, 8.82, 8.54, 9.09, 8.61, 9.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAYUDU RATNA SITARA', '22a81a05n4@sves.org.in', '6303915133', 'student', 'CSE', '22A81A05N4', '6303915133');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.75, 8.77, 8.23, 8.71, 8.81, 9.16, 8.61, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('OBHILISETTI DHANUSH', '22a81a05n7@sves.org.in', '9346475931', 'student', 'CSE', '22A81A05N7', '9346475931');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 7.38, 6.62, 8.47, 7.98, 8.33, 8.61, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PACHIGOLLA VENKATA SANDEEP', '22a81a05n8@sves.org.in', '8688213171', 'student', 'CSE', '22A81A05N8', '8688213171');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.22, 7.92, 7.54, 8.65, 7.65, 8.46, 8.74, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PADAMATA PURNASAI', '22a81a05n9@sves.org.in', '8919233703', 'student', 'CSE', '22A81A05N9', '8919233703');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.31, 8.77, 8.69, 8.07, 8.54, 8.88, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLI PALLAVI SATYA', '22a81a05o0@sves.org.in', '8008101249', 'student', 'CSE', '22A81A05O0', '8008101249');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.27, 9.38, 8.92, 9.18, 9.44, 9.44, 9.44, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PEKETI YAJNICA SAI', '22a81a05o1@sves.org.in', '6303050173', 'student', 'CSE', '22A81A05O1', '6303050173');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 8.62, 7.85, 8.12, 8.33, 8.61, 8.74, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PILLA MADHAV GANESH', '22a81a05o2@sves.org.in', '8919420562', 'student', 'CSE', '22A81A05O2', '8919420562');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.79, 7.85, 6.62, 7.59, 7.47, 8.12, 8.23, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POTNURI CHAITANYA', '22a81a05o4@sves.org.in', '6305484994', 'student', 'CSE', '22A81A05O4', '6305484994');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.59, 8.85, 8.92, 8.71, 8.35, 8.3, 8.46, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PULUGU SAKULJI', '22a81a05o5@sves.org.in', '7013567728', 'student', 'CSE', '22A81A05O5', '7013567728');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.15, 7.77, 8.59, 7.98, 8.19, 8.12, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RACHURI HARISH', '22a81a05o7@sves.org.in', '9908545726', 'student', 'CSE', '22A81A05O7', '9908545726');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, 8.54, 7.85, 8.35, 8.16, 7.6, 8.44, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SADA RAMYA', '22a81a05o8@sves.org.in', '9502391167', 'student', 'CSE', '22A81A05O8', '9502391167');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.08, 8.85, 9.29, 9.02, 9.16, 8.93, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SODIMELLA LAVANYA', '22a81a05p2@sves.org.in', '7013666565', 'student', 'CSE', '22A81A05P2', '7013666565');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.55, 8.92, 7.85, 8.53, 8.72, 8.74, 8.61, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TAMARADA RUPA SARASWATHI', '22a81a05p3@sves.org.in', '7702678743', 'student', 'CSE', '22A81A05P3', '7702678743');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.88, 9.23, 8.46, 8.82, 8.72, 9.37, 8.88, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TANETI RAKESH', '22a81a05p4@sves.org.in', '8466858878', 'student', 'CSE', '22A81A05P4', '8466858878');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, 8.46, 8.46, 8.47, 8.37, 8.74, 8.61, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UKKUSURI SIVA KRISHNA', '22a81a05p6@sves.org.in', '8374527123', 'student', 'CSE', '22A81A05P6', '8374527123');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, 8.38, 8.0, 7.92, 7.91, 8.61, 8.23, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UNGARALA LEELA KRISHNA MANIKANTA', '22a81a05p7@sves.org.in', '8074322939', 'student', 'CSE', '22A81A05P7', '8074322939');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.2, 8.38, 7.62, 8.59, 8.49, 8.46, 8.12, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VAJHULA JAHNAVI SRIVALLI', '22a81a05p8@sves.org.in', '6303431118', 'student', 'CSE', '22A81A05P8', '6303431118');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.92, 8.54, 7.92, 7.08, 7.74, 8.46, 7.81, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VASA BABY PRANEETHA', '22a81a05p9@sves.org.in', '9032636196', 'student', 'CSE', '22A81A05P9', '9032636196');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.46, 7.54, 8.06, 7.88, 8.26, 8.3, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VATHUMILLI LAKSHMI SRI SAI GANESH', '22a81a05q0@sves.org.in', '8008149866', 'student', 'CSE', '22A81A05Q0', '8008149866');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.26, 9.0, 8.23, 8.23, 7.84, 8.46, 8.51, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERAMALLU HARIKA SRI', '22a81a05q1@sves.org.in', '8125627996', 'student', 'CSE', '22A81A05Q1', '8125627996');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.83, 8.38, 7.38, 7.94, 7.4, 8.02, 7.98, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEGIREDDY GAGAN VAISHNAV TEJ', '22a81a05q2@sves.org.in', '9347974737', 'student', 'CSE', '22A81A05Q2', '9347974737');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.64, 9.0, 8.69, 8.78, 8.67, 8.88, 8.46, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YANDAMURI LIKHITA SAI', '22a81a05q4@sves.org.in', '8074607919', 'student', 'CSE', '22A81A05Q4', '8074607919');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.88, 9.54, 8.54, 8.71, 9.07, 9.23, 9.02, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BURADA DAAKSHINYA', '23a85a0501@sves.org.in', '8639436070', 'student', 'CSE', '23A85A0501', '8639436070');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.48, NULL, NULL, 8.47, 8.61, 8.51, 8.61, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDI GEETHA SRILAKSHMI', '23a85a0502@sves.org.in', '9000278936', 'student', 'CSE', '23A85A0502', '9000278936');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, NULL, NULL, 9.18, 8.88, 8.86, 9.58, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAICHARLA VANI ISWARYA', '23a85a0503@sves.org.in', '9391232049', 'student', 'CSE', '23A85A0503', '9391232049');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, NULL, NULL, 8.82, 8.95, 9.16, 9.3, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAMMILI MANOJ VAMSI', '23a85a0504@sves.org.in', '9398049662', 'student', 'CSE', '23A85A0504', '9398049662');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, NULL, NULL, 8.59, 8.26, 8.72, 8.3, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAMIREDDY NAVANEETH', '23a85a0508@sves.org.in', '8074489477', 'student', 'CSE', '23A85A0508', '8074489477');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.02, NULL, NULL, 7.88, 7.98, 8.09, 8.39, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANCHARLA SRI NAGA SURYA SATYA SAI HEMANTH', '23a85a0509@sves.org.in', '9618293059', 'student', 'CSE', '23A85A0509', '9618293059');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.52, NULL, NULL, 7.35, 7.35, 7.74, 7.56, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YERRA LALITHA', '23a85a0513@sves.org.in', '9392996091', 'student', 'CSE', '23A85A0513', '9392996091');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.78, NULL, NULL, 7.71, 7.49, 7.47, 7.91, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AGARTHI VENKATA RAMANA', '23a85a0514@sves.org.in', '8686645005', 'student', 'CSE', '23A85A0514', '8686645005');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, NULL, NULL, 7.98, 7.63, 8.12, 8.37, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHERUKU VEERA VENKATA DURGA LAKSHMI', '23a85a0515@sves.org.in', '6300209727', 'student', 'CSE', '23A85A0515', '6300209727');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, NULL, NULL, 7.47, 7.35, 8.26, 8.19, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DWARAMPUDI SAI PAVAN MANIKANTAN REDDY', '23a85a0516@sves.org.in', '9014786685', 'student', 'CSE', '23A85A0516', '9014786685');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.42, NULL, NULL, 7.28, 7.42, 7.12, 6.91, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SOMA AMRUTHA VARSHINI', '23a85a0518@sves.org.in', '9390697594', 'student', 'CSE', '23A85A0518', '9390697594');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.41, NULL, NULL, 8.18, 8.26, 8.46, 8.54, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ABBABATHULA SIRISHA', '23a85a0520@sves.org.in', '9391955329', 'student', 'CSE', '23A85A0520', '9391955329');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.04, NULL, NULL, 7.59, 7.77, 8.19, 8.23, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DODDA BHAVANA VAISHNAVI', '23a85a0522@sves.org.in', '9908002569', 'student', 'CSE', '23A85A0522', '9908002569');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.44, NULL, NULL, 8.23, 8.14, 8.54, 8.51, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ELIGANTI BALA KRISHNA', '23a85a0523@sves.org.in', '8978819688', 'student', 'CSE', '23A85A0523', '8978819688');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.82, NULL, NULL, 8.04, 7.3, 8.05, 7.74, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NEELAM UMA VENKATA NAGA RAJU', '23a85a0525@sves.org.in', '9392511479', 'student', 'CSE', '23A85A0525', '9392511479');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.68, NULL, NULL, 7.88, 7.12, 7.0, 7.81, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AJAY VARDHAN BALINA', '22a81a0401@sves.org.in', '9849966697', 'student', 'ECE', '22A81A0401', '9849966697');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, 8.54, 8.38, 8.33, 8.12, 8.65, 8.39, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMJURI SOWMYA SRI', '22a81a0403@sves.org.in', '9492920461', 'student', 'ECE', '22A81A0403', '9492920461');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, 8.46, 8.54, 7.94, 7.56, 8.65, 8.09, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDUCHODE SHANVITH SAI', '22a81a0404@sves.org.in', '7013227750', 'student', 'ECE', '22A81A0404', '7013227750');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.59, 8.15, 7.77, 8.1, 7.35, 8.09, 7.49, 6.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOMMA LEELA SRI SINDHU', '22a81a0406@sves.org.in', '7995889161', 'student', 'ECE', '22A81A0406', '7995889161');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.84, 8.54, 8.08, 7.63, 7.42, 7.88, 7.81, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BORRA RAMANJALI', '22a81a0407@sves.org.in', '8179474231', 'student', 'ECE', '22A81A0407', '8179474231');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.94, 9.46, 8.85, 8.43, 8.88, 9.44, 9.02, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BURUGUPALLI SINDHU', '22a81a0408@sves.org.in', '9346418624', 'student', 'ECE', '22A81A0408', '9346418624');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.03, 8.62, 7.69, 7.82, 8.05, 8.23, 8.09, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHITROJU YASASWINI KEERTHI', '22a81a0411@sves.org.in', '9885465529', 'student', 'ECE', '22A81A0411', '9885465529');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.38, 7.46, 7.62, 7.28, 7.42, 7.74, 7.28, 6.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EPI THANISHKA', '22a81a0417@sves.org.in', '9133922748', 'student', 'ECE', '22A81A0417', '9133922748');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.02, 8.31, 8.15, 7.63, 7.42, 8.74, 8.46, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDROTHU BHAVANI', '22a81a0418@sves.org.in', '9121475339', 'student', 'ECE', '22A81A0418', '9121475339');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.64, 7.38, 8.31, 7.18, 7.35, 8.12, 7.63, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATAM DINESH ROY', '22a81a0426@sves.org.in', '7331136079', 'student', 'ECE', '22A81A0426', '7331136079');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.96, 8.23, 7.77, 7.47, 8.26, 8.16, 7.77, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KESANAKURTHI SANTHI', '22a81a0427@sves.org.in', '8790986182', 'student', 'ECE', '22A81A0427', '8790986182');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 8.92, 8.92, 8.49, 7.98, 8.81, 8.67, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANIKIREDDY SATISH', '22a81a0436@sves.org.in', '6301007676', 'student', 'ECE', '22A81A0436', '6301007676');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, 7.69, 8.46, 8.06, 7.88, 8.81, 7.91, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALAM SATHVIKA', '22a81a0441@sves.org.in', '6304062936', 'student', 'ECE', '22A81A0441', '6304062936');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.64, 8.08, 7.85, 7.28, 7.77, 7.77, 7.77, 7.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NUNNA V N P L MEGHAMALA', '22a81a0442@sves.org.in', '9866141504', 'student', 'ECE', '22A81A0442', '9866141504');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 8.92, 9.23, 8.71, 8.46, 9.44, 8.88, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PAKALAPATI MOUNIKA LAKSHMI', '22a81a0443@sves.org.in', '9346422248', 'student', 'ECE', '22A81A0443', '9346422248');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 8.23, 7.92, 7.06, 7.28, 7.67, 7.77, 6.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POLISETTY MOUNICA SURYA DURGA NAGA SREE', '22a81a0447@sves.org.in', '8247523131', 'student', 'ECE', '22A81A0447', '8247523131');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.4, 8.54, 8.69, 8.33, 8.54, 8.74, 8.65, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RATNALA PAPA', '22a81a0449@sves.org.in', '7569509557', 'student', 'ECE', '22A81A0449', '7569509557');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.06, 9.38, 9.54, 9.12, 8.95, 8.95, 9.09, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ROHITHA YERRA', '22a81a0451@sves.org.in', '7286970144', 'student', 'ECE', '22A81A0451', '7286970144');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.7, 9.15, 9.15, 8.61, 8.74, 8.74, 8.54, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SHAIK RAJIYA', '22a81a0453@sves.org.in', '8374324633', 'student', 'ECE', '22A81A0453', '8374324633');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.69, 9.0, 9.38, 9.06, 8.05, 8.61, 8.86, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TULA DEEPIKA', '22a81a0457@sves.org.in', '8074277119', 'student', 'ECE', '22A81A0457', '8074277119');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.33, 7.31, 7.38, 7.04, 6.98, 8.19, 7.95, 6.56, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VAMISETTI DHANESH', '22a81a0461@sves.org.in', '7794058703', 'student', 'ECE', '22A81A0461', '7794058703');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.74, 7.54, 8.0, 7.53, 7.26, 8.33, 7.98, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YADADA VARSHINI', '22a81a0464@sves.org.in', '9391939425', 'student', 'ECE', '22A81A0464', '9391939425');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.61, 8.77, 8.62, 8.35, 8.46, 9.23, 8.67, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AKASAPU KALYANI', '22a81a0467@sves.org.in', '7287851677', 'student', 'ECE', '22A81A0467', '7287851677');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.78, 9.08, 8.85, 8.94, 8.51, 9.02, 9.3, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BELLANI BALA GOWTHAMI', '22a81a0471@sves.org.in', '9542328541', 'student', 'ECE', '22A81A0471', '9542328541');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.38, 9.0, 7.8, 7.81, 8.72, 8.16, 6.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHEKURI JAGADEESH VARMA', '22a81a0474@sves.org.in', '8688775567', 'student', 'ECE', '22A81A0474', '8688775567');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.59, 8.46, 8.0, 7.55, 6.86, 8.05, 7.67, 6.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DIDDE AJAY KUMAR', '22a81a0477@sves.org.in', '8688753586', 'student', 'ECE', '22A81A0477', '8688753586');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.45, 9.15, 9.0, 8.45, 7.91, 8.74, 8.33, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ELIPE JYOTHIRMAYEE SNEHALATHA', '22a81a0478@sves.org.in', '9441994077', 'student', 'ECE', '22A81A0478', '9441994077');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.26, 8.92, 8.08, 8.47, 8.33, 8.39, 8.3, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GAJJANA GEETANJALI', '22a81a0479@sves.org.in', '6305064354', 'student', 'ECE', '22A81A0479', '6305064354');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.83, 9.23, 8.77, 8.88, 8.37, 9.44, 9.09, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANAPAVARAPU ANUSHA', '22a81a0480@sves.org.in', '6281271123', 'student', 'ECE', '22A81A0480', '6281271123');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 7.77, 7.38, 7.18, 7.47, 8.19, 7.33, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GAYATHRI UNNAMATLA', '22a81a0482@sves.org.in', '8008853136', 'student', 'ECE', '22A81A0482', '8008853136');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 8.69, 8.92, 8.98, 8.88, 9.28, 9.3, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GIDDA LAHARI', '22a81a0483@sves.org.in', '6304188234', 'student', 'ECE', '22A81A0483', '6304188234');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.99, 7.69, 8.92, 7.77, 7.42, 8.12, 8.51, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GORLI SRIKANTH', '22a81a0484@sves.org.in', '8247455874', 'student', 'ECE', '22A81A0484', '8247455874');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, 8.92, 8.46, 8.8, 7.67, 8.79, 8.02, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('INDALA SRINIVAS', '22a81a0486@sves.org.in', '9346525595', 'student', 'ECE', '22A81A0486', '9346525595');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.96, 9.08, 8.38, 8.06, 7.49, 7.88, 7.95, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JADDU YAMUNA NAGA DEEPTHI', '22a81a0487@sves.org.in', '7396317003', 'student', 'ECE', '22A81A0487', '7396317003');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 8.69, 9.23, 8.9, 8.51, 9.09, 8.54, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KALAGARA ESWARI VENKATA DEEPIKA', '22a81a0488@sves.org.in', '6304834930', 'student', 'ECE', '22A81A0488', '6304834930');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, 7.85, 7.38, 7.67, 8.61, 8.39, 8.3, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KADALI UDAY KIRAN', '22a81a0489@sves.org.in', '8074553625', 'student', 'ECE', '22A81A0489', '8074553625');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.21, 9.23, 8.85, 7.96, 7.84, 8.39, 8.12, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATTUNGA PAVAN SAI', '22a81a0492@sves.org.in', '9346860273', 'student', 'ECE', '22A81A0492', '9346860273');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.17, 8.38, 7.77, 7.98, 7.95, 8.51, 8.09, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOKKIRIPATI SAILAJA', '22a81a0493@sves.org.in', '9059736089', 'student', 'ECE', '22A81A0493', '9059736089');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 9.15, 8.46, 8.33, 8.39, 8.67, 8.44, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTTADA SANDEEP', '22a81a0496@sves.org.in', '9908060957', 'student', 'ECE', '22A81A0496', '9908060957');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.89, 8.23, 7.69, 7.77, 7.74, 8.33, 7.67, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOVVURI SIRI', '22a81a0498@sves.org.in', '9493756499', 'student', 'ECE', '22A81A0498', '9493756499');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.62, 7.92, 8.18, 8.19, 8.54, 8.3, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANCHINA PURUSHOTTAM SAI SANKAR', '22a81a0499@sves.org.in', '9121479234', 'student', 'ECE', '22A81A0499', '9121479234');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.28, 8.15, 6.85, 7.43, 7.19, 7.6, 7.26, 6.56, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MALLIPUDI SIVA KRISHNAMA RAJU', '22a81a04a2@sves.org.in', '9391357807', 'student', 'ECE', '22A81A04A2', '9391357807');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 6.91, 7.92, 7.23, 6.76, 6.7, 7.12, 6.77, 6.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANDELA VYSHNAVI DEVI', '22a81a04a3@sves.org.in', '9502453119', 'student', 'ECE', '22A81A04A3', '9502453119');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.63, 8.92, 8.23, 8.57, 8.54, 8.86, 8.88, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLAMILLI LEHYA SRI VENKATA HARSHITHA', '22a81a04a6@sves.org.in', '8688225119', 'student', 'ECE', '22A81A04A6', '8688225119');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.03, 8.77, 7.92, 8.1, 7.56, 8.44, 8.44, 7.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NANDYALA BHASKARA SATYA SAI VARMA', '22a81a04a7@sves.org.in', '9493268458', 'student', 'ECE', '22A81A04A7', '9493268458');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.24, 8.69, 8.85, 8.35, 7.81, 8.61, 7.67, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PASUPULETI KUSUMA NAGA SAI SAHITI', '22a81a04a8@sves.org.in', '9392538374', 'student', 'ECE', '22A81A04A8', '9392538374');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 8.85, 8.69, 8.94, 8.37, 9.02, 8.33, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLI ESWAR SUBHASH', '22a81a04b1@sves.org.in', '9502622477', 'student', 'ECE', '22A81A04B1', '9502622477');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.25, 7.77, 7.46, 6.88, 7.12, 7.63, 6.98, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PASUPULETI KUSUMA SATYA SAI JYOTHI', '22a81a04b3@sves.org.in', '9000746151', 'student', 'ECE', '22A81A04B3', '9000746151');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.91, 8.15, 8.0, 8.22, 8.16, 7.74, 7.47, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATTAPU YASASWI', '22a81a04b4@sves.org.in', '8019672368', 'student', 'ECE', '22A81A04B4', '8019672368');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.29, 8.31, 8.62, 8.06, 8.33, 8.95, 8.16, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PENNADA SINDHU', '22a81a04b5@sves.org.in', '9014621288', 'student', 'ECE', '22A81A04B5', '9014621288');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.47, 8.54, 8.46, 8.51, 8.61, 8.81, 8.44, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POLUMATI SHANTHI PRIYA', '22a81a04b7@sves.org.in', '7032609863', 'student', 'ECE', '22A81A04B7', '7032609863');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.78, 8.54, 7.38, 7.59, 7.33, 7.95, 8.23, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PONNADA LEELA VENKATESH', '22a81a04b8@sves.org.in', '9392746816', 'student', 'ECE', '22A81A04B8', '9392746816');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.31, 7.77, 6.92, 7.28, 7.12, 7.7, 7.33, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POTHUREDDYPALLI LAVANYA', '22a81a04c0@sves.org.in', '9392745610', 'student', 'ECE', '22A81A04C0', '9392745610');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.77, 8.69, 7.94, 7.7, 8.26, 7.74, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAYI MAHESH SURYA', '22a81a04c2@sves.org.in', '8374111134', 'student', 'ECE', '22A81A04C2', '8374111134');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.79, 8.15, 8.08, 7.65, 7.56, 7.88, 7.67, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SATTI MADHU SUDHANA REDDY', '22a81a04c4@sves.org.in', '7382287989', 'student', 'ECE', '22A81A04C4', '7382287989');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.78, 9.38, 9.23, 8.9, 8.37, 8.88, 8.61, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SUNKAVALLI SUSMITHA', '22a81a04c7@sves.org.in', '9390630155', 'student', 'ECE', '22A81A04C7', '9390630155');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.69, 8.77, 8.86, 8.19, 8.65, 8.54, 8.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UNDAVALLI LAVANYA', '22a81a04c9@sves.org.in', '6301860398', 'student', 'ECE', '22A81A04C9', '6301860398');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.26, 8.54, 8.62, 7.94, 8.05, 8.65, 8.39, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UPPALA MANASA LAKSHMI', '22a81a04d0@sves.org.in', '9346385909', 'student', 'ECE', '22A81A04D0', '9346385909');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.36, 8.85, 8.92, 8.14, 8.26, 8.39, 8.33, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BATCHA HEMANTH', '22a81a04d7@sves.org.in', '9392033204', 'student', 'ECE', '22A81A04D7', '9392033204');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.97, 7.92, 8.23, 8.1, 7.98, 8.54, 7.74, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOKKA SAI MOULIKA', '22a81a04d9@sves.org.in', '8328201279', 'student', 'ECE', '22A81A04D9', '8328201279');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.28, 7.54, 6.92, 7.57, 7.19, 7.74, 7.26, 6.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOLLIPO AMMULU', '22a81a04e0@sves.org.in', '8977434605', 'student', 'ECE', '22A81A04E0', '8977434605');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.85, 8.85, 8.38, 9.06, 8.88, 9.3, 9.02, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BORA ASHOK', '22a81a04e1@sves.org.in', '8247640537', 'student', 'ECE', '22A81A04E1', '8247640537');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.42, 7.38, 7.38, 7.75, 7.14, 7.95, 6.91, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHILAKA TIRUMALA BHASKAR', '22a81a04e4@sves.org.in', '6281683818', 'student', 'ECE', '22A81A04E4', '6281683818');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.39, 7.08, 7.38, 7.49, 6.91, 8.02, 7.74, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DARABOENA UMA SATYA KUMARI', '22a81a04e5@sves.org.in', '8688175988', 'student', 'ECE', '22A81A04E5', '8688175988');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.62, 9.23, 8.62, 8.78, 8.12, 8.81, 9.02, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EDUPALLI HEMA', '22a81a04e7@sves.org.in', '7815859148', 'student', 'ECE', '22A81A04E7', '7815859148');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.89, 9.23, 9.62, 9.18, 8.33, 9.02, 8.88, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GADI SUSHMA', '22a81a04e8@sves.org.in', '7032942353', 'student', 'ECE', '22A81A04E8', '7032942353');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.33, 8.62, 7.69, 8.57, 7.6, 9.09, 8.74, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANTA MANIKANTA VENKATA SATYA GANESH', '22a81a04e9@sves.org.in', '7893791378', 'student', 'ECE', '22A81A04E9', '7893791378');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.84, 7.92, 8.0, 7.86, 7.19, 8.02, 8.16, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOLLAPALLI AISHWARYA', '22a81a04f0@sves.org.in', '9346762049', 'student', 'ECE', '22A81A04F0', '9346762049');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.92, 8.23, 7.54, 7.55, 7.53, 8.44, 8.19, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUBBALA YAMINI', '22a81a04f1@sves.org.in', '9502624264', 'student', 'ECE', '22A81A04F1', '9502624264');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 7.77, 7.69, 7.94, 7.47, 8.72, 8.67, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUDALA GANESH', '22a81a04f2@sves.org.in', '9951699635', 'student', 'ECE', '22A81A04F2', '9951699635');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 9.0, 8.77, 8.59, 8.19, 9.16, 8.54, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUNDAY SUKUMAR', '22a81a04f4@sves.org.in', '8688780887', 'student', 'ECE', '22A81A04F4', '8688780887');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 9.23, 8.54, 8.35, 8.05, 8.46, 7.91, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARANAM SANTHA KUMARI', '22a81a04f6@sves.org.in', '7093776366', 'student', 'ECE', '22A81A04F6', '7093776366');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.28, 9.23, 8.77, 7.9, 7.33, 8.46, 8.61, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATAM LILLY GRACE', '22a81a04f8@sves.org.in', '8247751755', 'student', 'ECE', '22A81A04F8', '8247751755');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.2, 8.31, 8.46, 8.39, 7.49, 8.67, 8.12, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATTUNGA LASYA SREE', '22a81a04f9@sves.org.in', '9014517749', 'student', 'ECE', '22A81A04F9', '9014517749');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 9.46, 8.54, 8.71, 8.23, 9.16, 8.74, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOMMURI UMA DEVI', '22a81a04g1@sves.org.in', '7093156913', 'student', 'ECE', '22A81A04G1', '7093156913');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.38, 8.77, 8.46, 8.02, 7.81, 8.81, 8.58, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONDROTHU CHANDRASHEKHAR', '22a81a04g3@sves.org.in', '9391040510', 'student', 'ECE', '22A81A04G3', '9391040510');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.55, 8.69, 8.92, 8.49, 8.61, 9.3, 8.19, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTIPALLI IKYATA', '22a81a04g5@sves.org.in', '8121226375', 'student', 'ECE', '22A81A04G5', '8121226375');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 9.23, 8.85, 8.33, 7.49, 8.54, 8.46, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MATURI R S S BHASKARA GUPTA', '22a81a04g6@sves.org.in', '9398193636', 'student', 'ECE', '22A81A04G6', '9398193636');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.13, 8.38, 8.69, 7.8, 7.42, 8.26, 8.33, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDIPATI DEVI PRASANNA', '22a81a04g7@sves.org.in', '6303036303', 'student', 'ECE', '22A81A04G7', '6303036303');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.36, 8.92, 8.08, 8.29, 7.19, 9.14, 8.88, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAMIDI KIRANMAYI', '22a81a04g8@sves.org.in', '9492579433', 'student', 'ECE', '22A81A04G8', '9492579433');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.69, 8.46, 8.31, 7.98, 8.67, 8.81, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANNEM SAI GOPI', '22a81a04g9@sves.org.in', '6304104836', 'student', 'ECE', '22A81A04G9', '6304104836');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.31, 8.08, 7.8, 7.98, 8.16, 8.33, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLAMILLI SRI MAHALAKSHMI', '22a81a04h4@sves.org.in', '8500456827', 'student', 'ECE', '22A81A04H4', '8500456827');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 8.85, 8.08, 7.92, 8.19, 8.95, 8.67, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PYDIKONDALA SUSHMA', '22a81a04h9@sves.org.in', '7780296635', 'student', 'ECE', '22A81A04H9', '7780296635');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.01, 8.62, 8.54, 7.86, 7.56, 8.67, 7.98, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RANGISETTI KARTHIK', '22a81a04i0@sves.org.in', '7799228593', 'student', 'ECE', '22A81A04I0', '7799228593');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.75, 8.15, 7.92, 7.57, 6.91, 7.77, 7.98, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SANKU SWATHI', '22a81a04i2@sves.org.in', '9182866711', 'student', 'ECE', '22A81A04I2', '9182866711');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.07, 9.08, 8.38, 8.25, 7.47, 8.19, 7.98, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UNDRAJAVARAPU VALLIKA', '22a81a04i4@sves.org.in', '7780427917', 'student', 'ECE', '22A81A04I4', '7780427917');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.72, 8.0, 6.85, 7.53, 7.47, 8.54, 7.91, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VADAPALLI JOHNDAVID', '22a81a04i5@sves.org.in', '9392225365', 'student', 'ECE', '22A81A04I5', '9392225365');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.74, 9.69, 8.85, 8.98, 8.39, 9.16, 8.23, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VATTIKUTI SATYA PUJASRI', '22a81a04i7@sves.org.in', '7386740744', 'student', 'ECE', '22A81A04I7', '7386740744');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.38, 8.85, 8.54, 8.43, 7.98, 8.81, 8.12, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VELAGANA VARA SINGA LAKSHMI', '22a81a04i8@sves.org.in', '9989152327', 'student', 'ECE', '22A81A04I8', '9989152327');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 9.23, 8.23, 8.02, 7.98, 8.81, 8.54, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YANDAMURI HIMA ESWAR', '22a81a04i9@sves.org.in', '9705365085', 'student', 'ECE', '22A81A04I9', '9705365085');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 9.15, 8.46, 9.14, 7.7, 9.3, 8.51, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHAVAKULA DUMBESH', '23a85a0403@sves.org.in', '9502606788', 'student', 'ECE', '23A85A0403', '9502606788');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, NULL, NULL, 8.2, 8.12, 8.61, 8.19, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GRANDHI MOHAN KUMAR', '23a85a0406@sves.org.in', '7207276683', 'student', 'ECE', '23A85A0406', '7207276683');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.78, NULL, NULL, 8.65, 9.02, 9.44, 8.74, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PITANI SAPTAGIRI', '23a85a0407@sves.org.in', '7893055149', 'student', 'ECE', '23A85A0407', '7893055149');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, NULL, NULL, 8.02, 7.7, 9.16, 8.39, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SATTI HEMANTH SRI ADHINARAYANA REDDY', '23a85a0408@sves.org.in', '9347299578', 'student', 'ECE', '23A85A0408', '9347299578');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.82, NULL, NULL, 7.47, 7.63, 8.3, 8.12, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SEEPANI PAVAN KARTHIK', '23a85a0409@sves.org.in', '9247442925', 'student', 'ECE', '23A85A0409', '9247442925');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, NULL, NULL, 8.29, 8.46, 9.02, 8.33, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('IRAPU NAVYA SREE', '23a85a0411@sves.org.in', '9490424676', 'student', 'ECE', '23A85A0411', '9490424676');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.65, NULL, NULL, 7.53, 7.4, 8.44, 7.67, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAIDU HARIKA SRI', '23a85a0412@sves.org.in', '9392519363', 'student', 'ECE', '23A85A0412', '9392519363');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.89, NULL, NULL, 7.86, 7.95, 8.81, 7.74, 7.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PASUPULETI UMA DURGA NAVYA SRI', '23a85a0413@sves.org.in', '9346880519', 'student', 'ECE', '23A85A0413', '9346880519');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, NULL, NULL, 8.33, 8.09, 9.02, 8.58, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATHURI ANJALI', '23a85a0414@sves.org.in', '9391742802', 'student', 'ECE', '23A85A0414', '9391742802');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.81, NULL, NULL, 8.06, 7.42, 8.33, 7.95, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VARI HEMA SRI DURGA', '23a85a0415@sves.org.in', '8688369521', 'student', 'ECE', '23A85A0415', '8688369521');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, NULL, NULL, 8.0, 7.81, 9.02, 8.3, 6.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOKKA RAJESH', '23a85a0416@sves.org.in', '7989425043', 'student', 'ECE', '23A85A0416', '7989425043');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.27, NULL, NULL, 8.47, 8.12, 8.81, 8.46, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GADI PAVAN MANIKANTA KUMAR', '23a85a0418@sves.org.in', '7995113027', 'student', 'ECE', '23A85A0418', '7995113027');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, NULL, NULL, 8.37, 8.33, 8.67, 8.26, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUTTA JYOTHIKA', '23a85a0419@sves.org.in', '9381852551', 'student', 'ECE', '23A85A0419', '9381852551');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, NULL, NULL, 7.47, 7.53, 8.51, 8.12, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('LOKAVARAPU VISHNU VARDHAN', '23a85a0420@sves.org.in', '9381093539', 'student', 'ECE', '23A85A0420', '9381093539');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.57, NULL, NULL, 8.75, 8.46, 8.88, 8.54, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAGANTI ANITHA', '23a85a0421@sves.org.in', '7416956352', 'student', 'ECE', '23A85A0421', '7416956352');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, NULL, NULL, 7.39, 7.07, 8.74, 8.19, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAMILLAPALLI LOKESH', '23a85a0422@sves.org.in', '7674044571', 'student', 'ECE', '23A85A0422', '7674044571');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.48, NULL, NULL, 8.33, 8.65, 8.95, 8.61, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MARADANI LOKESH', '23a85a0423@sves.org.in', '7569939852', 'student', 'ECE', '23A85A0423', '7569939852');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.68, NULL, NULL, 7.57, 7.28, 8.3, 8.12, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEESALA LOKESH PAVAN SEETHAYYA NAIDU', '23a85a0424@sves.org.in', '8686965700', 'student', 'ECE', '23A85A0424', '8686965700');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, NULL, NULL, 8.18, 8.46, 8.74, 8.33, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOTUPALLI SANTHOSH KUMAR', '23a85a0425@sves.org.in', '9866397585', 'student', 'ECE', '23A85A0425', '9866397585');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.81, NULL, NULL, 8.08, 7.4, 8.09, 8.39, 7.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ROUTHU VENKATA SAI DURGA', '23a85a0428@sves.org.in', '6301302278', 'student', 'ECE', '23A85A0428', '6301302278');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.89, NULL, NULL, 7.57, 7.77, 8.51, 8.26, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SHAIK SAYYAD BAJI', '23a85a0429@sves.org.in', '9491475673', 'student', 'ECE', '23A85A0429', '9491475673');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, NULL, NULL, 8.45, 8.05, 8.81, 8.16, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOMMAGANI KRISHNA PAVANI', '22a81a0205@sves.org.in', '7569631892', 'student', 'EEE', '22A81A0205', '7569631892');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.44, 7.62, 6.69, 7.49, 7.07, 7.95, 7.63, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DASARI TRIVYANJALI', '22a81a0208@sves.org.in', '7842523239', 'student', 'EEE', '22A81A0208', '7842523239');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.25, 8.62, 8.62, 8.29, 7.63, 8.33, 8.33, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DONDAPATI MAHIDHAR', '22a81a0210@sves.org.in', '9491898776', 'student', 'EEE', '22A81A0210', '9491898776');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.46, 7.77, 7.62, 7.88, 7.0, 7.47, 7.14, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GADUGOYILA GEETHA SANTHOSHINI', '22a81a0212@sves.org.in', '7675059094', 'student', 'EEE', '22A81A0212', '7675059094');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 9.15, 8.46, 7.94, 7.98, 8.79, 8.61, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOLA ANJALI DEVI', '22a81a0219@sves.org.in', '9848804574', 'student', 'EEE', '22A81A0219', '9848804574');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.53, 8.31, 6.77, 7.22, 7.07, 7.86, 7.81, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KURAM MOUNIKA', '22a81a0223@sves.org.in', '7989589925', 'student', 'EEE', '22A81A0223', '7989589925');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.17, 8.54, 7.69, 8.35, 7.56, 8.16, 8.67, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MACHAGANTI ANUSHA', '22a81a0225@sves.org.in', '8977087257', 'student', 'EEE', '22A81A0225', '8977087257');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.61, 8.85, 8.38, 8.53, 8.05, 8.42, 8.93, 9.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PUROHIT KUSHUBU', '22a81a0238@sves.org.in', '8317619479', 'student', 'EEE', '22A81A0238', '8317619479');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.53, 7.92, 7.08, 7.23, 7.35, 7.51, 7.84, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ROWTHU KUMARI NAGA SAI DHANA LAKSHMI', '22a81a0240@sves.org.in', '7794905377', 'student', 'EEE', '22A81A0240', '7794905377');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.64, 7.38, 7.62, 7.39, 6.93, 7.7, 8.39, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMBATI SHARON KUMAR', '22a81a0246@sves.org.in', '8328168181', 'student', 'EEE', '22A81A0246', '8328168181');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.04, 7.0, 6.62, 6.72, 6.63, 7.63, 7.05, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AVISETTI SAI SATYA SRI', '22a81a0248@sves.org.in', '8008904712', 'student', 'EEE', '22A81A0248', '8008904712');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 8.23, 7.77, 8.47, 7.91, 8.33, 8.88, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BODDU ASRITHA RANGA VAISHNAVI', '22a81a0249@sves.org.in', '6305777495', 'student', 'EEE', '22A81A0249', '6305777495');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.41, 8.69, 8.31, 8.16, 7.77, 8.46, 8.74, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BOLLA HARISHMA PADMAJA', '22a81a0250@sves.org.in', '9550696158', 'student', 'EEE', '22A81A0250', '9550696158');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.29, 7.46, 6.92, 7.33, 6.93, 7.35, 7.7, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANCHARLA DINESH', '22a81a0259@sves.org.in', '8688926896', 'student', 'EEE', '22A81A0259', '8688926896');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.49, 9.38, 8.62, 7.31, 6.49, 7.14, 6.86, 7.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KODURI HARSHITHA', '22a81a0264@sves.org.in', '6305312585', 'student', 'EEE', '22A81A0264', '6305312585');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.78, 8.08, 7.38, 7.43, 7.49, 7.77, 8.12, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOLLEPARA VASAVI RATNA SRILEKHA', '22a81a0265@sves.org.in', '9949973741', 'student', 'EEE', '22A81A0265', '9949973741');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.56, 8.69, 8.31, 8.35, 8.12, 8.61, 9.02, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTTALA PAVAN KUMAR', '22a81a0267@sves.org.in', '9100878904', 'student', 'EEE', '22A81A0267', '9100878904');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.64, 8.69, 7.92, 7.47, 7.21, 7.07, 7.49, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MALLABATHULA PAVANI', '22a81a0271@sves.org.in', '9121645169', 'student', 'EEE', '22A81A0271', '9121645169');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.85, 7.77, 7.31, 7.77, 7.7, 7.91, 7.98, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('METLA UDAYKIRAN', '22a81a0273@sves.org.in', '8639620930', 'student', 'EEE', '22A81A0273', '8639620930');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.95, 9.31, 8.62, 8.22, 7.49, 7.42, 7.07, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MIRIYALA BOBBY', '22a81a0274@sves.org.in', '9676010869', 'student', 'EEE', '22A81A0274', '9676010869');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.8, 8.62, 7.62, 7.45, 6.86, 7.56, 8.39, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NULI VASAVI NAGA SRI VARSHINI', '22a81a0276@sves.org.in', '7396671393', 'student', 'EEE', '22A81A0276', '7396671393');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.61, 8.62, 8.38, 8.69, 8.19, 8.61, 8.88, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POLINATI BINDU SRI', '22a81a0278@sves.org.in', '7013553595', 'student', 'EEE', '22A81A0278', '7013553595');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 8.77, 8.0, 8.49, 8.33, 8.46, 9.02, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RATALA VIRAJALA MEENA KUMARI', '22a81a0283@sves.org.in', '9392372260', 'student', 'EEE', '22A81A0283', '9392372260');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.29, 8.15, 8.62, 8.35, 7.77, 7.77, 8.65, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAGU PUJITHA', '22a81a0284@sves.org.in', '9392857046', 'student', 'EEE', '22A81A0284', '9392857046');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, 8.0, 7.23, 7.77, 7.35, 8.05, 8.12, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VALLEPALLI PAVAN KUMAR', '22a81a0287@sves.org.in', '9392623327', 'student', 'EEE', '22A81A0287', '9392623327');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.59, 7.69, 7.08, 7.84, 7.0, 7.84, 7.72, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDILA LEELA VINODINI', '23a85a0201@sves.org.in', '8121696433', 'student', 'EEE', '23A85A0201', '8121696433');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, NULL, NULL, 8.0, 8.05, 8.37, 8.67, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANDULA GOVARDHAN', '23a85a0204@sves.org.in', '9063378454', 'student', 'EEE', '23A85A0204', '9063378454');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, NULL, NULL, 7.84, 7.56, 8.3, 8.61, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOLUPURI SANTHOSHA KUMARI', '23a85a0213@sves.org.in', '7095482993', 'student', 'EEE', '23A85A0213', '7095482993');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, NULL, NULL, 8.1, 7.91, 8.19, 8.23, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MARISETTI MOHAN SATYA MANIDEEP', '23a85a0215@sves.org.in', '6304348087', 'student', 'EEE', '23A85A0215', '6304348087');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.14, NULL, NULL, 8.0, 8.05, 7.84, 8.67, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TELU KRISHNA PAVAN', '23a85a0216@sves.org.in', '8309966933', 'student', 'EEE', '23A85A0216', '8309966933');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, NULL, NULL, 7.77, 7.35, 7.91, 8.95, 7.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TIRUMALAREDDY NAVYA SRI', '23a85a0217@sves.org.in', '6301448855', 'student', 'EEE', '23A85A0217', '6301448855');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, NULL, NULL, 8.22, 8.05, 8.61, 9.02, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VAMISETTI DHARMENDRA SIVA SAI', '23a85a0218@sves.org.in', '9490670706', 'student', 'EEE', '23A85A0218', '9490670706');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, NULL, NULL, 7.82, 7.77, 7.98, 8.16, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADAPA KIRAN KUMAR', '22a81a0301@sves.org.in', '6303126759', 'student', 'ME', '22A81A0301', '6303126759');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 6.91, 7.0, 6.62, 6.65, 6.56, 7.09, 7.56, 6.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADDAGARLA VENKATESH', '22a81a0302@sves.org.in', '7995358981', 'student', 'ME', '22A81A0302', '7995358981');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.92, 8.08, 8.29, 8.26, 8.56, 8.88, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDULA DEVENDRA', '22a81a0306@sves.org.in', '9666606135', 'student', 'ME', '22A81A0306', '9666606135');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.37, 7.85, 7.38, 7.06, 7.23, 7.91, 7.07, 7.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHELLAMSETTI T V V N SAI PAVAN GANESH', '22a81a0309@sves.org.in', '9907983333', 'student', 'ME', '22A81A0309', '9907983333');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.62, 8.85, 7.38, 7.47, 7.4, 7.65, 7.6, 7.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANTEDA PRAVEEN KUMAR', '22a81a0316@sves.org.in', '7780416830', 'student', 'ME', '22A81A0316', '7780416830');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.45, 9.08, 8.69, 8.41, 8.42, 8.46, 8.74, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GATTIM SRI NAGA AYYAPPA', '22a81a0318@sves.org.in', '9959382191', 'student', 'ME', '22A81A0318', '9959382191');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.51, 7.23, 7.62, 7.18, 7.56, 7.84, 7.84, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOPISETTI ANANTH LAKSHMI KUMAR', '22a81a0320@sves.org.in', '7013470235', 'student', 'ME', '22A81A0320', '7013470235');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.09, 9.38, 9.69, 8.82, 9.23, 9.3, 8.88, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARRI ROHITH REDDY', '22a81a0326@sves.org.in', '9959157018', 'student', 'ME', '22A81A0326', '9959157018');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.54, 7.92, 7.38, 7.12, 7.47, 7.19, 8.3, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KODURI PHANI VENKATA KUMAR', '22a81a0329@sves.org.in', '9014387928', 'student', 'ME', '22A81A0329', '9014387928');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.33, 9.0, 8.08, 7.88, 8.26, 8.54, 8.44, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALAKALURI TARUN KUMAR', '22a81a0347@sves.org.in', '9705865237', 'student', 'ME', '22A81A0347', '9705865237');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.12, 6.92, 6.85, 6.96, 7.19, 7.35, 7.33, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PYDIMUKKULA PULLA RAO', '22a81a0353@sves.org.in', '9618720497', 'student', 'ME', '22A81A0353', '9618720497');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.33, 7.08, 7.0, 7.65, 7.19, 7.35, 7.74, 7.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SARIDE VIGNESWARA RAO', '22a81a0355@sves.org.in', '9182268681', 'student', 'ME', '22A81A0355', '9182268681');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 9.08, 8.46, 8.59, 8.61, 9.14, 8.88, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('THORAM RAMA LAKSHMAN', '22a81a0360@sves.org.in', '9676808216', 'student', 'ME', '22A81A0360', '9676808216');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.95, 7.54, 7.15, 7.72, 8.09, 8.39, 8.67, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YADLAPALLI SRI SAI VENKATA DURGA ESWAR', '23a85a0303@sves.org.in', '6305769980', 'student', 'ME', '23A85A0303', '6305769980');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.45, NULL, NULL, 7.25, 7.6, 7.26, 7.91, 7.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHIKKA SOHAN SATYA VARDHAN', '23a85a0304@sves.org.in', '9701565312', 'student', 'ME', '23A85A0304', '9701565312');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, NULL, NULL, 8.18, 8.23, 8.44, 8.12, 7.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHIKKALA VIJAYA KUMAR', '23a85a0305@sves.org.in', '7893744131', 'student', 'ME', '23A85A0305', '7893744131');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.15, NULL, NULL, 8.88, 8.79, 9.7, 9.3, 9.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GARIKIPATI CHANDU', '23a85a0307@sves.org.in', '8185092634', 'student', 'ME', '23A85A0307', '8185092634');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.83, NULL, NULL, 8.61, 8.86, 8.58, 9.07, 9.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOLLAMANDALA KRUPAKAR', '23a85a0308@sves.org.in', '9121532016', 'student', 'ME', '23A85A0308', '9121532016');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.31, NULL, NULL, 7.49, 7.33, 7.49, 7.4, 6.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERAMALLA MANIKANTA SAI DURGA NARAYANA', '23a85a0310@sves.org.in', '9392101094', 'student', 'ME', '23A85A0310', '9392101094');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.16, NULL, NULL, 6.72, 6.77, 7.67, 7.49, 7.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUNDA SATYANARAYANA', '23a85a0311@sves.org.in', '6301751110', 'student', 'ME', '23A85A0311', '6301751110');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.8, NULL, NULL, 7.43, 7.74, 7.98, 8.39, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JAGALINKI HEMA SURYA VARDHAN', '23a85a0312@sves.org.in', '9390886869', 'student', 'ME', '23A85A0312', '9390886869');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.44, NULL, NULL, 8.41, 8.46, 9.07, 8.74, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JALADHANI SRAVYA DURGA', '23a85a0313@sves.org.in', '9573578309', 'student', 'ME', '23A85A0313', '9573578309');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, NULL, NULL, 8.35, 8.81, 8.79, 8.79, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KATTA DURGA PRASAD', '23a85a0314@sves.org.in', '7286947147', 'student', 'ME', '23A85A0314', '7286947147');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.17, NULL, NULL, 7.23, 7.14, 7.74, 6.7, 7.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDIRALA ABHIRAM', '23a85a0315@sves.org.in', '9391672823', 'student', 'ME', '23A85A0315', '9391672823');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 6.83, NULL, NULL, 6.84, 7.12, 6.84, 6.7, 6.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MUNTA L V V S SUBRAHMANYAM', '23a85a0316@sves.org.in', '9390417117', 'student', 'ME', '23A85A0316', '9390417117');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.06, NULL, NULL, 8.18, 7.77, 9.28, 8.51, 6.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NUTANGI SANTHOSH', '23a85a0317@sves.org.in', '6281906246', 'student', 'ME', '23A85A0317', '6281906246');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.51, NULL, NULL, 7.08, 7.23, 7.74, 7.98, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NUTANGI SYAM BABU', '23a85a0318@sves.org.in', '8519829419', 'student', 'ME', '23A85A0318', '8519829419');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.25, NULL, NULL, 7.25, 6.95, 6.77, 7.63, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UBA RAVINDRA BABU', '23a85a0320@sves.org.in', '9676939873', 'student', 'ME', '23A85A0320', '9676939873');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.28, NULL, NULL, 7.35, 7.3, 7.65, 6.7, 7.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADAPA JNANA CHANDRIKA', '22a81a0601@sves.org.in', '8639602234', 'student', 'CST', '22A81A0601', '8639602234');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.94, 9.0, 7.92, 8.94, 9.16, 9.3, 9.44, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AKULA HARI SREE', '22a81a0602@sves.org.in', '9440132111', 'student', 'CST', '22A81A0602', '9440132111');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.08, 9.38, 8.54, 9.06, 9.16, 9.72, 9.16, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDARU BHARGAVI', '22a81a0604@sves.org.in', '9381599420', 'student', 'CST', '22A81A0604', '9381599420');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, 8.62, 8.08, 8.59, 8.88, 8.67, 8.61, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANGARU MOHAN RAO', '22a81a0605@sves.org.in', '7075591109', 'student', 'CST', '22A81A0605', '7075591109');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, 8.31, 7.62, 8.04, 8.16, 8.12, 8.39, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BITRA PRAVALLIKA', '22a81a0606@sves.org.in', '8688118719', 'student', 'CST', '22A81A0606', '8688118719');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.31, 7.92, 8.23, 8.54, 8.37, 8.88, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHALLA YASASWI', '22a81a0609@sves.org.in', '7702782648', 'student', 'CST', '22A81A0609', '7702782648');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.62, 8.23, 9.06, 8.37, 9.16, 9.3, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DARISI VENKATA LAHARI', '22a81a0611@sves.org.in', '9390980889', 'student', 'CST', '22A81A0611', '9390980889');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.09, 9.38, 9.08, 9.1, 9.3, 9.16, 8.46, 9.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DOMMETI L S VASANTHI', '22a81a0613@sves.org.in', '9701594369', 'student', 'CST', '22A81A0613', '9701594369');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.98, 9.31, 8.62, 9.06, 8.88, 9.02, 8.81, 9.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('EDUPALLI LIKHITHA SAI', '22a81a0614@sves.org.in', '9346553146', 'student', 'CST', '22A81A0614', '9346553146');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.74, 9.0, 8.38, 8.71, 8.93, 8.74, 8.74, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GANDHARAPU MOUNIKA', '22a81a0615@sves.org.in', '9014670724', 'student', 'CST', '22A81A0615', '9014670724');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.14, 8.46, 7.08, 8.29, 8.23, 8.05, 8.26, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOTHAM SRI NAGA SIRISHA', '22a81a0616@sves.org.in', '9642973891', 'student', 'CST', '22A81A0616', '9642973891');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, 8.77, 7.31, 8.51, 7.88, 7.81, 7.77, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JANGA SRINIVASA REDDY', '22a81a0619@sves.org.in', '6300041199', 'student', 'CST', '22A81A0619', '6300041199');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.52, 9.31, 8.92, 8.35, 8.09, 8.54, 8.19, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KADIMI HARIKA', '22a81a0622@sves.org.in', '7207033984', 'student', 'CST', '22A81A0622', '7207033984');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.04, 9.46, 9.08, 9.22, 8.74, 9.02, 9.16, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAMISETTY TANUJA', '22a81a0623@sves.org.in', '9440443459', 'student', 'CST', '22A81A0623', '9440443459');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.28, 9.31, 9.23, 9.45, 9.21, 9.44, 9.44, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARELLA PAVANI VINAY KUMAR', '22a81a0624@sves.org.in', '6304397055', 'student', 'CST', '22A81A0624', '6304397055');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 8.69, 8.69, 8.86, 8.93, 9.02, 9.23, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARPURAM CHARANI', '22a81a0625@sves.org.in', '7670995314', 'student', 'CST', '22A81A0625', '7670995314');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.47, 9.0, 7.69, 8.59, 8.3, 8.74, 8.61, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADICHERLA SHANMUKHA SAI PRAKASH', '22a81a0629@sves.org.in', '9550985975', 'student', 'CST', '22A81A0629', '9550985975');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.75, 8.77, 8.54, 8.39, 8.81, 8.74, 9.02, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADIPALLI V VENKATA NAGA SRI MANICHANDANA', '22a81a0630@sves.org.in', '9491577669', 'student', 'CST', '22A81A0630', '9491577669');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.78, 9.08, 8.31, 8.86, 8.88, 8.12, 9.44, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDIDI PRAVALLIKA', '22a81a0631@sves.org.in', '9063771180', 'student', 'CST', '22A81A0631', '9063771180');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 9.15, 8.46, 8.94, 8.46, 8.46, 9.02, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEKA MAHESH KIRAN', '22a81a0632@sves.org.in', '8919557642', 'student', 'CST', '22A81A0632', '8919557642');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.02, 8.31, 7.23, 8.23, 7.67, 7.98, 8.12, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMED HAFEEZA KHAN', '22a81a0633@sves.org.in', '6305899256', 'student', 'CST', '22A81A0633', '6305899256');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.35, 8.08, 6.92, 8.35, 8.51, 8.46, 9.09, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MUTYALU CHAITANYA NAGAVALLI', '22a81a0634@sves.org.in', '9100853997', 'student', 'CST', '22A81A0634', '9100853997');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.38, 8.69, 9.18, 9.16, 8.61, 9.23, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAGASURI TULASI SWETHA', '22a81a0635@sves.org.in', '8247805516', 'student', 'CST', '22A81A0635', '8247805516');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.83, 9.23, 8.77, 8.71, 8.88, 8.67, 9.02, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLANICHAKRAVARTHULA SRI HARSHITA', '22a81a0636@sves.org.in', '8500712540', 'student', 'CST', '22A81A0636', '8500712540');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 8.85, 7.69, 8.59, 8.16, 8.74, 8.88, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PADALA MOHAN REDDY', '22a81a0637@sves.org.in', '8074274880', 'student', 'CST', '22A81A0637', '8074274880');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.68, 8.77, 8.69, 8.59, 8.46, 9.02, 9.16, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLELA RAJA', '22a81a0638@sves.org.in', '9392848155', 'student', 'CST', '22A81A0638', '9392848155');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.03, 9.0, 8.69, 8.86, 9.35, 9.16, 9.23, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PANJA MADHAN', '22a81a0639@sves.org.in', '7729959225', 'student', 'CST', '22A81A0639', '7729959225');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, 8.23, 7.31, 7.88, 7.56, 8.33, 7.7, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATSA YEGNAVALLAKA SUBRAHMANYA SAI', '22a81a0640@sves.org.in', '9989379211', 'student', 'CST', '22A81A0640', '9989379211');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.55, 8.62, 8.23, 8.47, 8.26, 8.74, 9.16, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PENUMATSA V V V VARMA', '22a81a0641@sves.org.in', '9059565817', 'student', 'CST', '22A81A0641', '9059565817');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.01, 7.92, 6.69, 8.18, 8.02, 8.33, 8.39, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POLAVARAPU GANAPATI VARA PRASAD', '22a81a0642@sves.org.in', '6304852672', 'student', 'CST', '22A81A0642', '6304852672');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.96, 9.08, 9.08, 8.86, 8.88, 9.3, 9.02, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PONNA VIJAYA DURGA SAI MALLESWARA RAO', '22a81a0643@sves.org.in', '8374742540', 'student', 'CST', '22A81A0643', '8374742540');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.69, 8.54, 8.59, 8.37, 8.46, 8.61, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PYDI GEETHA RANI SRI', '22a81a0644@sves.org.in', '9866095276', 'student', 'CST', '22A81A0644', '9866095276');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.59, 8.85, 7.38, 8.29, 9.02, 9.16, 8.67, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PYDIPALA SAI AKASH', '22a81a0645@sves.org.in', '6281856728', 'student', 'CST', '22A81A0645', '6281856728');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.72, 8.69, 8.54, 8.45, 9.16, 8.61, 9.02, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAJAHMUNDRY SWATHI', '22a81a0647@sves.org.in', '9573113968', 'student', 'CST', '22A81A0647', '9573113968');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, 9.23, 9.08, 8.71, 9.35, 8.74, 9.3, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAMISETTI JYOTHIRMAYI', '22a81a0648@sves.org.in', '9381569121', 'student', 'CST', '22A81A0648', '9381569121');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.06, 9.23, 8.62, 9.06, 8.93, 9.44, 9.3, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RELANGI SRI LAKSHMI MOHANA SASI SARAYU', '22a81a0649@sves.org.in', '9491017359', 'student', 'CST', '22A81A0649', '9491017359');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.74, 9.38, 9.23, 8.94, 8.37, 8.46, 8.54, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SHAIK CHAN BASHA', '22a81a0651@sves.org.in', '9550360289', 'student', 'CST', '22A81A0651', '9550360289');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.01, 7.62, 7.08, 8.29, 8.3, 8.16, 8.23, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TAMANAMPUDI YASASWINI SRI', '22a81a0654@sves.org.in', '8639507184', 'student', 'CST', '22A81A0654', '8639507184');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.63, 9.15, 8.85, 8.63, 8.81, 8.19, 8.54, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UCHINTHALA SUPRIYA', '22a81a0657@sves.org.in', '9398553910', 'student', 'CST', '22A81A0657', '9398553910');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.41, 9.31, 9.85, 9.41, 9.58, 9.3, 9.44, 9.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('URLA HASINI', '22a81a0658@sves.org.in', '6304576772', 'student', 'CST', '22A81A0658', '6304576772');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.91, 8.08, 7.38, 7.77, 7.4, 8.09, 7.91, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VARA JEESON BABU', '22a81a0660@sves.org.in', '6302050750', 'student', 'CST', '22A81A0660', '6302050750');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, 8.85, 7.46, 8.1, 7.81, 7.81, 7.95, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEJJU YAJNA SRIDEVI', '22a81a0661@sves.org.in', '7013603135', 'student', 'CST', '22A81A0661', '7013603135');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.7, 8.85, 8.38, 8.71, 8.74, 8.81, 8.81, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VELAGALA LOWKYA BHAVANA', '22a81a0662@sves.org.in', '9440403126', 'student', 'CST', '22A81A0662', '9440403126');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.95, 9.38, 8.92, 8.82, 9.21, 9.09, 8.61, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YALAMARTHI SABDHA', '22a81a0666@sves.org.in', '8317569500', 'student', 'CST', '22A81A0666', '8317569500');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.57, 8.31, 8.77, 8.47, 8.37, 8.88, 8.95, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMARTHALURI SRIDHAR', '23a85a0601@sves.org.in', '9014343213', 'student', 'CST', '23A85A0601', '9014343213');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.23, NULL, NULL, 8.06, 8.23, 8.39, 8.44, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BEELLA OM ABHIRAM', '23a85a0603@sves.org.in', '7815858575', 'student', 'CST', '23A85A0603', '7815858575');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.59, NULL, NULL, 8.51, 8.26, 8.81, 8.37, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOLANUVADA CHANDRA SHEKAR', '23a85a0604@sves.org.in', '7995709015', 'student', 'CST', '23A85A0604', '7995709015');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.95, NULL, NULL, 8.33, 7.4, 7.84, 8.02, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RUDRARAJU JOGI SUBRAHMANYAM RAJU', '23a85a0605@sves.org.in', '6304958379', 'student', 'CST', '23A85A0605', '6304958379');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.74, NULL, NULL, 8.41, 7.63, 7.21, 7.33, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SEEPANI VEENASREE', '23a85a0606@sves.org.in', '7382490099', 'student', 'CST', '23A85A0606', '7382490099');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, NULL, NULL, 8.18, 7.91, 7.91, 7.81, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHILLA YASASWINI', '22a81a1410@sves.org.in', '7075084586', 'student', 'ECT', '22A81A1410', '7075084586');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.02, 8.54, 7.85, 7.96, 7.81, 8.46, 8.44, 7.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DUNDI CHARMI', '22a81a1413@sves.org.in', '9704226347', 'student', 'ECT', '22A81A1413', '9704226347');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 9.23, 8.92, 8.65, 8.61, 9.3, 8.33, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DUNDI DINESH VARDHAN', '22a81a1414@sves.org.in', '9014310778', 'student', 'ECT', '22A81A1414', '9014310778');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.15, 8.31, 7.94, 7.67, 8.88, 8.05, 7.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOUTHU BANDHAVI', '22a81a1416@sves.org.in', '6304653334', 'student', 'ECT', '22A81A1416', '6304653334');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.91, 8.77, 8.08, 8.06, 7.77, 7.88, 8.09, 6.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUNA DEEPIKA', '22a81a1417@sves.org.in', '8522885943', 'student', 'ECT', '22A81A1417', '8522885943');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.78, 8.69, 8.23, 7.25, 8.09, 8.19, 7.81, 6.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUNA NAGA RAGHURAM', '22a81a1419@sves.org.in', '6304169886', 'student', 'ECT', '22A81A1419', '6304169886');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 6.93, 7.15, 6.46, 6.96, 6.56, 7.88, 6.7, 6.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUTALA SATYA VENKATA MURALI', '22a81a1420@sves.org.in', '7093433273', 'student', 'ECT', '22A81A1420', '7093433273');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.26, 6.77, 7.46, 7.02, 6.84, 7.63, 7.47, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONAKALLA NAGA KEERTHI SREE', '22a81a1424@sves.org.in', '9014664846', 'student', 'ECT', '22A81A1424', '9014664846');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, 8.38, 8.31, 8.18, 7.91, 8.33, 7.56, 7.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOKKIRALA HEMA DURGA', '22a81a1427@sves.org.in', '9393144492', 'student', 'ECT', '22A81A1427', '9393144492');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.92, 9.15, 9.06, 8.74, 8.88, 7.56, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOMMURI YAMINI', '22a81a1428@sves.org.in', '9502214116', 'student', 'ECT', '22A81A1428', '9502214116');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 8.92, 8.23, 7.94, 8.19, 8.74, 8.46, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KURELLA LAKSHMI SRI SATYA', '22a81a1430@sves.org.in', '9985902617', 'student', 'ECT', '22A81A1430', '9985902617');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, 8.31, 8.23, 7.9, 7.77, 8.39, 7.74, 7.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDALA BHARGAVI', '22a81a1433@sves.org.in', '6304927113', 'student', 'ECT', '22A81A1433', '6304927113');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.46, 8.62, 8.37, 8.88, 9.02, 8.74, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDALA DURGA VENKATA SATYASAI', '22a81a1434@sves.org.in', '8919996452', 'student', 'ECT', '22A81A1434', '8919996452');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.38, 7.0, 7.69, 7.02, 7.81, 7.4, 7.81, 7.04, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDIPATLA SUMA', '22a81a1435@sves.org.in', '9515082239', 'student', 'ECT', '22A81A1435', '9515082239');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.29, 8.46, 8.23, 8.25, 8.26, 8.54, 8.33, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANEPALLI AKSHAYA', '22a81a1436@sves.org.in', '8919327193', 'student', 'ECT', '22A81A1436', '8919327193');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, 9.0, 9.38, 9.47, 8.74, 9.16, 8.88, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOTEPALLI SAMEERA', '22a81a1440@sves.org.in', '7793957469', 'student', 'ECT', '22A81A1440', '7793957469');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.14, 7.92, 7.31, 8.31, 7.95, 8.95, 8.23, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NILABOINA LAKSHMI NAGA DURGA VINEETHA', '22a81a1441@sves.org.in', '9014912129', 'student', 'ECT', '22A81A1441', '9014912129');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.76, 7.38, 8.15, 7.61, 7.12, 8.37, 8.51, 7.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POSINA CHANDRIKA', '22a81a1447@sves.org.in', '9182125066', 'student', 'ECT', '22A81A1447', '9182125066');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.83, 8.0, 8.0, 7.67, 7.6, 8.09, 8.26, 7.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PUTTA YAGNA SRI HARSHITHA', '22a81a1450@sves.org.in', '9494127969', 'student', 'ECT', '22A81A1450', '9494127969');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.23, 9.08, 8.54, 8.06, 7.91, 8.33, 8.46, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SUNKARA SRAVANI', '22a81a1455@sves.org.in', '9441566833', 'student', 'ECT', '22A81A1455', '9441566833');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.38, 9.08, 9.0, 8.23, 8.3, 8.61, 8.05, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TALAMSETTI GOPIKA SRITHA', '22a81a1456@sves.org.in', '6305127334', 'student', 'ECT', '22A81A1456', '6305127334');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.82, 8.92, 9.0, 8.88, 8.61, 9.3, 8.74, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TORATI JAYASURYA TEJASWINI', '22a81a1459@sves.org.in', '9121741618', 'student', 'ECT', '22A81A1459', '9121741618');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.24, 8.54, 8.23, 8.25, 7.81, 8.67, 8.74, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VALLABHANENI NANDHINI', '22a81a1460@sves.org.in', '9346267633', 'student', 'ECT', '22A81A1460', '9346267633');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.65, 8.46, 7.77, 7.78, 7.47, 7.98, 7.63, 6.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VUDDAGIRI HEMA SIVA HARIKA', '22a81a1462@sves.org.in', '8341249257', 'student', 'ECT', '22A81A1462', '8341249257');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, 9.15, 8.69, 8.82, 7.95, 8.46, 8.19, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YADLAPALLI LAKSHMI PRASUNA', '22a81a1463@sves.org.in', '8712251369', 'student', 'ECT', '22A81A1463', '8712251369');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.07, 8.31, 7.77, 7.82, 7.81, 8.67, 8.33, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('YARRA SYAMALA', '22a81a1465@sves.org.in', '9676899766', 'student', 'ECT', '22A81A1465', '9676899766');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 9.08, 8.46, 8.41, 7.88, 8.95, 7.91, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AKASAPU VARUN MANIKANTA', '23a85a1401@sves.org.in', '9640448199', 'student', 'ECT', '23A85A1401', '9640448199');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.68, NULL, NULL, 7.14, 7.4, 7.98, 8.33, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ABDUL SAMEER', '22a81a6101@sves.org.in', '8179055865', 'student', 'AIM', '22A81A6101', '8179055865');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 8.15, 8.31, 8.45, 8.46, 8.37, 8.02, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADDAGARLA ADITHYA SATYA TRINADHA SHANMUKH', '22a81a6102@sves.org.in', '9381625956', 'student', 'AIM', '22A81A6102', '9381625956');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.88, 8.23, 7.46, 7.63, 7.49, 8.44, 7.84, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADIMELLI SRIKANYA', '22a81a6103@sves.org.in', '7569236353', 'student', 'AIM', '22A81A6103', '7569236353');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, 8.69, 7.85, 8.14, 8.26, 8.3, 8.33, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('B LAXMI VENKATA RAMA DURGA SOWJANYA', '22a81a6105@sves.org.in', '9542519285', 'student', 'AIM', '22A81A6105', '9542519285');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.68, 8.77, 7.38, 7.78, 7.14, 7.4, 7.91, 7.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BADAM SAI BHAVANI', '22a81a6106@sves.org.in', '7032565991', 'student', 'AIM', '22A81A6106', '7032565991');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.75, 7.46, 7.92, 7.23, 7.35, 7.74, 8.26, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BORRA VIJAY VINAYAK', '22a81a6107@sves.org.in', '6304153598', 'student', 'AIM', '22A81A6107', '6304153598');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.93, 8.62, 8.08, 7.23, 7.63, 8.09, 7.67, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BULUSU VENKATA DURGA SRI HARSHINI', '22a81a6109@sves.org.in', '6304938149', 'student', 'AIM', '22A81A6109', '6304938149');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.54, 7.62, 7.23, 8.33, 8.51, 8.74, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BUSI PALLAVI', '22a81a6110@sves.org.in', '6302975519', 'student', 'AIM', '22A81A6110', '6302975519');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.65, 7.62, 6.62, 7.18, 7.21, 8.02, 8.61, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHELLABOINA YESURAJU', '22a81a6112@sves.org.in', '9392234389', 'student', 'AIM', '22A81A6112', '9392234389');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.23, 9.0, 9.02, 8.46, 9.02, 9.02, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DAGULURI RAJU', '22a81a6115@sves.org.in', '9866942197', 'student', 'AIM', '22A81A6115', '9866942197');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.08, 7.85, 7.88, 7.91, 8.46, 8.19, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GORREMUTCHU SOLOMON MATTHEWS', '22a81a6121@sves.org.in', '6305718769', 'student', 'AIM', '22A81A6121', '6305718769');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.09, 8.77, 8.46, 8.39, 7.84, 7.7, 7.84, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JAKKANI SREE TARAKA VAMSI KRISHNA', '22a81a6122@sves.org.in', '8919159595', 'student', 'AIM', '22A81A6122', '8919159595');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.64, 8.77, 8.15, 9.06, 8.33, 8.61, 9.02, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('K PURNA SATYA SAI SAHITHI', '22a81a6124@sves.org.in', '8106124961', 'student', 'AIM', '22A81A6124', '8106124961');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.52, 9.15, 8.15, 8.69, 8.54, 8.37, 8.44, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARRI ROHIT SAI LAKSHMAN REDDY', '22a81a6125@sves.org.in', '9493957945', 'student', 'AIM', '22A81A6125', '9493957945');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.51, 9.38, 8.08, 8.39, 7.28, 8.61, 9.21, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANTHETI VIVEKRAM', '22a81a6128@sves.org.in', '8522020692', 'student', 'AIM', '22A81A6128', '8522020692');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.66, 9.08, 8.31, 8.65, 8.05, 8.74, 8.93, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAVALA JITHENDRA', '22a81a6130@sves.org.in', '8309042235', 'student', 'AIM', '22A81A6130', '8309042235');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.77, 8.08, 8.98, 7.91, 8.88, 8.72, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOMBATHULA AKHIL BABU', '22a81a6131@sves.org.in', '9346658378', 'student', 'AIM', '22A81A6131', '9346658378');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.62, 7.69, 7.46, 7.82, 7.21, 7.95, 7.47, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOMMU LAKSHMI LAVANYA', '22a81a6132@sves.org.in', '6302303231', 'student', 'AIM', '22A81A6132', '6302303231');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, 9.08, 8.62, 8.28, 8.05, 8.37, 8.33, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONDAVEETI MONICA', '22a81a6134@sves.org.in', '9121344797', 'student', 'AIM', '22A81A6134', '9121344797');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.45, 8.92, 7.54, 8.71, 8.33, 8.65, 8.33, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MOHAMMAD ISHAQ', '22a81a6137@sves.org.in', '9393265888', 'student', 'AIM', '22A81A6137', '9393265888');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.15, 7.08, 7.94, 7.91, 8.46, 8.61, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MUNISETTI VENKATA LAVANYA', '22a81a6141@sves.org.in', '7075291677', 'student', 'AIM', '22A81A6141', '7075291677');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 9.38, 8.46, 8.92, 8.39, 9.21, 8.74, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NALLAMELLI BABY SARANYA', '22a81a6142@sves.org.in', '9133391118', 'student', 'AIM', '22A81A6142', '9133391118');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 8.62, 7.46, 7.92, 7.63, 7.95, 8.54, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAVABATTULA MANOHAR NAGA SRI SAI', '22a81a6143@sves.org.in', '6305083757', 'student', 'AIM', '22A81A6143', '6305083757');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 8.08, 8.46, 7.92, 7.98, 8.58, 8.61, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NELLI RAJA', '22a81a6145@sves.org.in', '7601057948', 'student', 'AIM', '22A81A6145', '7601057948');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.96, 8.46, 7.0, 7.59, 7.84, 8.33, 8.09, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PABBA HARSHINI', '22a81a6146@sves.org.in', '9121930594', 'student', 'AIM', '22A81A6146', '9121930594');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.34, 9.23, 8.08, 8.06, 8.12, 8.46, 8.61, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALURI MOUNIKA', '22a81a6147@sves.org.in', '8374611254', 'student', 'AIM', '22A81A6147', '8374611254');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.64, 8.85, 7.77, 8.39, 8.54, 8.88, 9.44, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATHURI BHUVANESWARI', '22a81a6149@sves.org.in', '7569046467', 'student', 'AIM', '22A81A6149', '7569046467');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.11, 9.69, 8.92, 9.28, 8.88, 9.16, 9.23, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PULAPA INDIRA', '22a81a6151@sves.org.in', '7780462957', 'student', 'AIM', '22A81A6151', '7780462957');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 9.62, 8.31, 8.82, 8.12, 8.88, 9.02, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SARIKA ANJANEYA KARTHIK', '22a81a6154@sves.org.in', '7396351571', 'student', 'AIM', '22A81A6154', '7396351571');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.25, 8.46, 7.85, 8.71, 7.7, 8.19, 8.88, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SIMHADRI TARUNI', '22a81a6155@sves.org.in', '8184945533', 'student', 'AIM', '22A81A6155', '8184945533');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.11, 9.62, 9.08, 8.98, 8.88, 9.16, 9.16, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TAMMINEEDI REKHA PRABHU', '22a81a6157@sves.org.in', '9392947775', 'student', 'AIM', '22A81A6157', '9392947775');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.94, 9.46, 8.69, 8.86, 8.74, 8.88, 9.16, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TIRUPATHI SHANMUKHA PRIYA', '22a81a6159@sves.org.in', '6300372367', 'student', 'AIM', '22A81A6159', '6300372367');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.88, 9.31, 9.0, 9.06, 8.74, 8.46, 9.02, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TIRUVEEDULA L.N.V.S.M.L.DHEERAJ', '22a81a6160@sves.org.in', '7842420613', 'student', 'AIM', '22A81A6160', '7842420613');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.24, 8.77, 8.23, 8.29, 8.19, 8.02, 8.26, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEDANTAM VENKATA MODA SRI VAISHNAVI', '22a81a6162@sves.org.in', '8106962366', 'student', 'AIM', '22A81A6162', '8106962366');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.75, 8.92, 8.08, 8.86, 8.67, 9.02, 9.02, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VANTIPALLI PURNA SRI', '22a81a6163@sves.org.in', '9459893333', 'student', 'AIM', '22A81A6163', '9459893333');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.93, 9.62, 8.69, 9.23, 8.67, 8.86, 8.81, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADABALA JAYA MOUNIKA', '22a81a6167@sves.org.in', '8019736844', 'student', 'AIM', '22A81A6167', '8019736844');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.83, 9.31, 8.62, 8.94, 8.33, 8.61, 9.02, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ANEM PADMA RAMA SOWJANYA GANESWARI', '22a81a6169@sves.org.in', '7013975155', 'student', 'AIM', '22A81A6169', '7013975155');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.82, 8.54, 8.23, 9.29, 8.88, 8.88, 9.44, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BONDADA VAHINI SATYA KALA', '22a81a6172@sves.org.in', '6301100912', 'student', 'AIM', '22A81A6172', '6301100912');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.41, 8.77, 7.92, 8.71, 7.91, 8.12, 8.65, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BORRA VIKASH', '22a81a6173@sves.org.in', '9441133755', 'student', 'AIM', '22A81A6173', '9441133755');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.95, 8.0, 7.54, 7.98, 7.77, 7.81, 7.74, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BURRA AVINASH', '22a81a6174@sves.org.in', '9704935980', 'student', 'AIM', '22A81A6174', '9704935980');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.76, 7.69, 7.23, 7.75, 7.35, 7.53, 7.81, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHENNURI VASANTHI', '22a81a6176@sves.org.in', '7997292889', 'student', 'AIM', '22A81A6176', '7997292889');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.8, 7.77, 7.15, 7.71, 7.63, 7.88, 7.98, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DANDUBOINA JYOTHI SWAROOP', '22a81a6179@sves.org.in', '6301007254', 'student', 'AIM', '22A81A6179', '6301007254');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.88, 7.85, 7.69, 7.86, 7.63, 8.23, 7.53, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DUGGIRALA SAI KOUSHYA', '22a81a6180@sves.org.in', '8374099466', 'student', 'AIM', '22A81A6180', '8374099466');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, 8.31, 7.69, 8.59, 8.39, 8.61, 8.37, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GHANTA VENU MADHURI', '22a81a6182@sves.org.in', '6304726531', 'student', 'AIM', '22A81A6182', '6304726531');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 8.92, 8.46, 9.06, 8.54, 9.16, 8.61, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('INDANA RAGHAVENKATA SATYANARAYANA', '22a81a6186@sves.org.in', '6300073279', 'student', 'AIM', '22A81A6186', '6300073279');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.07, 9.69, 9.08, 9.18, 9.3, 9.02, 8.74, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KALLA RAMA SRI SAI SANDEEP', '22a81a6188@sves.org.in', '9951334833', 'student', 'AIM', '22A81A6188', '9951334833');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.31, 8.38, 8.31, 8.41, 7.98, 8.67, 7.95, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARUTURI KOUSHIKA', '22a81a6189@sves.org.in', '9848602023', 'student', 'AIM', '22A81A6189', '9848602023');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.83, 8.31, 7.38, 8.29, 7.7, 7.67, 7.74, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOCHERLA HINDU', '22a81a6190@sves.org.in', '8247267574', 'student', 'AIM', '22A81A6190', '8247267574');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.29, 8.38, 7.62, 8.71, 7.98, 8.09, 8.51, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTTU SATYANARAYANA', '22a81a6194@sves.org.in', '8074645996', 'student', 'AIM', '22A81A6194', '8074645996');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.62, 8.0, 6.85, 7.69, 8.05, 7.53, 7.26, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOVVURI NIMEELA', '22a81a6195@sves.org.in', '9000158272', 'student', 'AIM', '22A81A6195', '9000158272');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 7.0, 6.46, 7.53, 7.63, 7.67, 7.53, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANE B S S BHASKAR SHANMUKHA VAMSI', '22a81a6196@sves.org.in', '6305611826', 'student', 'AIM', '22A81A6196', '6305611826');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 8.85, 7.23, 8.18, 7.98, 7.81, 7.81, 8.13, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANIKALA VIJAY KRISHNA', '22a81a6198@sves.org.in', '9391843437', 'student', 'AIM', '22A81A6198', '9391843437');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.34, 7.54, 7.0, 7.82, 7.12, 7.09, 7.19, 7.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MATTA KIRAN KUMAR', '22a81a6199@sves.org.in', '8866899666', 'student', 'AIM', '22A81A6199', '8866899666');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.01, 8.23, 7.23, 8.47, 8.05, 7.81, 8.09, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MENNI MADHAVI LATHA', '22a81a61a0@sves.org.in', '9177243781', 'student', 'AIM', '22A81A61A0', '9177243781');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 9.0, 7.92, 8.82, 8.67, 8.88, 9.3, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAINARAPU KRISHNA CHAITANYA', '22a81a61a2@sves.org.in', '9133544634', 'student', 'AIM', '22A81A61A2', '9133544634');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.06, 8.08, 7.08, 8.39, 8.67, 8.16, 7.33, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAMBULA ESWAR AKASH', '22a81a61a4@sves.org.in', '8341462856', 'student', 'AIM', '22A81A61A4', '8341462856');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.06, 8.23, 7.69, 8.39, 7.63, 7.95, 7.47, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLAPOTHU NAGA KRISHNA MADHURIMA', '22a81a61a8@sves.org.in', '7989846096', 'student', 'AIM', '22A81A61A8', '7989846096');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.9, 9.31, 8.69, 8.98, 8.74, 8.95, 8.81, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PAMIDI RESHMITHA SREE', '22a81a61a9@sves.org.in', '9347318653', 'student', 'AIM', '22A81A61A9', '9347318653');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.92, 8.92, 7.85, 7.92, 7.77, 7.88, 7.67, 7.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATTAN FARJANA', '22a81a61b2@sves.org.in', '9704019178', 'student', 'AIM', '22A81A61B2', '9704019178');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.32, 8.62, 7.0, 8.71, 8.54, 8.23, 8.67, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAMISETTI VISWAJA', '22a81a61b7@sves.org.in', '8639179966', 'student', 'AIM', '22A81A61B7', '8639179966');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.93, 9.46, 8.54, 9.06, 8.74, 9.02, 8.88, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SABBARAPU MOHAN GANESH', '22a81a61b8@sves.org.in', '9052811658', 'student', 'AIM', '22A81A61B8', '9052811658');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, 8.77, 7.46, 8.22, 7.35, 7.37, 7.67, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SHEIK RIHANA', '22a81a61c0@sves.org.in', '8688004493', 'student', 'AIM', '22A81A61C0', '8688004493');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.23, 8.15, 7.46, 8.47, 7.98, 8.3, 8.54, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SOMA GOWTHAMI', '22a81a61c2@sves.org.in', '9391318590', 'student', 'AIM', '22A81A61C2', '9391318590');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.59, 9.08, 7.85, 8.77, 8.39, 8.95, 8.58, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UNDURTHI KARTHIK SANJAY', '22a81a61c5@sves.org.in', '7396496696', 'student', 'AIM', '22A81A61C5', '7396496696');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.47, 7.54, 7.0, 7.57, 7.28, 7.6, 7.4, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VARRI BINDU SURYA SRI', '22a81a61c6@sves.org.in', '9100927227', 'student', 'AIM', '22A81A61C6', '9100927227');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.12, 8.31, 7.54, 8.1, 8.46, 8.16, 8.05, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERANKI SAI SRIVALLI', '22a81a61c8@sves.org.in', '9573821549', 'student', 'AIM', '22A81A61C8', '9573821549');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.61, 8.77, 8.46, 8.41, 8.26, 8.88, 8.88, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VERNENI SANKEERTHANA', '22a81a61c9@sves.org.in', '9959322022', 'student', 'AIM', '22A81A61C9', '9959322022');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.97, 9.69, 9.23, 9.29, 8.46, 9.16, 8.88, 8.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TALAPATI RAVINDRA', '23a85a6106@sves.org.in', '7207022630', 'student', 'AIM', '23A85A6106', '7207022630');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, NULL, NULL, 8.33, 8.19, 7.88, 8.39, 7.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEMPADAPU RAMA KRISHNA', '23a85a6108@sves.org.in', '9390492076', 'student', 'AIM', '23A85A6108', '9390492076');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.12, NULL, NULL, 8.29, 7.98, 8.74, 8.02, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANDEPU JAGAN MOHAN SAI', '23a85a6110@sves.org.in', '7671001426', 'student', 'AIM', '23A85A6110', '7671001426');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.35, NULL, NULL, 7.71, 6.72, 6.88, 7.6, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KUDUPUDI NARSIMHA SAI SANDEEP', '23a85a6111@sves.org.in', '9014532005', 'student', 'AIM', '23A85A6111', '9014532005');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.86, NULL, NULL, 8.23, 7.91, 7.67, 7.88, 7.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BUDDANA DURGA VARA PRASAD', '22a81a4302@sves.org.in', '8919766303', 'student', 'CAI', '22A81A4302', '8919766303');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.73, 8.46, 7.15, 7.84, 6.98, 7.74, 7.53, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('D B ABHISHEK ANANTAPALLI', '22a81a4305@sves.org.in', '8317618694', 'student', 'CAI', '22A81A4305', '8317618694');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.17, 9.38, 8.77, 9.53, 8.81, 9.16, 9.58, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GARIMELLA VASANTHA SURYA PRASAD', '22a81a4306@sves.org.in', '7893156396', 'student', 'CAI', '22A81A4306', '7893156396');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.26, 8.0, 8.23, 9.06, 7.67, 7.88, 8.05, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GETCHA BHEESHMIKA', '22a81a4307@sves.org.in', '7013333902', 'student', 'CAI', '22A81A4307', '7013333902');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.12, 8.38, 7.46, 7.75, 7.84, 8.19, 8.67, 8.52, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GOLTHI SONI HARIKA', '22a81a4309@sves.org.in', '7989682765', 'student', 'CAI', '22A81A4309', '7989682765');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.91, 8.77, 7.92, 8.0, 7.12, 7.7, 7.81, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUDIMETLA ANU KARISHMA', '22a81a4310@sves.org.in', '8328533689', 'student', 'CAI', '22A81A4310', '8328533689');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.24, 9.85, 9.08, 9.29, 9.21, 9.02, 9.44, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GULLA HARI SANKARA BHAVANI PRASAD', '22a81a4311@sves.org.in', '8978615307', 'student', 'CAI', '22A81A4311', '8978615307');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.21, 8.38, 7.38, 7.63, 8.02, 8.09, 8.74, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JALLA PADMA SRI', '22a81a4312@sves.org.in', '8520847664', 'student', 'CAI', '22A81A4312', '8520847664');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.54, 7.23, 7.86, 7.05, 8.74, 9.14, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KUNCHANAPALLI HEMA LALITHA DURGA', '22a81a4316@sves.org.in', '9392996754', 'student', 'CAI', '22A81A4316', '9392996754');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.89, 8.0, 7.38, 7.51, 7.26, 7.98, 8.51, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KAKUMANU VENKATA SAI SRI DEEPIKA', '22a81a4317@sves.org.in', '8712152004', 'student', 'CAI', '22A81A4317', '8712152004');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.89, 9.46, 8.69, 8.75, 8.26, 8.95, 9.21, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KARUTURI POOJITHA', '22a81a4318@sves.org.in', '7671968916', 'student', 'CAI', '22A81A4318', '7671968916');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.63, 8.54, 8.46, 8.71, 8.05, 8.88, 8.61, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KESANI NAVYA SREE', '22a81a4321@sves.org.in', '9392485248', 'student', 'CAI', '22A81A4321', '9392485248');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.71, 8.46, 8.23, 8.94, 8.39, 9.16, 8.67, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOKKIRIMETTI PAVAN NAGA VENKATA KUMAR', '22a81a4322@sves.org.in', '9010635259', 'student', 'CAI', '22A81A4322', '9010635259');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 9.0, 7.62, 8.37, 7.33, 8.46, 8.33, 7.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOLLEPARA SATHVIKA', '22a81a4323@sves.org.in', '8096513001', 'student', 'CAI', '22A81A4323', '8096513001');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.3, 9.0, 7.69, 8.94, 7.47, 7.77, 8.33, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONA KARTHIK', '22a81a4324@sves.org.in', '9640715598', 'student', 'CAI', '22A81A4324', '9640715598');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.99, 8.0, 6.85, 7.86, 7.81, 8.61, 8.05, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONGARA MEGHANA', '22a81a4325@sves.org.in', '9381687830', 'student', 'CAI', '22A81A4325', '9381687830');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.23, 9.31, 9.41, 9.3, 9.44, 9.02, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KOTHA DREAM SRI VENKATA THANMAI', '22a81a4327@sves.org.in', '8297877555', 'student', 'CAI', '22A81A4327', '8297877555');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.2, 9.69, 8.62, 9.08, 8.88, 9.44, 9.58, 9.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('LINGAM GOWTHAM KUMAR', '22a81a4329@sves.org.in', '9014305640', 'student', 'CAI', '22A81A4329', '9014305640');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.8, 8.08, 7.0, 8.0, 7.35, 8.19, 8.05, 7.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MALLIDI SURYANARAYANA REDDY', '22a81a4330@sves.org.in', '9347445773', 'student', 'CAI', '22A81A4330', '9347445773');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.2, 9.08, 7.77, 8.2, 8.23, 8.19, 8.02, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAGANTI BAVANA', '22a81a4331@sves.org.in', '9030207566', 'student', 'CAI', '22A81A4331', '9030207566');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9, 9.46, 9.0, 9.29, 8.95, 8.61, 9.3, 8.43, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAKA JAHNAVI NAGA SAI', '22a81a4333@sves.org.in', '8519807791', 'student', 'CAI', '22A81A4333', '8519807791');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.05, 8.0, 7.69, 7.94, 7.42, 8.26, 8.81, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDA GOVARDHANA SUBHASH', '22a81a4335@sves.org.in', '9392676529', 'student', 'CAI', '22A81A4335', '9392676529');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.77, 9.08, 8.69, 8.82, 8.61, 8.67, 8.88, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAARLA DURGA PRASAD', '22a81a4338@sves.org.in', '7013379791', 'student', 'CAI', '22A81A4338', '7013379791');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.46, 9.15, 9.02, 8.61, 9.16, 8.58, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NAGIREDDY TULASI SATYAVATHI', '22a81a4339@sves.org.in', '9652562592', 'student', 'CAI', '22A81A4339', '9652562592');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.43, 8.69, 7.85, 8.49, 8.33, 8.61, 8.65, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NARKIDIMILLI SAKETH', '22a81a4340@sves.org.in', '8555883949', 'student', 'CAI', '22A81A4340', '8555883949');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.09, 9.69, 9.08, 9.0, 8.88, 9.16, 9.16, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ODURI SRINIVAS', '22a81a4342@sves.org.in', '9959325457', 'student', 'CAI', '22A81A4342', '9959325457');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.38, 9.62, 9.38, 9.41, 9.16, 9.3, 9.58, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PADILAM KALYAN KUMAR', '22a81a4344@sves.org.in', '6300808054', 'student', 'CAI', '22A81A4344', '6300808054');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.25, 9.85, 9.38, 9.41, 8.61, 9.16, 9.16, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PAIDY DEEPAK', '22a81a4345@sves.org.in', '9618045505', 'student', 'CAI', '22A81A4345', '9618045505');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.04, 8.08, 7.54, 7.96, 7.7, 8.23, 8.44, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PALLI KALYAN BABU', '22a81a4346@sves.org.in', '8121606415', 'student', 'CAI', '22A81A4346', '8121606415');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.24, 8.69, 8.54, 7.9, 7.91, 7.77, 8.16, 8.78, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PEDAPUDI SRINIVASA SAIRAMA DATTATREYA', '22a81a4347@sves.org.in', '9390447466', 'student', 'CAI', '22A81A4347', '9390447466');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.11, 9.46, 7.92, 7.9, 7.21, 7.67, 8.33, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PERURI SANDEEP', '22a81a4349@sves.org.in', '9063507445', 'student', 'CAI', '22A81A4349', '9063507445');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.1, 8.31, 7.54, 8.1, 7.91, 8.33, 8.12, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PINNINTI DEEPIKA', '22a81a4350@sves.org.in', '9490043898', 'student', 'CAI', '22A81A4350', '9490043898');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.38, 8.46, 8.8, 8.74, 9.3, 9.02, 9.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('RAPAKA DIVYA', '22a81a4351@sves.org.in', '9963099088', 'student', 'CAI', '22A81A4351', '9963099088');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.23, 8.92, 9.14, 8.88, 8.74, 9.16, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ROWTHULA VARSHINI', '22a81a4352@sves.org.in', '8247336585', 'student', 'CAI', '22A81A4352', '8247336585');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.42, 8.15, 7.77, 8.53, 8.58, 8.46, 9.02, 8.35, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SINGAMSETTI SYAMANTH UMA SAI KIRAN', '22a81a4353@sves.org.in', '7671888674', 'student', 'CAI', '22A81A4353', '7671888674');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.61, 9.0, 7.69, 8.69, 8.61, 8.88, 8.46, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SAKILE BALU MAHENDRA', '22a81a4355@sves.org.in', '9491919575', 'student', 'CAI', '22A81A4355', '9491919575');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.28, 8.77, 8.15, 8.2, 7.91, 8.33, 8.61, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SALADI DEEPIKA', '22a81a4356@sves.org.in', '9392499985', 'student', 'CAI', '22A81A4356', '9392499985');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.28, 9.62, 8.92, 9.29, 8.65, 9.72, 9.72, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SARIKA CHANDU SRI VENKATA PAVAN KUMAR', '22a81a4357@sves.org.in', '9014664141', 'student', 'CAI', '22A81A4357', '9014664141');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.18, 8.15, 7.62, 8.04, 7.7, 8.86, 8.21, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SIDDHA VINAY KUMAR', '22a81a4359@sves.org.in', '9849372827', 'student', 'CAI', '22A81A4359', '9849372827');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.02, 9.38, 9.08, 8.71, 8.74, 9.3, 9.16, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('TATINI PRUDHVI SARANYA', '22a81a4361@sves.org.in', '6301669596', 'student', 'CAI', '22A81A4361', '6301669596');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 9.08, 8.46, 9.0, 8.33, 8.88, 8.88, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('THOTA AMRUTHA SINDHU', '22a81a4362@sves.org.in', '8919239911', 'student', 'CAI', '22A81A4362', '8919239911');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9, 9.69, 9.0, 9.18, 8.74, 9.02, 8.88, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERABATTHULA SAI CHANDANA', '22a81a4364@sves.org.in', '9581356416', 'student', 'CAI', '22A81A4364', '9581356416');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.01, 9.31, 8.69, 8.9, 8.74, 9.3, 9.16, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VUDATHA PAVANI SRI LAKSHMI SAVITHRI', '22a81a4365@sves.org.in', '9951251096', 'student', 'CAI', '22A81A4365', '9951251096');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.96, 9.38, 8.92, 9.35, 8.3, 9.3, 9.16, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ADDAGALLA REKHA SREE LAKSHMI HARI PRIYA', '22a81a4367@sves.org.in', '9441912666', 'student', 'CAI', '22A81A4367', '9441912666');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, 8.77, 8.0, 8.98, 8.26, 8.54, 8.81, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AINAPURAPU L M DATHA BHASKARA GOPAL', '22a81a4368@sves.org.in', '7569882778', 'student', 'CAI', '22A81A4368', '7569882778');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.19, 8.54, 7.77, 8.1, 7.91, 8.61, 8.54, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ALLADI PRIYA VARSHINI BHANU SREE', '22a81a4370@sves.org.in', '9959299885', 'student', 'CAI', '22A81A4370', '9959299885');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 9.0, 7.23, 8.45, 8.19, 8.95, 9.3, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ALLI VENKATA SAI SURYA DIWAKAR', '22a81a4371@sves.org.in', '6302722352', 'student', 'CAI', '22A81A4371', '6302722352');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.11, 9.31, 8.92, 9.41, 9.02, 9.07, 9.3, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AMBADIPUDI ABRAHAM KRUPA KIRAN SARMA', '22a81a4372@sves.org.in', '9391115911', 'student', 'CAI', '22A81A4372', '9391115911');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.21, 8.46, 7.23, 8.04, 7.77, 8.81, 8.46, 8.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('AVULA KRISHNA VENKATA KOUSHIK', '22a81a4374@sves.org.in', '7382484830', 'student', 'CAI', '22A81A4374', '7382484830');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.25, 8.62, 7.77, 8.69, 7.56, 8.23, 8.54, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BATHULA SAI CHARAN', '22a81a4375@sves.org.in', '6309444011', 'student', 'CAI', '22A81A4375', '6309444011');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.99, 9.38, 8.69, 9.06, 8.74, 9.0, 9.09, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BATTELANKA PARASURAM SAI KUMAR', '22a81a4376@sves.org.in', '6303598606', 'student', 'CAI', '22A81A4376', '6303598606');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.99, 8.62, 7.0, 7.92, 7.28, 7.81, 8.54, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BUDDIGA SRIRAM', '22a81a4377@sves.org.in', '9032881413', 'student', 'CAI', '22A81A4377', '9032881413');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.28, 8.62, 7.69, 8.71, 8.05, 8.19, 8.67, 7.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('CHINIMILLI GNANA DEVI PRASANNA', '22a81a4378@sves.org.in', '6281659967', 'student', 'CAI', '22A81A4378', '6281659967');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.01, 8.08, 7.77, 8.22, 7.77, 7.67, 8.19, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DANDAMUDI VARUN', '22a81a4379@sves.org.in', '8309352741', 'student', 'CAI', '22A81A4379', '8309352741');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 9.08, 8.0, 8.47, 7.98, 8.88, 8.33, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DWARAMPUDI LOKESH ADHIREDDY', '22a81a4381@sves.org.in', '9391598334', 'student', 'CAI', '22A81A4381', '9391598334');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.31, 9.0, 7.85, 8.57, 8.33, 8.02, 7.98, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GODITI SRI DEEPTI', '22a81a4384@sves.org.in', '8260936009', 'student', 'CAI', '22A81A4384', '8260936009');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.79, 9.23, 7.92, 9.06, 8.81, 8.74, 9.02, 8.65, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GRANDHI DILEEP KUMAR', '22a81a4385@sves.org.in', '9848576525', 'student', 'CAI', '22A81A4385', '9848576525');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.53, 8.92, 8.15, 8.71, 8.05, 9.02, 8.46, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('GUDIMELLA PAVANI VAISHNAVI', '22a81a4386@sves.org.in', '9014756327', 'student', 'CAI', '22A81A4386', '9014756327');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.41, 9.38, 7.77, 8.69, 8.19, 8.19, 8.61, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JAVVADI HARSHITHA', '22a81a4389@sves.org.in', '6281732203', 'student', 'CAI', '22A81A4389', '6281732203');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 9.38, 8.77, 8.94, 8.26, 9.16, 8.88, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('JAYAVARAPU RAHITYA', '22a81a4390@sves.org.in', '6304919558', 'student', 'CAI', '22A81A4390', '6304919558');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.83, 9.23, 8.69, 8.86, 9.02, 9.02, 8.54, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KANTAMSETTI PUJITHA JYOTHI', '22a81a4393@sves.org.in', '7989474795', 'student', 'CAI', '22A81A4393', '7989474795');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.54, 9.0, 9.41, 9.09, 9.35, 9.16, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KONDETI GAYATHRI VARAPRASADHINI', '22a81a4395@sves.org.in', '9912553797', 'student', 'CAI', '22A81A4395', '9912553797');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.62, 9.23, 8.54, 8.59, 8.26, 9.07, 8.46, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('KUNCHE MOUNIKA', '22a81a4397@sves.org.in', '9912941833', 'student', 'CAI', '22A81A4397', '9912941833');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.45, 9.15, 7.38, 8.63, 8.26, 9.02, 8.54, 8.09, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('LINGAMPALLI BHARGAV SAI', '22a81a4398@sves.org.in', '9390192684', 'student', 'CAI', '22A81A4398', '9390192684');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.46, 9.15, 8.23, 8.94, 7.42, 8.93, 8.12, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MAIPALA CHIRANJEEVI', '22a81a4399@sves.org.in', '9121859628', 'student', 'CAI', '22A81A4399', '9121859628');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.91, 9.38, 8.54, 9.18, 8.67, 9.07, 8.95, 8.57, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MANGINA PAVAN KUMAR PURNAYYA', '22a81a43a1@sves.org.in', '6281406054', 'student', 'CAI', '22A81A43A1', '6281406054');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.68, 9.0, 8.23, 8.71, 8.33, 9.28, 8.46, 8.74, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MEDANKULA TEJASWIN', '22a81a43a2@sves.org.in', '8639432353', 'student', 'CAI', '22A81A43A2', '8639432353');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.37, 9.08, 8.0, 8.47, 8.26, 8.02, 8.54, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NETHI SRI CHARAN MANI MALLESH', '22a81a43a5@sves.org.in', '6301908108', 'student', 'CAI', '22A81A43A5', '6301908108');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.89, 9.54, 8.85, 9.18, 8.39, 9.23, 8.39, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NILLA NANDINI VEERA NAGA LAKSHMI', '22a81a43a8@sves.org.in', '7032459373', 'student', 'CAI', '22A81A43A8', '7032459373');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.07, 9.54, 9.0, 8.94, 8.61, 9.42, 9.16, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PASAM HEMA PAVANI SAI DURGA', '22a81a43a9@sves.org.in', '9885155678', 'student', 'CAI', '22A81A43A9', '9885155678');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.8, 9.08, 9.0, 8.75, 8.67, 8.72, 8.74, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PADILAM SAI RAM', '22a81a43b0@sves.org.in', '7207385947', 'student', 'CAI', '22A81A43B0', '7207385947');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.65, 9.08, 7.85, 8.71, 8.46, 8.39, 9.09, 8.91, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PASUMARTHI HIMANTH NAGA CHARAN', '22a81a43b1@sves.org.in', '6300114947', 'student', 'CAI', '22A81A43B1', '6300114947');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.09, 9.69, 8.92, 9.04, 9.02, 9.21, 8.95, 8.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PATURI JAYASREE', '22a81a43b2@sves.org.in', '9030798879', 'student', 'CAI', '22A81A43B2', '9030798879');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.49, 9.38, 8.08, 8.71, 7.77, 8.81, 8.81, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PERUMALLA NITHIN', '22a81a43b4@sves.org.in', '6304550067', 'student', 'CAI', '22A81A43B4', '6304550067');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.16, 9.0, 7.69, 8.33, 7.98, 8.51, 7.98, 7.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PINNINTI DEEPTHI MAI', '22a81a43b5@sves.org.in', '9390987468', 'student', 'CAI', '22A81A43B5', '9390987468');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.69, 9.0, 9.18, 9.02, 9.77, 9.16, 8.83, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('POKALA SAI KARTHIK', '22a81a43b6@sves.org.in', '7093592711', 'student', 'CAI', '22A81A43B6', '7093592711');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.88, 9.62, 8.62, 8.77, 8.46, 8.79, 9.02, 8.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SAMAYAMANTHULA SWARNA SRI', '22a81a43b8@sves.org.in', '9110352849', 'student', 'CAI', '22A81A43B8', '9110352849');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.54, 9.38, 8.31, 8.57, 8.33, 8.72, 8.33, 8.22, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SANNAYILA DEEPTHI', '22a81a43b9@sves.org.in', '9381698422', 'student', 'CAI', '22A81A43B9', '9381698422');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.81, 9.15, 8.38, 9.06, 8.33, 9.35, 8.88, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SURAVARAPU MANASA VALLI', '22a81a43c1@sves.org.in', '8328252833', 'student', 'CAI', '22A81A43C1', '8328252833');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.96, 9.23, 9.15, 9.29, 8.67, 9.21, 8.88, 8.3, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('SUTHAPALLI YASWANTH SRINIVAS GUPTHA', '22a81a43c2@sves.org.in', '8919645848', 'student', 'CAI', '22A81A43C2', '8919645848');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.69, 9.15, 8.46, 9.06, 8.26, 8.74, 9.16, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('UDISI RINA SAI LAKSHMI PRASANNA', '22a81a43c3@sves.org.in', '9154556856', 'student', 'CAI', '22A81A43C3', '9154556856');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9, 9.46, 8.62, 9.18, 8.81, 9.21, 9.23, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('ULASA KIRAN ADITYA', '22a81a43c4@sves.org.in', '7330950541', 'student', 'CAI', '22A81A43C4', '7330950541');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.63, 9.0, 7.62, 8.65, 8.61, 9.0, 9.09, 8.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VADDI AMRUTHA', '22a81a43c5@sves.org.in', '9502973428', 'student', 'CAI', '22A81A43C5', '9502973428');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.03, 8.92, 7.77, 8.57, 7.49, 7.81, 8.05, 7.61, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VALLURI TEJASWI', '22a81a43c7@sves.org.in', '6301342247', 'student', 'CAI', '22A81A43C7', '6301342247');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.88, 7.46, 6.85, 8.04, 7.98, 8.51, 8.33, 7.87, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEEDHI SONY', '22a81a43c8@sves.org.in', '8639033911', 'student', 'CAI', '22A81A43C8', '8639033911');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8, 7.15, 7.08, 8.22, 8.19, 8.65, 8.26, 8.26, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('VEERAVALLI SATISH', '22a81a43c9@sves.org.in', '6303811212', 'student', 'CAI', '22A81A43C9', '6303811212');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.87, 8.15, 7.0, 8.1, 7.7, 8.09, 7.98, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('Y GOPI PRADEEP KUMAR', '22a81a43d0@sves.org.in', '7093776351', 'student', 'CAI', '22A81A43D0', '7093776351');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.22, 9.69, 9.0, 9.23, 8.61, 9.58, 9.44, 9.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('BANDI SEERSHIKA', '23a85a4301@sves.org.in', '7670846135', 'student', 'CAI', '23A85A4301', '7670846135');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.58, NULL, NULL, 8.65, 7.91, 8.88, 8.74, 8.7, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('DAKSHANADI KOWSALYA', '23a85a4302@sves.org.in', '8121056974', 'student', 'CAI', '23A85A4302', '8121056974');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 9.03, NULL, NULL, 9.0, 8.74, 9.02, 9.16, 9.17, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('IMANDI HEMANTH MEHER SRI RAM KUMAR', '23a85a4303@sves.org.in', '7981836768', 'student', 'CAI', '23A85A4303', '7981836768');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.27, NULL, NULL, 8.41, 7.35, 8.44, 8.58, 8.48, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MURALA SASIDHAR', '23a85a4305@sves.org.in', '9492593121', 'student', 'CAI', '23A85A4305', '9492593121');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.17, NULL, NULL, 7.41, 6.37, 7.07, 7.51, 7.39, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('MADDALA AAKASH', '23a85a4307@sves.org.in', '9603446337', 'student', 'CAI', '23A85A4307', '9603446337');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.39, NULL, NULL, 8.71, 8.26, 8.26, 8.67, 8.0, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('NANDAM MOHANA ADITYA', '23a85a4309@sves.org.in', '6303661939', 'student', 'CAI', '23A85A4309', '6303661939');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 7.89, NULL, NULL, 8.1, 7.7, 7.67, 7.98, 7.96, NULL);

INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES ('PONDURU TRIVENI', '23a85a4311@sves.org.in', '9346109647', 'student', 'CAI', '23A85A4311', '9346109647');
SET @last_id = LAST_INSERT_ID();
INSERT INTO academic_records (user_id, cgpa, sgpa_sem1, sgpa_sem2, sgpa_sem3, sgpa_sem4, sgpa_sem5, sgpa_sem6, sgpa_sem7, sgpa_sem8) VALUES (@last_id, 8.73, NULL, NULL, 9.06, 8.12, 8.74, 9.02, 8.61, NULL);
