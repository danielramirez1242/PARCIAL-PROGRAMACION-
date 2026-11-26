CREATE TABLE IF NOT EXISTS trabajadores (
    documento TEXT PRIMARY KEY,
    nombre TEXT NOT NULL,
    fecha_ingreso TEXT NOT NULL,
    tipo TEXT NOT NULL,
    salario_base REAL DEFAULT 0,
    valor_contrato REAL DEFAULT 0,
    valor_hora REAL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS pagos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    documento_trabajador TEXT NOT NULL,
    mes TEXT NOT NULL,
    fecha_liquidacion TEXT NOT NULL,
    horas_trabajadas REAL DEFAULT 0,
    pago_base REAL NOT NULL,
    bono REAL NOT NULL,
    total REAL NOT NULL,
    FOREIGN KEY (documento_trabajador) REFERENCES trabajadores(documento) ON DELETE CASCADE
);
