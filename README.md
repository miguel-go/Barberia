# Modelo relacional para una Barberia


## Servicio (service)
    Service_id (PK) primary key / llave primaria (Numero)
    Service_type: Tipo de servicio (Texto)
    Service_barber_id(FK): Foreign Key /Llave foranea Identificador del barbero (Alfanumerico)
    Service_day: Dia del servicio (Texto o numero)
    Service_name: Nombre del servicio (Texto)

## Barberia (Barbershop)
    Barbershop_id (PK): Identificador unico de la barberia (Numero o alfanumerico)
    Barbershop_name: Nombre de la barberia (Texto)
    Barbershop_location: Ubicacion de la barberia (Numero o alfanumerico)
    Barbeshop_phone: telefono de la barberia (numero)

## Barbero (Barber)
    Barber_id (PK): Identificador único del barbero (Numero o alfanumerico)
    Barber_name: Nombre del barbero (Texto)
    Barber_studies: estudios del barbero (Texto)
    Barber_graduation_day: fecha de graduacion del barbero (Texto o numero)

## Cliente (Customer)
    Customer_id (PK): Identificador único del cliente (Numero o alfanumerico)
    Customer_name: Nombre del cliente (Texto)
    Customer_phone: Telefono del cliente (Numero)
    Customer_email: Correo del cliente (Texto o alfanumerico)

## Agenda (Agenda)
    Agenda_id (PK): Identificador unico de la cita (Numero o alfanumerico)
    Agenda_date : Fecha de la cita (Numero o Texto segun la necesidad)
    Agenda_customer_id: identificador unico del cliente (Numero o alfanumerico)
    