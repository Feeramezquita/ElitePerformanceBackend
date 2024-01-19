-- Tabla para Admin
CREATE TABLE Admin (
    IDAdmin INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Telefono VARCHAR(20),
    Usuario VARCHAR(50),
    Contraseña VARCHAR(50)
);

-- Tabla para Empleado
CREATE TABLE Empleado (
    IDEmpleado INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Telefono VARCHAR(20),
    SueldoSemanal DECIMAL(10, 2),
    Puesto VARCHAR(100),
    Usuario VARCHAR(50),
    Contraseña VARCHAR(50)
);

-- Tabla para Cliente
CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Telefono VARCHAR(20),
    Correo VARCHAR(255)
);

-- Tabla para Auto
CREATE TABLE Auto (
    IDAuto INT PRIMARY KEY,
    Marca VARCHAR(100),
    Modelo VARCHAR(100),
    Año INT,
    IDCliente INT,
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

-- Tabla para Tipo de Servicios
CREATE TABLE TipoServicios (
    IDTipoServicio INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- Tabla para Orden de Servicio
CREATE TABLE OrdenServicio (
    IDOrdenServicio INT PRIMARY KEY,
    FechaOrden DATE,
    IDCliente INT,
    IDAuto INT,
    IDTipoServicio INT,
    IDEmpleado INT,
    IDEstado INT,
    Anotaciones TEXT,
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente),
    FOREIGN KEY (IDAuto) REFERENCES Auto(IDAuto),
    FOREIGN KEY (IDTipoServicio) REFERENCES TipoServicios(IDTipoServicio),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado),
    FOREIGN KEY (IDEstado) REFERENCES EstadoOrdenServicio(IDEstado)
);

-- Tabla para Estado de Orden de Servicio
CREATE TABLE EstadoOrdenServicio (
    IDEstado INT PRIMARY KEY,
    NombreEstado VARCHAR(100)
);
