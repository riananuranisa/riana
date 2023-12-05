CREATE TABLE operator(
	id VARCHAR (20) NOT NULL,
	nama VARCHAR (50) NOT NULL,
	password VARCHAR(100) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (id)
);

CREATE TABLE film (
	id VARCHAR (20) NOT NULL,
	judul VARCHAR (50) NOT NULL,
	deskripsi TEXT,
	rating VARCHAR (50) NOT NULL,
	produksi VARCHAR(100) NOT NULL,
	distributor VARCHAR(100) NOT NULL,
	durasi INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (id)
);

CREATE TABLE teater (
	id VARCHAR (20) NOT NULL,
	nama VARCHAR (50) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (id)
);

-- foreign key: teater_id
CREATE TABLE kursi (
	id VARCHAR (20) NOT NULL,
	nama VARCHAR (50) NOT NULL,
	teater_id VARCHAR(20) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (id)
);

-- foreign key: film_id, teater_id
CREATE TABLE jadwal (
	id VARCHAR (20) NOT NULL,
	hari VARCHAR (50) NOT NULL,
	jam VARCHAR(20) NOT NULL,
	harga INT NOT NULL,
	film_id VARCHAR(20) NOT NULL,
	teater_id VARCHAR(20) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (id)
);

-- foreign key: operator_id, jadwal_id, kursi_id, 
CREATE TABLE transaksi (
	id VARCHAR(20) NOT NULL,
	operator_id VARCHAR(20) NOT NULL,
	jadwal_id VARCHAR(20) NOT NULL,
	kursi_id VARCHAR(20) NOT NULL,
	jumlah_dibayar INT NOT NULL,
	kembalian INT NOT NULL,
	created_at DATETIME NOT NULL,
	PRIMARY KEY (id)
);