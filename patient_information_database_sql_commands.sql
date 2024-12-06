/*  Table Creation Scripts */

CREATE TABLE patient ( 
    patient_id    INTEGER NOT NULL PRIMARY KEY, 
    first_name    VARCHAR2(56) NOT NULL, 
    last_name     VARCHAR2(56) NOT NULL, 
    address       VARCHAR2(100) NOT NULL, 
    date_of_birth DATE NOT NULL 
);

CREATE TABLE department ( 
    department_id   VARCHAR2(10) NOT NULL PRIMARY KEY, 
    department_name VARCHAR2(56) NOT NULL 
);

CREATE TABLE specialization ( 
    specialty_code  VARCHAR2(10) NOT NULL PRIMARY KEY, 
    specialty       VARCHAR2(256) NOT NULL 
);

CREATE TABLE staff ( 
    staff_id       INTEGER NOT NULL PRIMARY KEY, 
    staff_name     VARCHAR2(70) NOT NULL, 
    contact_email  VARCHAR2(80) NOT NULL, 
    department_id  VARCHAR2(10) NOT NULL, 
    specialty_code VARCHAR2(10) NOT NULL, 
    FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE CASCADE, 
    FOREIGN KEY (specialty_code) REFERENCES specialization(specialty_code) ON DELETE CASCADE 
);

CREATE TABLE appointment ( 
    appointment_ref  VARCHAR2(56) NOT NULL PRIMARY KEY, 
    appointment_date TIMESTAMP(0) NOT NULL, 
    patient_id       INTEGER NOT NULL, 
    staff_id         INTEGER NOT NULL, 
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE, 
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON DELETE CASCADE 
);

CREATE TABLE medical_record ( 
    medical_record_id VARCHAR2(15) NOT NULL PRIMARY KEY, 
    diagnosis         CLOB NOT NULL, 
    appointment_ref   VARCHAR2(56) NOT NULL, 
    height_at_visit   FLOAT(6) NOT NULL, 
    weight_at_visit   FLOAT(6) NOT NULL, 
    blood_pressure    VARCHAR2(15) NOT NULL, 
    FOREIGN KEY (appointment_ref) REFERENCES appointment(appointment_ref) ON DELETE CASCADE 
);

/*  Data Insertion Scripts */


INSERT ALL  
INTO specialization (specialty_code,specialty) VALUES ('DD-1','Doctor') 
INTO specialization (specialty_code,specialty) VALUES ('GG-1','Gynaecologist') 
INTO specialization (specialty_code,specialty) VALUES ('NN-1','Nurse') 
INTO specialization (specialty_code,specialty) VALUES ('SS-1','Surgeon') 
SELECT 1 FROM DUAL;

INSERT ALL  
INTO department (department_id,department_name) VALUES ('Obste-H','Obstetrics & Gynecology') 
INTO department (department_id,department_name) VALUES ('Pedia-H','Pediatrics') 
INTO department (department_id,department_name) VALUES ('Inter-H','Internal Medicine') 
INTO department (department_id,department_name) VALUES ('Cardi-H','Cardiology') 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (347,'Jack Jones','jjones.992@goodhealth.com','Obste-H','DD-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (366,'Fiona Naey','fnaey.592@goodhealth.com','Pedia-H','DD-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (394,'Henry hdeen','hhdeen.317@goodhealth.com','Inter-H','GG-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (176,'Kirch Johnson','kjohnson.908@goodhealth.com','Pedia-H','NN-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (82,'George Jones','gjones.570@goodhealth.com','Obste-H','GG-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (547,'Bob Lime','blime.329@goodhealth.com','Inter-H','NN-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (524,'George Miller','georgemiller.139@goodhealth.com','Cardi-H','SS-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (42,'Loveline hdeen','lhdeen.749@goodhealth.com','Inter-H','DD-1') 
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (673,'Charlie Smith','csmith.985@goodhealth.com','Obste-H','NN-1') 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (34,'Loveline','Johnson',TO_DATE('24-02-1986', 'dd-MM-yyyy'),'30 Sagba Road') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (27,'Kim','Helen',TO_DATE('22-02-1996', 'dd-MM-yyyy'),'52 Park Lane') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (61,'Due','Miller',TO_DATE('25-02-1983', 'dd-MM-yyyy'),'63 Avenue street') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (24,'Niely','Naey',TO_DATE('05-03-1948', 'dd-MM-yyyy'),'40 St Peter Road') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (60,'Praise','Jones',TO_DATE('22-02-1994', 'dd-MM-yyyy'),'46 Pepple Creek') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (38,'ThankGod','Naey',TO_DATE('06-03-1944', 'dd-MM-yyyy'),'1 Forth and Back  Street') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (33,'George','Wilson',TO_DATE('01-03-1967', 'dd-MM-yyyy'),'7 Oakland Off Ladg') 
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (72,'Isabella','Wisdom',TO_DATE('03-03-1956', 'dd-MM-yyyy'),'4 Harry Smiles Road') 
SELECT 1 FROM DUAL;

INSERT ALL  
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-1460',TO_DATE('19-05-2024 10:30', 'dd-MM-yyyy hh:mi'),34,347) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3086',TO_DATE('17-05-2024 10:45', 'dd-MM-yyyy hh:mi'),27,366) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2249',TO_DATE('15-04-2024 10:00', 'dd-MM-yyyy hh:mi'),61,366) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-6086',TO_DATE('10-01-2024 11:00', 'dd-MM-yyyy hh:mi'),24,394) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-8008',TO_DATE('09-01-2024 11:45', 'dd-MM-yyyy hh:mi'),60,394) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3241',TO_DATE('02-01-2024 11:15', 'dd-MM-yyyy hh:mi'),38,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3344',TO_DATE('28-01-2023 10:15', 'dd-MM-yyyy hh:mi'),72,82) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-4077',TO_DATE('24-01-2023 09:15', 'dd-MM-yyyy hh:mi'),38,547) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-5226',TO_DATE('22-01-2023 09:30', 'dd-MM-yyyy hh:mi'),33,524) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2395',TO_DATE('19-01-2023 09:00', 'dd-MM-yyyy hh:mi'),60,524) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-8967',TO_DATE('13-01-2023 11:00', 'dd-MM-yyyy hh:mi'),34,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-5199',TO_DATE('08-01-2023 10:45', 'dd-MM-yyyy hh:mi'),27,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3462',TO_DATE('06-01-2023 08:15', 'dd-MM-yyyy hh:mi'),61,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-8673',TO_DATE('03-01-2023 10:00', 'dd-MM-yyyy hh:mi'),24,347) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2182',TO_DATE('27-01-2022 08:45', 'dd-MM-yyyy hh:mi'),72,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-4298',TO_DATE('25-01-2022 11:15', 'dd-MM-yyyy hh:mi'),38,547) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-1739',TO_DATE('21-01-2022 10:30', 'dd-MM-yyyy hh:mi'),60,42) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3202',TO_DATE('20-01-2022 08:00', 'dd-MM-yyyy hh:mi'),34,42) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-6478',TO_DATE('18-01-2022 09:15', 'dd-MM-yyyy hh:mi'),27,347) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2447',TO_DATE('14/01/2022 11:15', 'dd-MM-yyyy hh:mi'),61,673) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2484',TO_DATE('12/01/2022 08:00', 'dd-MM-yyyy hh:mi'),24,394) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-1943',TO_DATE('10/01/2022 09:30', 'dd-MM-yyyy hh:mi'),72,673) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-3645',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),38,524) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-5112',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),60,366) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-6866',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),38,82) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-5715',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),34,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-2083',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),27,176) 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values ('APT-8577',TO_DATE('09/01/2022 10:00', 'dd-MM-yyyy hh:mi'),61,42) 
SELECT 1 FROM DUAL;

INSERT ALL 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-98770','Anaemia',1.77,63.91,'98/82 mmHg','APT-6086') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-10145','Acute chest pain',1.76,97.90,'111/71 mmHg','APT-8008') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-51164','Internal bleeding from accident',1.76,75.36,'130/66 mmHg','APT-3241') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-79038','Routine checkup all vital signs normal',1.76,87.39,'108/86 mmHg','APT-3344') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-35101','High sugar level',1.98,79.28,'131/71 mmHg','APT-4077') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-33268','Lower leg swelling possible infection',1.59,52.07,'112/72 mmHg','APT-5226') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-10075','Minor skin irritation topical medication prescribed',1.74,55.10,'91/83 mmHg','APT-2395') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-17004','indisgestion',1.67,81.02,'92/89 mmHg','APT-8967') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-41872','Minor neck dislocation',1.71,63.52,'95/75 mmHg','APT-5199') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-88498','Apparent stomach bug fluids and rest recommended',1.83,56.38,'135/87 mmHg','APT-3462') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-93515','Potential muscle strain rest and physical therapy advised',1.99,84.32,'107/88 mmHg','APT-8673') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-98815','Bleeding nose from fall',1.85,65.84,'134/60 mmHg','APT-2182') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-22547','Unlikely fracture based on initial X-rays follow-up recommended',1.99,82.57,'129/62 mmHg','APT-4298') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-91082','Headache from tootache',1.84,77.25,'122/90 mmHg','APT-1739') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-61223','Follow-up visit for previous condition progress noted',1.67,99.97,'102/67 mmHg','APT-3202') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-86940','Eye irritation shows allergic reaction',1.74,68.94,'108/67 mmHg','APT-6478') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-78514','Low sugar level',1.78,64.31,'107/85 mmHg','APT-2447') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-69722','Mild seasonal allergy flare-up',1.71,58.85,'98/60 mmHg','APT-2484') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-68003','Possible vitamin deficiency requiring further testing',1.86,83.92,'127/68 mmHg','APT-1943') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-36132','Insulin resistance',1.61,76.17,'128/76 mmHg','APT-3645') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-92654','Stomach enlargemnt',1.97,60.92,'127/62 mmHg','APT-5112') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-39074','Abnormal growth on the face',1.90,77.97,'123/62 mmHg','APT-6866') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-23713','Abnormal growth on the skin',1.79,66.34,'117/80 mmHg','APT-5715') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-56397','Gall bladder',1.65,86.20,'131/71 mmHg','APT-2083') 
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES ('MR-18754','Eye irritation from screen time',1.53,66.50,'95/68 mmHg','APT-8577') 
SELECT 1 FROM DUAL;

/* Sample Queries*/


--Question: List all patients, staff along with staff specilization with future with appointments 
SELECT first_name || ' ' || last_name as patient, TO_CHAR(appointment_date,  'dd Month yyyy') AS appointment_date, 
       TO_CHAR(appointment_date, 'hh24:mi') AS appointment_time, staff_name, specialty  
FROM patient JOIN appointment   
    ON patient.patient_id = appointment.patient_id   
    JOIN staff   
    ON appointment.staff_id = staff.staff_id   
    JOIN specialization  
    ON staff.specialty_code = specialization.specialty_code   
WHERE appointment_ref NOT IN (SELECT appointment_ref FROM medical_record)

-- Question: Count number of staff in each department 
SELECT department_name, COUNT(DISTINCT staff_id) AS staff_count  
FROM department JOIN staff  
ON department.department_id = staff.department_id  
GROUP BY department_name  
ORDER BY staff_count DESC

-- Pull up all the diagnoses of patients who visited the cardiologist
SELECT appointment_date, diagnosis, staff_name, appointment.patient_id, specialty, department_name 
FROM appointment JOIN medical_record  
     ON appointment.appointment_ref = medical_record.appointment_ref  
     LEFT JOIN staff  
     ON appointment.staff_id = staff.staff_id 
     LEFT JOIN department  
     ON staff.department_id = department.department_id  
     LEFT JOIN specialization  
     ON staff.specialty_code = specialization.specialty_code 
WHERE staff.specialty_code = 'SS-1' AND staff.department_id = 'Cardi-H'

/* ROLES AND VIEW PRIVILEDGES GRANTED*/
-- CREATE ROLE patients;
-- CREATE ROLE staff;
-- CREATE ROLE admin; 

-- CREATE VIEW patient_data AS 
-- SELECT patient.patient_id, first_name || ' ' || last_name as patient, address, date_of_birth, appointment_date, staff_name
-- FROM patient JOIN appointment
-- ON patient.patient_id = appointment.patient_id 
-- JOIN staff 
-- ON appointment.staff_id = staff.staff_id;

-- GRANT SELECT ON patient_data TO patients;

-- CREATE VIEW medical_records_data AS 
-- SELECT patient.patient_id, first_name || ' ' || last_name as patient,  date_of_birth, diagnosis
-- FROM patient JOIN appointment
-- ON patient.patient_id = appointment.patient_id 
-- JOIN medical_record
-- ON appointment.appointment_ref = medical_record.appointment_ref;

-- GRANT SELECT ON medical_records_data TO staff;


-- DROP TABLE medical_record;
-- DROP TABLE appointment;
-- DROP TABLE patient;
-- DROP TABLE staff;
-- DROP TABLE specialization;
-- DROP TABLE department;