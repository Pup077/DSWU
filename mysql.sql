CREATE DATABASE IF NOT EXISTS BSWU CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE TABLE IF NOT EXISTS tbprefix(
 prefix_id int(1) NOT NULL,
CONSTRAINT pk_prefix_id PRIMARY KEY (prefix_id),
prethname varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
preengname varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
prethab varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
preengab varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbtbpri_note---------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbtbpri_note(
pri_note_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_pri_note_id PRIMARY KEY (pri_note_id),
statusbor_name varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*------------------------------------------------tbposition------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbposition(
position_id int(1) NOT NULL,
CONSTRAINT pk_position_id PRIMARY KEY (position_id),
position_name varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbstatus-------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbstatus(
status_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_status_id PRIMARY KEY (status_id),
status_name varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbgetnote_status------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbgetnote_status(
getnote_status_id  int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_getnote_status_id PRIMARY KEY (getnote_status_id),
get_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
get_status varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*--------------------------------------------------tbfix_status---------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbfix_status(
fix_status_id  int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_fix_status_id PRIMARY KEY (fix_status_id),
fix_status_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbemployee------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbemployee( 
emp_id varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
CONSTRAINT pk_emp_id PRIMARY KEY (emp_id),
emp_firstname varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
emp_lastname varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
emp_email varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
emp_phone char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
emp_address varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
position_id int(1) NOT NULL,
status_id int(1) NOT NULL,
prefix_id int(1) NOT NULL,
CONSTRAINT fk_position_id_tbemployee FOREIGN KEY(position_id) REFERENCES tbposition(position_id) ON UPDATE CASCADE,
CONSTRAINT fk_status_id_tbemployee FOREIGN KEY(status_id) REFERENCES tbstatus(status_id) ON UPDATE CASCADE,
CONSTRAINT fk_prefix_id_tbemployee FOREIGN KEY(prefix_id) REFERENCES tbprefix(prefix_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbget------------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbget(
get_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_get_id PRIMARY KEY (get_id),
get_data_date varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
get_completedata_date varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
getnote_status_id int(1) NOT NULL,
CONSTRAINT fk_getnote_status_id_tbget FOREIGN KEY(getnote_status_id) REFERENCES tbgetnote_status(getnote_status_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*-------------------------------------------------tbfix--------------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbfix(
fix_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_fix_id PRIMARY KEY (fix_id),
fix_note varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
fix_status_id  int(1) NOT NULL,
get_id  int(1) NOT NULL,
CONSTRAINT fk_fix_status_id_tbfix FOREIGN KEY(fix_status_id) REFERENCES tbfix_status(fix_status_id) ON UPDATE CASCADE,
CONSTRAINT fk_get_id_tbfix FOREIGN KEY(get_id) REFERENCES tbget(get_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*--------------------------------------------------tbstatus_alz_noat--------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbstatus_alz_noat(
status_alz_noat_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_status_alz_noat_id PRIMARY KEY (status_alz_noat_id),
article_noat varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
get_id  int(1) NOT NULL,
CONSTRAINT fk_get_id_tbstatus_alz_noat FOREIGN KEY(get_id) REFERENCES tbget(get_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*---------------------------------------------------tbpublicrelations-------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbpublicrelations(
pri_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_pri_id PRIMARY KEY (pri_id),
pri_date_note varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
pri_statusbor_name varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
pri_location date NOT NULL,
pri_the_time int(1) NOT NULL,
get_id  int(1) NOT NULL,
CONSTRAINT fk_get_id_tbpublicrelations FOREIGN KEY(get_id) REFERENCES tbget(get_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*--------------------------------------------------tbanalyzestructure--------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbanalyzestructure(
analyzestructure_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_analyzestructure_id PRIMARY KEY (analyzestructure_id),
alz_analyze_data varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
alz_note varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
alz_completedanalyze_data varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
alz_status_name varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
get_id  int(1) NOT NULL,
CONSTRAINT fk_get_id_tbanalyzestructure FOREIGN KEY(get_id) REFERENCES tbget(get_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;
/*---------------------------------------------------tbdevelopment------------------------------------------------------*/
CREATE TABLE IF NOT EXISTS tbdevelopment(
dev_id int(1) AUTO_INCREMENT NOT NULL,
CONSTRAINT pk_dev_id PRIMARY KEY (dev_id),
dev_develop_data varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
dev_note varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
dev_completedevelop_data varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
dev_status_fix varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
emp_id varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
analyzestructure_id int(1) NOT NULL,
status_alz_noat_id int(1) NOT NULL,
fix_id int(1) NOT NULL,
get_id int(1) NOT NULL,
CONSTRAINT fk_emp_id_tbdevelopment FOREIGN KEY(emp_id) REFERENCES tbemployee(emp_id) ON UPDATE CASCADE,
CONSTRAINT fk_analyzestructure_id_tbdevelopment FOREIGN KEY(analyzestructure_id) REFERENCES tbanalyzestructure(analyzestructure_id) ON UPDATE CASCADE,
CONSTRAINT fk_status_alz_noat_id_tbdevelopment FOREIGN KEY(status_alz_noat_id) REFERENCES tbstatus_alz_noat(status_alz_noat_id) ON UPDATE CASCADE,
CONSTRAINT fk_fix_id_tbdevelopment FOREIGN KEY(fix_id) REFERENCES tbfix(fix_id) ON UPDATE CASCADE,
CONSTRAINT fk_get_id_tbdevelopment FOREIGN KEY(get_id) REFERENCES tbget(get_id) ON UPDATE CASCADE
)CHARACTER SET utf8 COLLATE utf8_general_ci;