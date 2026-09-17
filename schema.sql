CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    hash_pass TEXT NOT NULL,
    is_verified BOOLEAN NOT NULL DEFAULT 0,
    verification_code TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE providers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL UNIQUE,
    manager_id INTEGER,
    invite_code TEXT NOT NULL UNIQUE,
    service_name TEXT DEFAULT 'General Service',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (manager_id) REFERENCES managers(id)
);
CREATE TABLE managers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL UNIQUE,
    company_name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE queues (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    provider_id INTEGER NOT NULL,
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'closed')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    closed_at TIMESTAMP,
    FOREIGN KEY (provider_id) REFERENCES providers(id)
);
CREATE TABLE queue_entries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    queue_id INTEGER NOT NULL,
    user_id INTEGER,
    user_name TEXT NOT NULL,
    position INTEGER NOT NULL,
    status TEXT NOT NULL DEFAULT 'waiting' CHECK (status IN ('waiting', 'serving', 'done')),
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (queue_id) REFERENCES queues(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE service_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    queue_id INTEGER NOT NULL,
    queue_entry_id INTEGER,
    user_id INTEGER,
    user_name TEXT NOT NULL,
    company_name TEXT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    stars INTEGER CHECK (stars BETWEEN 1 AND 5),
    FOREIGN KEY (queue_id) REFERENCES queues(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    manager_id INTEGER UNIQUE NOT NULL,
    name TEXT NOT NULL,
    category TEXT NOT NULL DEFAULT 'Other',
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    opening_time TEXT,
    closing_time TEXT,
    address TEXT,
    phone TEXT,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (manager_id) REFERENCES managers(id) ON DELETE CASCADE
);
CREATE VIRTUAL TABLE companies_fts USING fts5( company_id UNINDEXED, name, description, category );
CREATE TRIGGER companies_ai AFTER INSERT ON companies BEGIN
    INSERT INTO companies_fts(company_id, name, description, category) 
    VALUES (new.id, new.name, new.description, new.category);
END;
CREATE TRIGGER companies_ad AFTER DELETE ON companies BEGIN
    DELETE FROM companies_fts WHERE company_id = old.id;
END;
CREATE TRIGGER companies_au AFTER UPDATE ON companies BEGIN
    UPDATE companies_fts 
    SET name = new.name, description = new.description, category = new.category 
    WHERE company_id = old.id;
END;
-- sqlite3 smartline.db < schema.sql