CREATE TABLE IF NOT EXISTS users (
  "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
  "name" VARCHAR(255) NOT NULL,
  "email" VARCHAR(255) NOT NULL UNIQUE,
  "password" VARCHAR(255) NOT NULL,
  "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("id")
);

CREATE TRIGGER tg_users_updated_at
  BEFORE UPDATE
  ON users
  FOR EACH ROW
  EXECUTE PROCEDURE update_updated_at_column();

CREATE INDEX idx_users_email ON users (email ASC);
