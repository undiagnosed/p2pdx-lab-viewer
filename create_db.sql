
-- Table: Lab
CREATE TABLE Lab ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);


-- Table: Unit
CREATE TABLE Unit ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);


-- Table: Visit
CREATE TABLE Visit ( 
    Id     INTEGER  PRIMARY KEY,
    Type   INTEGER,
    Date   DATETIME,
    Reason TEXT 
);


-- Table: Test_Details
CREATE TABLE Test_Details ( 
    Id                       INTEGER PRIMARY KEY,
    Units                    INTEGER REFERENCES Unit ( Id ),
    Reference_Interval_Lower REAL,
    Reference_Interval_Upper REAL,
    Lab                      INTEGER REFERENCES Lab ( Id ),
    Assay                    TEXT 
);


-- Table: Test_Type
CREATE TABLE Test_Type ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);


-- Table: Test_Profile
CREATE TABLE Test_Profile ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);


-- Table: Test_Result
CREATE TABLE Test_Result ( 
    Test_Profile INTEGER  REFERENCES Test_Profile ( Id ),
    Type         INT      REFERENCES Test_Type ( Id ),
    Result       TEXT,
    Date         DATETIME,
    Details      INTEGER  REFERENCES Test_Details ( Id ) 
);


-- Table: User
CREATE TABLE User ( 
    UUID BLOB PRIMARY KEY,
    Name TEXT 
);


-- Table: Test_Profile_Type_Map
CREATE TABLE Test_Profile_Type_Map ( 
    Profile_Id INTEGER,
    Type_Id    INTEGER 
);


-- Table: Vitals_Weight
CREATE TABLE Vitals_Weight ( 
    Weight REAL,
    Units  INTEGER  REFERENCES Unit ( Id ),
    Date   DATETIME 
);


-- Table: Vitals_Temperature
CREATE TABLE Vitals_Temperature ( 
    Temperature REAL,
    Units       INTEGER  REFERENCES Unit ( Id ),
    Date        DATETIME 
);


-- Table: Vitals_BloodPressure
CREATE TABLE Vitals_BloodPressure ( 
    Systolic  REAL,
    Diastolic REAL,
    Units     INTEGER  REFERENCES Unit ( Id ),
    Date      DATETIME 
);


-- Table: Visit_Type
CREATE TABLE Visit_Type ( 
    Id   INTEGER PRIMARY KEY,
    Type TEXT 
);


-- Table: Visit_Note
CREATE TABLE Visit_Note ( 
    Id               PRIMARY KEY,
    Visit_Id INTEGER REFERENCES Visit ( Id ),
    Note     TEXT 
);

