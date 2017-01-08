
-- Table: Lab
CREATE TABLE Lab ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);

INSERT INTO [Lab] ([Id], [Name]) VALUES (1, 'Labcorp 1');
INSERT INTO [Lab] ([Id], [Name]) VALUES (2, 'PCP Lab');
INSERT INTO [Lab] ([Id], [Name]) VALUES (3, 'Labcorp 2');
INSERT INTO [Lab] ([Id], [Name]) VALUES (4, 'Quest Diagnostics');
INSERT INTO [Lab] ([Id], [Name]) VALUES (5, 'Hospital');

-- Table: Unit
CREATE TABLE Unit ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);

INSERT INTO [Unit] ([Id], [Name]) VALUES (1, 'x10E3/uL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (2, 'g/dL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (3, 'x10E6/uL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (4, '%');
INSERT INTO [Unit] ([Id], [Name]) VALUES (5, 'fL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (6, 'pg');
INSERT INTO [Unit] ([Id], [Name]) VALUES (7, 'mg/dL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (8, '/uL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (9, ' ');
INSERT INTO [Unit] ([Id], [Name]) VALUES (10, 'mm/hr');
INSERT INTO [Unit] ([Id], [Name]) VALUES (11, 'lb');
INSERT INTO [Unit] ([Id], [Name]) VALUES (12, 'kg');
INSERT INTO [Unit] ([Id], [Name]) VALUES (13, 'F');
INSERT INTO [Unit] ([Id], [Name]) VALUES (14, 'C');
INSERT INTO [Unit] ([Id], [Name]) VALUES (15, 'mmHg');
INSERT INTO [Unit] ([Id], [Name]) VALUES (16, 'ug/dL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (17, 'ng/mL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (18, 'IU/mL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (19, 'mIU/mL');
INSERT INTO [Unit] ([Id], [Name]) VALUES (20, 'ng/dL');

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

INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (1, 1, 3.4, 10.8, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (2, 1, 4.1, 11.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (3, 3, 4.14, 5.8, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (4, 2, 12.6, 17.7, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (5, 4, 37.5, 51.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (6, 5, 79.0, 97.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (7, 6, 26.6, 33.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (8, 2, 31.5, 35.7, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (9, 4, 12.3, 15.4, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (10, 1, 150.0, 379.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (11, 4, null, null, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (12, 1, 1.4, 7.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (13, 1, 0.7, 3.1, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (14, 1, 0.1, 0.9, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (15, 1, 0.0, 0.4, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (16, 1, 0.0, 0.2, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (17, 1, 0.0, 0.1, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (18, 2, 6.0, 8.5, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (19, 2, 3.2, 5.6, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (20, 2, 0.1, 0.4, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (21, 2, 0.4, 1.2, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (22, 2, 0.6, 1.3, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (23, 2, 0.5, 1.6, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (24, 2, 2.0, 4.5, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (25, 2, 0.7, 2.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (26, 7, 700.0, 1600.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (27, 7, 91.0, 414.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (28, 7, 40.0, 230.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (29, 7, 422.0, 1292.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (30, 7, 117.0, 747.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (31, 7, 41.0, 129.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (32, 7, 1.0, 291.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (33, 8, 359.0, 1519.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (34, 4, 30.8, 58.5, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (35, 8, 109.0, 897.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (36, 4, 12.0, 35.5, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (37, 9, 0.92, 3.72, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (38, 7, 14.7, 40.3, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (39, 7, 62.2, 179.9, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (40, 10, 0.0, 15.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (41, 7, 0.0, 0.75, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (42, 3, 4.6, 6.1, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (43, 7, 13.5, 18.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (44, 4, 41.0, 53.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (45, 5, 80.0, 97.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (46, 6, 27.0, 32.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (47, 2, 32.0, 36.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (48, 4, 11.5, 14.5, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (49, 1, 140.0, 400.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (50, 4, 35.0, 75.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (51, 4, 16.0, 52.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (52, 4, 2.0, 10.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (53, 4, 0.0, 5.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (54, 4, 0.0, 4.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (55, 1, 2.1, 8.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (56, 1, 0.8, 5.5, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (57, 1, 0.1, 1.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (58, 1, 0.0, 0.5, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (59, 1, 0.0, 0.3, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (60, 16, 138.5, 475.2, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (61, 16, 6.2, 19.4, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (62, 17, 0.4, 4.0, 3, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (63, 18, 0.0, 100.0, 1, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (64, 9, null, null, 2, 'Alere Determine');
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (65, 9, null, null, 1, 'Cobas AmpliPrep/TaqMan, 2.0');
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (66, 9, null, null, 4, 'Aptima Gen-Probe');
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (67, 9, null, null, 4, 'Abbott ARCHITECT');
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (68, 9, null, null, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (69, 19, null, null, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (70, 9, 0.0, 0.79, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (71, 9, 0.0, 0.89, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (72, 9, 0.0, 20.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (73, 7, 83.0, 407.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (74, 9, 0.0, 7.0, 5, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (75, 9, 0.0, 20.0, 5, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (76, 7, 70.0, 105.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (77, 4, 4.1, 5.9, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (78, 20, 285.0, 950.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (79, 4, 2.0, 17.0, 2, null);
INSERT INTO [Test_Details] ([Id], [Units], [Reference_Interval_Lower], [Reference_Interval_Upper], [Lab], [Assay]) VALUES (80, 8, 60.0, 360.0, 2, null);

-- Table: Test_Type
CREATE TABLE Test_Type ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);

INSERT INTO [Test_Type] ([Id], [Name]) VALUES (1, 'Absolute CD4');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (2, 'WBC');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (3, 'RBC');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (4, 'Hemoglobin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (5, 'Hematocrit');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (6, 'MCV');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (7, 'MCH');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (8, 'MCHC');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (9, 'RDW');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (10, 'Platelets');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (11, 'Neutrophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (12, 'Lymphocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (13, 'Monocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (14, 'Eosinophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (15, 'Basophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (16, 'Absolute Neutrophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (17, 'Absolute Lymphocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (18, 'Absolute Monocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (19, 'Absolute Eosinophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (20, 'Absolute Basophils');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (21, 'Immature Granulocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (22, 'Absolute Immature Granulocytes');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (23, 'Total Protein');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (24, 'Albumin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (25, 'Alpha-1-Globulin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (26, 'Alpha-2-Globulin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (27, 'Beta Globulin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (28, 'Gamma Globulin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (29, 'Total Globulin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (30, 'A/G Ratio');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (31, 'Immunoglobulin G');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (32, 'Immunoglobulin A');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (33, 'Immunoglobulin M');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (34, 'IgG Subclass 1');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (35, 'IgG Subclass 2');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (36, 'IgG Subclass 3');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (37, 'IgG Subclass 4');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (38, 'CD4');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (39, 'Absolute CD8');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (40, 'CD8');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (41, 'CD4/CD8 Ratio');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (42, 'C4');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (43, 'C3');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (44, 'ESR');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (45, 'CRP');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (46, 'DHEA-S');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (47, 'Cortisol');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (48, 'Leptin');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (49, 'Immunoglobulin E');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (50, 'HIV-1/2 4th Gen Rapid');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (51, 'HIV-1/2 4th Gen');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (52, 'HIV-1 Quantitative RNA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (53, 'HIV-1 Qualitative RNA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (54, 'Hepatitis B S Ag');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (55, 'Hepatitis B Core AB Total');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (56, 'Hepatitis B S AB Quant');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (57, 'Hepatitis C AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (58, 'HSV1/2 IgG AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (59, 'HSV1/2 IgM AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (60, 'Treponema IgG/IgM');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (61, 'Gonorrhea DNA Probe');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (62, 'Chlamydia DNA Probe');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (63, 'Lyme IgM/IgG AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (64, 'HIV Unknown Rapid');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (65, 'HIV Unknown');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (66, 'Gliadin Peptide IgA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (67, 'Gliadin Peptide IgG');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (68, 'IgA @');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (69, 'Transglutaminase IgA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (70, 'Transglutaminase IgG');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (71, 'SSB IgG AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (72, 'SSA IgG AB');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (73, 'ANA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (74, 'RF IgM');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (75, 'ANTI-CCP IgG/IgA');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (76, 'Hemoglobin A1c');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (77, 'Glucose');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (78, 'Total Testosterone');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (79, '% CD8-/CD57+');
INSERT INTO [Test_Type] ([Id], [Name]) VALUES (80, 'Abs.CD8-CD57+');

-- Table: Test_Profile
CREATE TABLE Test_Profile ( 
    Id   INTEGER PRIMARY KEY,
    Name TEXT 
);

INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (1, 'CD4/CD8 Ratio Profile');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (2, 'CBC With Auto Diff');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (3, 'Immunoglobulins A/G/M, Qn, Ser');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (4, 'Serum Protein Electrophoresis');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (5, 'IgG Subclasses (1-4)');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (6, 'Complement C4');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (7, 'Complement C3');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (8, 'ESR');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (9, 'CRP');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (10, 'CD4 Helper T-Lymphocytes');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (11, 'DHEA-Sulfate');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (12, 'Cortisol');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (13, 'Leptin');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (14, 'Immunoglobulin E, Qn, Ser');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (15, 'HIV');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (16, 'Hep B');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (17, 'Hep C');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (18, 'HSV');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (19, 'Treponema');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (20, 'Gonorrhea');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (21, 'Chlamydia');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (22, 'Lyme');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (23, 'Celiac Disease');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (24, 'Sjogren''s Syndrome');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (25, 'Antinuclear Antibodies');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (26, 'Rheumatoid Arthritis');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (27, 'Diabetes');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (28, 'Testosterone');
INSERT INTO [Test_Profile] ([Id], [Name]) VALUES (29, 'HNK1 (CD57) Panel');

-- Table: Test_Result
CREATE TABLE Test_Result ( 
    Test_Profile INTEGER  REFERENCES Test_Profile ( Id ),
    Type         INT      REFERENCES Test_Type ( Id ),
    Result       TEXT,
    Date         DATETIME,
    Details      INTEGER  REFERENCES Test_Details ( Id ) 
);

INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 2, 5.2, '2014-10-08', 2);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 2, 4.8, '2016-02-01', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 3, 5.19, '2016-02-01', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 4, 15.1, '2016-02-01', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 5, 45.5, '2016-02-01', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 6, 88, '2016-02-01', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 7, 29.1, '2016-02-01', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 8, 33.2, '2016-02-01', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 9, 13.3, '2016-02-01', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 10, 249, '2016-02-01', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 11, 50, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 12, 38, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 13, 7, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 14, 4, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 15, 1, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 16, 2.4, '2016-02-01', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 17, 1.8, '2016-02-01', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 18, 0.3, '2016-02-01', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 19, 0.2, '2016-02-01', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 20, 0.0, '2016-02-01', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 21, 0, '2016-02-01', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 22, 0.0, '2016-02-01', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 23, 7.0, '2016-02-01', 18);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 24, 4.5, '2016-02-01', 19);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 25, 0.2, '2016-02-01', 20);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 26, 0.5, '2016-02-01', 21);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 27, 0.9, '2016-02-01', 22);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 28, 0.8, '2016-02-01', 23);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 29, 2.5, '2016-02-01', 24);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (4, 30, 1.8, '2016-02-01', 25);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (3, 31, 955, '2016-02-01', 26);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (3, 32, 300, '2016-02-01', 27);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (3, 33, 52, '2016-02-01', 28);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (5, 34, 331, '2016-02-29', 29);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (5, 35, 548, '2016-02-29', 30);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (5, 36, 70, '2016-02-29', 31);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (5, 37, 1, '2016-02-29', 32);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 1, 599, '2016-02-01', 33);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 38, 33.3, '2016-02-01', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 39, 482, '2016-02-01', 35);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 40, 26.8, '2016-02-01', 36);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 41, 1.24, '2016-02-01', 37);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (6, 42, 14.8, '2016-02-29', 38);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (7, 43, 79.0, '2016-02-29', 39);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (8, 44, 1, '2015-09-14', 40);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (9, 45, 0.01, '2015-09-14', 41);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 1, 578, '2015-11-10', 33);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 38, 34, '2015-11-10', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 39, 420, '2015-11-10', 35);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 40, 24.7, '2015-11-10', 36);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 41, 1.38, '2015-11-10', 37);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 2, 5.2, '2015-11-10', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 3, 5.35, '2015-11-10', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 4, 15.8, '2015-11-10', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 5, 46.6, '2015-11-10', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 6, 87, '2015-11-10', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 7, 29.5, '2015-11-10', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 8, 33.9, '2015-11-10', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 9, 13.2, '2015-11-10', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 10, 227, '2015-11-10', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 11, 56, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 12, 32, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 13, 7, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 14, 4, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 15, 1, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 16, 2.9, '2015-11-10', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 17, 1.7, '2015-11-10', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 18, 0.4, '2015-11-10', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 19, 0.2, '2015-11-10', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 20, 0, '2015-11-10', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 21, 0, '2015-11-10', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 22, 0, '2015-11-10', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 1, 510, '2015-10-08', 33);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 38, 34, '2015-10-08', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 2, 4.5, '2015-10-08', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 3, 5.31, '2015-10-08', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 4, 15.7, '2015-10-08', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 5, 45.6, '2015-10-08', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 6, 86, '2015-10-08', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 7, 29.6, '2015-10-08', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 8, 34.4, '2015-10-08', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 9, 13.2, '2015-10-08', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 10, 216, '2015-10-08', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 11, 59, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 12, 32, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 13, 6, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 14, 3, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 15, 0, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 16, 2.6, '2015-10-08', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 17, 1.5, '2015-10-08', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 18, 0.3, '2015-10-08', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 19, 0.1, '2015-10-08', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 20, 0, '2015-10-08', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 21, 0, '2015-10-08', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (10, 22, 0, '2015-10-08', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 3, 5.65, '2014-09-04', 42);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 2, 5.2, '2014-09-04', 2);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 4, 16.5, '2014-09-04', 43);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 5, 48.1, '2014-09-04', 44);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 6, 85.2, '2014-09-04', 45);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 7, 29.2, '2014-09-04', 46);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 8, 34.3, '2014-09-04', 47);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 9, 12.9, '2014-09-04', 48);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 10, 262, '2014-09-04', 49);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 11, 61.8, '2014-09-04', 50);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 12, 27.1, '2014-09-04', 51);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 13, 7.3, '2014-09-04', 52);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 14, 2.8, '2014-09-04', 53);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 15, 1, '2014-09-04', 54);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 16, 3.2, '2014-09-04', 55);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 17, 1.4, '2014-09-04', 56);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 18, 0.4, '2014-09-04', 57);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 19, 0.1, '2014-09-04', 58);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 20, 0.1, '2014-09-04', 59);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 2, 5.2, '2014-10-08', 2);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 3, 5.33, '2014-10-08', 42);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 4, 15.7, '2014-10-08', 43);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 5, 45.9, '2014-10-08', 44);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 6, 86.2, '2014-10-08', 45);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 7, 29.4, '2014-10-08', 46);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 8, 34.2, '2014-10-08', 47);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 9, 13.1, '2014-10-08', 48);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 10, 234, '2014-10-08', 49);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 11, 48, '2014-10-08', 50);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 12, 37.2, '2014-10-08', 51);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 13, 8.4, '2014-10-08', 52);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 14, 5.4, '2014-10-08', 53);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 15, 1, '2014-10-08', 54);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 16, 2.5, '2014-10-08', 55);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 17, 1.9, '2014-10-08', 56);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 18, 0.4, '2014-10-08', 57);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 19, 0.3, '2014-10-08', 58);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 20, 0.1, '2014-10-08', 59);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 2, 6, '2015-09-14', 2);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 3, 5.34, '2015-09-14', 42);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 4, 15.8, '2015-09-14', 43);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 5, 47.2, '2015-09-14', 44);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 6, 88.4, '2015-09-14', 45);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 7, 29.5, '2015-09-14', 46);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 8, 33.4, '2015-09-14', 47);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 9, 13.3, '2015-09-14', 48);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 10, 235, '2015-09-14', 49);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 11, 70.6, '2015-09-14', 50);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 12, 20.7, '2015-09-14', 51);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 13, 7.3, '2015-09-14', 52);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 14, 0.8, '2015-09-14', 53);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 15, 0.6, '2015-09-14', 54);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 16, 4.2, '2015-09-14', 55);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 17, 1.2, '2015-09-14', 56);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 18, 0.4, '2015-09-14', 57);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 19, 0, '2015-09-14', 58);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (2, 20, 0, '2015-09-14', 59);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 2, 4.8, '2016-04-14', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 3, 5.38, '2016-04-14', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 4, 15.8, '2016-04-14', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 5, 45.7, '2016-04-14', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 6, 85, '2016-04-14', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 7, 29.4, '2016-04-14', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 8, 34.6, '2016-04-14', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 9, 13.2, '2016-04-14', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 10, 248, '2016-04-14', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 11, 62, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 12, 29, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 13, 5, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 14, 3, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 15, 1, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 16, 3, '2016-04-14', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 17, 1.4, '2016-04-14', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 18, 0.3, '2016-04-14', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 19, 0.2, '2016-04-14', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 20, 0, '2016-04-14', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 21, 0, '2016-04-14', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 22, 0, '2016-04-14', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 38, 34.8, '2016-04-14', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 39, 360, '2016-04-14', 35);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 40, 25.7, '2016-04-14', 36);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 41, 1.35, '2016-04-14', 37);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 1, 487, '2016-04-14', 33);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (11, 46, 460.6, '2016-04-14', 60);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (12, 47, 17.6, '2016-04-14', 61);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (13, 48, 0.5, '2016-04-14', 62);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (14, 49, 20, '2015-11-10', 63);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 50, 'Negative', '2014-09-04', 64);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 50, 'Negative', '2015-09-09', 64);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 52, '<20', '2016-03-09', 65);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 53, 'Negative', '2015-09-17', 66);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 51, 'Negative', '2015-09-17', 67);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (16, 54, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (16, 55, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (16, 56, 55.2, '2015-07-31', 69);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (17, 57, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (18, 58, 0.02, '2015-07-31', 70);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (18, 59, 0.21, '2015-07-31', 71);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (19, 60, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (20, 61, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (21, 62, 'Negative', '2015-07-31', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (22, 63, 'Negative', '2015-09-15', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 64, 'Negative', '2011-03-05', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 64, 'Negative', '2011-05-05', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (15, 65, 'Negative', '2011-08-05', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (23, 66, 19, '2015-12-08', 72);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (23, 67, 14, '2015-12-08', 72);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (23, 68, 334, '2015-12-08', 73);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (23, 69, 6, '2015-12-08', 72);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (23, 70, 5, '2015-12-08', 72);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (24, 71, 'Negative', '2015-10-28', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (24, 72, 'Negative', '2015-10-28', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (25, 73, 'Negative', '2015-10-28', 68);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (26, 74, 1, '2016-02-29', 74);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (26, 75, 10, '2016-02-29', 75);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (27, 76, 4.9, '2014-09-04', 77);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (27, 77, 83, '2014-10-08', 76);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (28, 78, 417, '2016-06-01', 78);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 2, 4.6, '2016-08-15', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 3, 5.18, '2016-08-15', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 4, 15, '2016-08-15', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 5, 43.9, '2016-08-15', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 6, 85, '2016-08-15', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 7, 29, '2016-08-15', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 8, 34.2, '2016-08-15', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 9, 13.5, '2016-08-15', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 10, 227, '2016-08-15', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 11, 52, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 12, 36, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 13, 8, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 14, 3, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 15, 1, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 16, 2.4, '2016-08-15', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 17, 1.7, '2016-08-15', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 18, 0.4, '2016-08-15', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 19, 0.2, '2016-08-15', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 20, 0, '2016-08-15', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 21, 0, '2016-08-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 22, 0, '2016-08-15', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 38, 29.1, '2016-08-15', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 39, 350, '2016-08-15', 35);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 40, 20.6, '2016-08-15', 36);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 41, 1.41, '2016-08-15', 37);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 1, 495, '2016-08-15', 33);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (29, 79, 8.1, '2016-08-15', 79);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (29, 80, 138, '2016-08-15', 80);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 2, 5.2, '2016-11-15', 1);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 3, 5.34, '2016-11-15', 3);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 4, 15.7, '2016-11-15', 4);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 5, 45.7, '2016-11-15', 5);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 6, 86, '2016-11-15', 6);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 7, 29.4, '2016-11-15', 7);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 8, 34.4, '2016-11-15', 8);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 9, 13.3, '2016-11-15', 9);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 10, 269, '2016-11-15', 10);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 11, 53, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 12, 35, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 13, 8, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 14, 3, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 15, 1, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 16, 2.7, '2016-11-15', 12);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 17, 1.8, '2016-11-15', 13);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 18, 0.4, '2016-11-15', 14);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 19, 0.2, '2016-11-15', 15);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 20, 0, '2016-11-15', 16);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 21, 0, '2016-11-15', 11);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 22, 0, '2016-11-15', 17);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 38, 30.0, '2016-11-15', 34);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 39, 414, '2016-11-15', 35);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 40, 23.0, '2016-11-15', 36);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 41, 1.30, '2016-11-15', 37);
INSERT INTO [Test_Result] ([Test_Profile], [Type], [Result], [Date], [Details]) VALUES (1, 1, 540, '2016-11-15', 33);

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

INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.0, 11, '2014-06-10');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (152.0, 11, '2014-09-04');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (154.0, 11, '2014-10-15');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.12, 11, '2014-10-28');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.12, 11, '2015-02-04');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (149.0, 11, '2015-07-31');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (148.0, 11, '2015-09-09');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (149.0, 11, '2015-09-14');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (149.0, 11, '2015-10-28');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (149.0, 11, '2015-11-04');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.0, 11, '2015-12-08');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (157.0, 11, '2016-02-19');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.0, 11, '2016-02-22');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.0, 11, '2016-04-01');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (168.0, 11, '2012-06-13');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.0, 11, '2016-02-29');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (150.0, 11, '2015-08-25');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (150.0, 11, '2011-09-15');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (168.0, 11, '2012-03-26');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.3, 11, '2015-12-06');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (165.3, 11, '2011-12-31');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (163.0, 11, '2012-05-04');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.0, 11, '2016-05-16');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (160.0, 11, '2016-05-31');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (159.0, 11, '2016-06-01');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.0, 11, '2016-06-30');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (155.0, 11, '2016-05-24');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (157.0, 11, '2016-06-09');
INSERT INTO [Vitals_Weight] ([Weight], [Units], [Date]) VALUES (158.0, 11, '2016-08-10');

-- Table: Vitals_Temperature
CREATE TABLE Vitals_Temperature ( 
    Temperature REAL,
    Units       INTEGER  REFERENCES Unit ( Id ),
    Date        DATETIME 
);

INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (97.9, 13, '2014-06-10');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.0, 13, '2014-09-04');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (97.2, 13, '2014-10-28');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.3, 13, '2015-02-04');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.3, 13, '2015-09-09');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (99.4, 13, '2015-09-14');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.3, 13, '2015-10-28');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (97.8, 13, '2015-11-04');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (97.8, 13, '2015-12-08');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (99.2, 13, '2016-02-22');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.2, 13, '2016-04-01');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.2, 13, '2012-06-13');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (100.0, 13, '2015-12-06');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (97.8, 13, '2011-12-31');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.0, 13, '2012-05-04');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.5, 13, '2016-05-16');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (100.2, 13, '2016-05-31');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.8, 13, '2016-06-09');
INSERT INTO [Vitals_Temperature] ([Temperature], [Units], [Date]) VALUES (98.0, 13, '2016-08-10');

-- Table: Vitals_BloodPressure
CREATE TABLE Vitals_BloodPressure ( 
    Systolic  REAL,
    Diastolic REAL,
    Units     INTEGER  REFERENCES Unit ( Id ),
    Date      DATETIME 
);

INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (110.0, 66.0, 15, '2014-06-10');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (108.0, 70.0, 15, '2014-09-04');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (122.0, 70.0, 15, '2014-10-15');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (130.0, 82.0, 15, '2014-10-28');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (118.0, 74.0, 15, '2015-02-04');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (108.0, 68.0, 15, '2015-07-31');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (110.0, 68.0, 15, '2015-09-09');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (128.0, 74.0, 15, '2015-09-14');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (118.0, 78.0, 15, '2015-10-28');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (122.0, 78.0, 15, '2015-11-04');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (112.0, 68.0, 15, '2015-12-08');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (126.0, 70.0, 15, '2015-02-19');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (142.0, 60.0, 15, '2015-02-22');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (120.0, 80.0, 15, '2016-04-01');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (124.0, 79.0, 15, '2012-06-14');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (110.0, 68.0, 15, '2016-02-29');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (134.0, 79.0, 15, '2015-08-25');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (150.0, 90.0, 15, '2011-09-15');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (134.0, 83.0, 15, '2012-03-26');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (135.0, 83.0, 15, '2015-12-06');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (100.0, 60.0, 15, '2011-10-12');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (114.0, 66.0, 15, '2012-05-30');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (120.0, 74.0, 15, '2012-12-05');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (102.0, 70.0, 15, '2013-06-10');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (115.0, 74.0, 15, '2013-12-17');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (100.0, 60.0, 15, '2014-06-19');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (108.0, 68.0, 15, '2015-01-26');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (125.0, 75.0, 15, '2015-11-23');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (155.0, 76.0, 15, '2011-12-31');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (134.0, 78.0, 15, '2012-05-04');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (120.0, 62.0, 15, '2016-05-16');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (130.0, 80.0, 15, '2016-05-31');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (121.0, 78.0, 15, '2016-06-01');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (106.0, 62.0, 15, '2016-06-30');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (115.0, 83.0, 15, '2016-05-24');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (126.0, 83.0, 15, '2016-06-09');
INSERT INTO [Vitals_BloodPressure] ([Systolic], [Diastolic], [Units], [Date]) VALUES (147.0, 83.0, 15, '2016-08-10');

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

