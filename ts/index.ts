// language: typescript for Deno

import { genTasks } from "./gen_tasks.ts";
import { genUsers } from "./gen_users.ts";

export const users = ["Laeni", "Mozu", "Unenn", "Peul", "Moalr"];

await genUsers(users);
await genTasks(users)
