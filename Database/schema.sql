-- Creating tables for MentalDB
CREATE TABLE Depression_2020 (
    Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
    Risk VARCHAR NOT NULL
);

CREATE TABLE Anxiety_2020 (
    Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
    Risk VARCHAR NOT NULL
);


CREATE TABLE Either_2020 (
    Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
    Risk VARCHAR NOT NULL
);


CREATE TABLE race_2020 (
    Mental_indicator VARCHAR NOT NULL,
	Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
	Percentage FLOAT NOT NULL,
    Risk VARCHAR NOT NULL
);

CREATE TABLE edu_2020 (
    Mental_indicator VARCHAR NOT NULL,
	Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
	Percentage FLOAT NOT NULL,
    Risk VARCHAR NOT NULL
);

CREATE TABLE sex_2020 (
    Mental_indicator VARCHAR NOT NULL,
	Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
    Percentage FLOAT NOT NULL,
    Risk VARCHAR NOT NULL
);

CREATE TABLE age_2020 (
    Mental_indicator VARCHAR NOT NULL,
	Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
	Percentage FLOAT NOT NULL,
    Risk VARCHAR NOT NULL
);

CREATE TABLE state_2020 (
    Mental_indicator VARCHAR NOT NULL,
	Group_name VARCHAR NOT NULL,
    Subgroup VARCHAR NOT NULL,
	Time_Period DATE NOT NULL,
	Percentage FLOAT NOT NULL,
    Risk VARCHAR NOT NULL
);
