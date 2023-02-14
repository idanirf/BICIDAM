DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users`
(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    uuid UUID UNIQUE NOT NULL,
    image TEXT,
    type TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    address TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted BOOLEAN NOT NULL DEFAULT FALSE,
    last_password_changed_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)