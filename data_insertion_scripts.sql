/* Insertion Scripts */

INSERT ALL
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (347,Jack Jones,jjones.992@goodhealth.com,Obste-H,DD-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (366,Fiona Naey,fnaey.592@goodhealth.com,Pedia-H,DD-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (394,Henry hdeen,hhdeen.317@goodhealth.com,Inter-H,GG-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (176,Kirch Johnson,kjohnson.908@goodhealth.com,Pedia-H,NN-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (82,George Jones,gjones.570@goodhealth.com,Obste-H,GG-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (547,Bob Lime,blime.329@goodhealth.com,Inter-H,NN-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (524,George Miller,georgemiller.139@goodhealth.com,Cardi-H,SS-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (176,Alice Leech,aleech.167@goodhealth.com,Inter-H,MM-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (42,Loveline hdeen,lhdeen.749@goodhealth.com,Inter-H,DD-1)
INTO staff (staff_id, staff_name, contact_email, department_id, specialty_code) VALUES (673,Charlie Smith,csmith.985@goodhealth.com,Obste-H,NN-1)
SELECT 1 FROM DUAL;

INSERT ALL 
INTO specialization (speciality,speciality_code) VALUES ('DD-1','Doctor')
INTO specialization (speciality,speciality_code) VALUES ('GG-1','Gynaecologist')
INTO specialization (speciality,speciality_code) VALUES ('NN-1','Nurse')
INTO specialization (speciality,speciality_code) VALUES ('SS-1','Surgeon')
INTO specialization (speciality,speciality_code) VALUES ('MM-1','Midwife')
SELECT 1 FROM DUAL;


INSERT ALL 
INTO department (department_id,department_name) VALUES ('Obste-H','Obstetrics & Gynecology')
INTO department (department_id,department_name) VALUES ('Pedia-H','Pediatrics')
INTO department (department_id,department_name) VALUES ('Inter-H','Internal Medicine')
INTO department (department_id,department_name) VALUES ('Cardi-H','Cardiology')
SELECT 1 FROM DUAL;


INSERT ALL
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (34,Loveline,Johnson,24/02/1986,'30 Sagba Road')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (27,Kim,Helen,22/02/1996,'52 Park Lane')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (61,Due,Miller,25/02/1983,'63 Avenue street')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (24,Niely,Naey,05/03/1948,'40 St Peter Road')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (60,Praise,Jones,22/02/1994,'46 Pepple Creek')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (38,ThankGod,Naey,06/03/1944,'1 Forth and Back  Street')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (33,George,Wilson,01/03/1967,'7 Oakland Off Ladg')
INTO patient (patient_id,first_name,last_name,date_of_birth,address) VALUES (60,Isabella,Wisdom,03/03/1956,'4 Harry Smiles Road')
SELECT 1 FROM DUAL;



INSERT ALL 
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-1460,19/05/2024 12:30,34,347)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3086,17/05/2024 10:45,27,366)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2249,15/04/2024 10:00,61,366)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-6086,10/01/2024 14:00,24,394)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-8008,09/01/2024 11:45,60,394)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3241,02/01/2024 11:15,38,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3344,28/01/2023 12:15,60,82)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-4077,24/01/2023 09:15,38,547)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-5226,22/01/2023 09:30,33,524)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2395,19/01/2023 09:00,60,524)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-8967,13/01/2023 15:00,34,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-5199,08/01/2023 13:45,27,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3462,06/01/2023 08:15,61,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-8673,03/01/2023 16:00,24,347)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2182,27/01/2022 08:45,60,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-4298,25/01/2022 11:15,38,547)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-1739,21/01/2022 10:30,60,42)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3202,20/01/2022 13:00,34,42)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-6478,18/01/2022 14:15,27,347)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2447,14/01/2022 16:15,61,673)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2484,12/01/2022 08:00,24,394)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-1943,10/01/2022 14:30,60,673)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-3645,09/01/2022 10:00,38,524)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-5112,09/01/2022 10:00,60,366)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-6866,09/01/2022 10:00,38,82)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-5715,09/01/2022 10:00,34,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-2083,09/01/2022 10:00,27,176)
INTO appointment (appointment_ref,appointment_date,patient_id,staff_id) values (APT-8577,09/01/2022 10:00,61,42)

SELECT 1 FROM DUAL;



INSERT ALL
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-98770,Anaemia,1.770051612,63.91893423,98/82 mmHg,APT-6086)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-10145,Acute chest pain,1.765568273,97.90731017,111/71 mmHg,APT-8008)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-51164,Internal bleeding from accident,1.766399663,75.36934625,130/66 mmHg,APT-3241)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-79038,"Routine checkup, all vital signs normal",1.769106761,87.39538116,108/86 mmHg,APT-3344)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-35101,High sugar level,1.982785409,79.28915571,131/71 mmHg,APT-4077)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-33268,"Lower leg swelling, possible infection",1.592154391,52.07796622,112/72 mmHg,APT-5226)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-10075,"Minor skin irritation, topical medication prescribed",1.749234369,55.10309036,91/83 mmHg,APT-2395)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-17004,indisgestion ,1.672985424,81.02997676,92/89 mmHg,APT-8967)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-41872,Minor neck dislocation,1.717615247,63.52678965,95/75 mmHg,APT-5199)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-88498,"Apparent stomach bug, fluids and rest recommended",1.83792521,56.3889566,135/87 mmHg,APT-3462)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-93515,"Potential muscle strain, rest and physical therapy advised",1.995556766,84.32998221,107/88 mmHg,APT-8673)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-98815,Bleeding nose from fall,1.856241296,65.84207718,134/60 mmHg,APT-2182)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-22547,"Unlikely fracture based on initial X-rays, follow-up recommended",1.998824702,82.57541871,129/62 mmHg,APT-4298)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-91082,Headache from tootache,1.848289864,77.25348605,122/90 mmHg,APT-1739)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-61223,"Follow-up visit for previous condition, progress noted",1.679991271,99.97998139,102/67 mmHg,APT-3202)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-86940,Eye irritation shows allergic reaction,1.748638889,68.94723867,108/67 mmHg,APT-6478)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-78514,Low sugar level,1.785172243,64.31530798,107/85 mmHg,APT-2447)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-69722,Mild seasonal allergy flare-up,1.710862502,58.85596261,98/60 mmHg,APT-2484)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-68003,Possible vitamin deficiency requiring further testing,1.865931403,83.9287849,127/68 mmHg,APT-1943)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-36132,Insulin resistance,1.610862777,76.17642194,128/76 mmHg,APT-3645)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-92654,Stomach enlargemnt,1.971382936,60.92440813,127/62 mmHg,APT-5112)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-39074,Abnormal growth on the face,1.906332081,77.97408335,123/62 mmHg,APT-6866)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-23713,Abnormal growth on the skin,1.799682206,66.34504925,117/80 mmHg,APT-5715)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-56397,Gall bladder,1.655348404,86.20247553,131/71 mmHg,APT-2083)
INTO medical_record (medical_record_id,diagnosis,height_at_visit,weight_at_visit,blood_pressure,appointment_ref) VALUES (MR-18754,Eye irritation from screen time,1.535204118,66.50540439,95/68 mmHg,APT-8577)

SELECT 1 FROM DUAL;