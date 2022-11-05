CREATE TABLE IF NOT EXISTS tasks (
  "id" UUID NOT NULL DEFAULT uuid_generate_v4(),
  "title" VARCHAR(255) NOT NULL,
  "hour" VARCHAR(255) NOT NULL,
  "date" DATE NOT NULL,
  "hidden" BOOLEAN NOT NULL DEFAULT FALSE,
  "done" BOOLEAN NOT NULL DEFAULT FALSE,
  "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "user_id" UUID NOT NULL,
  CONSTRAINT "fk_user" FOREIGN KEY("user_id") REFERENCES users(id),
  PRIMARY KEY ("id")
);


CREATE TRIGGER tg_tasks_updated_at
  BEFORE UPDATE
  ON tasks
  FOR EACH ROW
  EXECUTE PROCEDURE update_updated_at_column()