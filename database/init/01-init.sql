-- Создание таблиц для Frontend Basics проекта
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INTEGER REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Вставка тестовых данных
INSERT INTO users (username, email) VALUES 
('testuser', 'test@example.com'),
('admin', 'admin@example.com')
ON CONFLICT (username) DO NOTHING;

INSERT INTO projects (name, description, user_id) VALUES 
('Frontend Basics', 'Learning project', 1),
('My App', 'Another project', 1)
ON CONFLICT DO NOTHING;
