-- Crear base de datos con MySQL

CREATE DATABASE Barberia;

USE Barberia;

-- Crear tabla Barber

CREATE TABLE "Barber" (
	"Barber_id"	INTEGER,
	"Barber_name"	TEXT NOT NULL,
	"Barber_studies"	TEXT NOT NULL,
	"Barber_graduation_day"	NUMERIC,
	PRIMARY KEY("Barber_id" AUTOINCREMENT)
);

-- Crear tabla Barbershop

CREATE TABLE "Barbershop" (
	"Barbershop_id"	INTEGER UNIQUE,
	"Barbershop_name"	TEXT NOT NULL,
	"Barbershop_location"	TEXT NOT NULL,
	"Barbershop_phone"	NUMERIC,
	PRIMARY KEY("Barbershop_id")
);

-- Crear tabla Customer

CREATE TABLE "Customer" (
	"Customer_id"	INTEGER,
	"Customer_name"	TEXT NOT NULL,
	"Customer_phone"	NUMERIC,
	"Customer_email"	INTEGER,
	PRIMARY KEY("Customer_id" AUTOINCREMENT)
);

--Crear tabla service

CREATE TABLE "Service" (
	"Service_id"	INTEGER,
	"Service_type"	TEXT NOT NULL,
	"Service_barber_id"	INTEGER,
	"Service_day"	NUMERIC NOT NULL UNIQUE,
	"Service_name"	TEXT NOT NULL,
	PRIMARY KEY("Service_id" AUTOINCREMENT),
	FOREIGN KEY("Service_barber_id") REFERENCES "Barber"("Service_barber_id"),
	FOREIGN KEY("Service_day") REFERENCES "Agenda"("Service_day")
);

--Crear tabla agenda

CREATE TABLE "Service" (
	"Service_id"	INTEGER,
	"Service_type"	TEXT NOT NULL,
	"Service_barber_id"	INTEGER,
	"Service_day"	NUMERIC NOT NULL UNIQUE,
	"Service_name"	TEXT NOT NULL,
	PRIMARY KEY("Service_id" AUTOINCREMENT),
	FOREIGN KEY("Service_barber_id") REFERENCES "Barber"("Service_barber_id"),
	FOREIGN KEY("Service_day") REFERENCES "Agenda"("Service_day")
);