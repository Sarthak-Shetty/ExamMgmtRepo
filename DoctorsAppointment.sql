CREATE TABLE Doctors
(
	DoctorID int IDENTITY(3000,1) PRIMARY KEY,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Specialization varchar(30) not null,
	Resident bit not null
)

CREATE TABLE Appointments
(
	AppointmentID int Identity(1000,1) PRIMARY KEY,
	PaitentName varchar(50) not null,
	Gender varchar(10) not null,
	AppointmentDate date not null,
	DoctorID int REFERENCES Doctors(DoctorID) on UPDATE CASCADE on DELETE set null
)