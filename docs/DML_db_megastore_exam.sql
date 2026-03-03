INSERT INTO customers (name, email, phone, address, city) VALUES 
('Ana Torres', 'ana.torres@outlook.com', '3004445566', 'Diag 50 #20-10', 'Barranquilla'),
('Andres Cepeda',	'andres.c@musica.com',	'3105558888',	'Calle 85 #11-20', 'Bogota'),
('Camila Cabello', 'camila.c@havana.com',	'3009990000',	'Calle 50 #50-50', 'Miami'),
('Carlos Gomez',	'carlos.g@hotmail.com',	'3205551234',	'Av Siempre Viva 123', 'Cali'),
('Elena Nito',	'elena.nito@broma.com',	'3185550000',	'Calle Falsa 123', 'Pereira'),
('Jorge Ramirez',	'jorge.r@empresa.com',	'3112223344',	'Cra 7 #72-10', 'Bogota'),
('Juan Perez',	'juan.perez@mail.com',	'3001234567',	'Calle 123 #45-67', 'Bogota'),
('Laura Pausini',	'laura.p@musica.com',	'3001112222',	'Via Roma 1', 'Bogota'),
('Luisa Fernandez',	'luisa.fer@gmail.com',	'3169998877',	'Tv 4 #5-12', 'Bucaramanga'),
('Maria Rodriguez',	'maria.rod@gmail.com',	'3109876543',	'Cra 80 #10-20', 'Medellin'),
('Miguel Angel',	'miguel.angel@art.com',	'3123334455',	'Av El Poblado 45', 'Medellin'),
('Pedro Martinez',	'pedro.martinez@yahoo.com',	'3151112233', 'Calle 100 #15-20', 'Bogota'),
('Sofia Vergara',	'sofia.v@cine.com',	'3007776655',	'Calle 10 #10-10', 'Cartagena');

INSERT INTO categories (name) VALUES
('Kitchen'),
('Accessories'),
('Home'),
('Electronics'),
('Stationery');


INSERT INTO suppliers (name, email) VALUES 
('Accesorios Total', 'contacto@accesoriostotal.com'),
('Cables & Conectores', 'info@cablesconectores.com'),
('ElectroHogar', 'ventas@electrohogar.com'),
('GamerZone', 'sales@gamerzone.co' ),
('IluminaTodo', 'ventas@iluminatodo.co'),
('MueblesYa', 'info@mueblesya.com' ),
('Oficina Digital', 'sales@oficinadigital.com'),
('Papeleria Mundial', 'pedidos@papeleriamundial.com'),
('SoundWave Ltd', 'contact@soundwave.com'),
('TechDistro SAS', 'ventas@techdistro.com');

SELECT * FROM categories;

INSERT INTO products (name, id_category, price, sku, stock) VALUES 
('Batidora Inmersion', 1, 120000, 'BTR-IMU-002', 10 ),
('Cafetera Oster 12 Tazas', 1, 180000, 'CFT-OST-001', 10),
('Cable HDMI 2.0 3m', 2, 35000, 'CBL-HDMI-003', 10),
('Funda iPad Air', 2, 90000, 'CS-TAB-009', 10),
('Audifonos Sony WH-1000', 2, 1200000, 'HDP-SNY-005', 10),
('Teclado Mecanico Redragon', 2, 250000, 'KBD-MEC-002', 10),
('Mouse Logitech G203', 2, 120000, 'MSE-LOG-001', 30),
('USB Kingston 64GB', 2, 45000, 'USB-KIN-64', 20),
('Silla Ergonomica Office', 3, 450000,'CHR-ERG-005' ,10),
('Escritorio Estandar Blanco', 3, 320000,'DSK-STD-100' ,10),
('Lampara LED Escritorio', 3, 80000,'LMP-LED-001' ,10),
('Sofa Cama Gris', 3, 1500000,'SF-LIV-002' ,10),
('Laptop HP Pavilion 15', 4, 3500000, 'LPT-HP-001', 10 ),
('Microfono Shure SM58', 4, 450000, 'MIC-SHR-058', 10),
('Monitor LG 27 UltraGear', 4,1100000 , 'MON-LG-27', 10 ),
('Monitor Samsung 24', 4, 600000, 'MON-SAM-24',10 ),
('Impresora Epson EcoTank', 4, 950000, 'PRT-EPS-004', 10),
('Parlante JBL Flip 6', 4, 550000, 'SPK-JBL-005', 10),
('iPad Air 64GB', 4, 2800000, 'TAB-APP-009', 10),
('Marcadores Sharpie x12', 5, 35000, 'MKR-SHR-012', 20),
('Resma Papel Carta 500', 5, 25000, 'PPR-RSM-500', 20);

INSERT INTO suppliers_products (id_supplier, id_product) VALUES 
(1,4),
(1,7),
(1,8),
(2,3),
(3,1),
(3,2),
(4,6),
(5,11),
(6,9),
(6,10),
(6,12),
(7,17),
(8,21),
(8,20),
(9,5),
(9,14), 
(9,18),
(10,13),
(10,15),
(10,16),
(10,19);








