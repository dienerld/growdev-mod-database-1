export async function genTasks(users: string[]): Promise<void> {
  function titleRandom() {
    const titles = [
      "Estudar",
      "Ler",
      "Limpar Casa",
      "Fazer Compras",
      "Atualizar GitHub",
      "Atualizar LinkedIn",
      "Jogar",
    ];
    const titlesLength = titles.length;
    return titles[Math.floor(Math.random() * titlesLength)];
  }

  function hourRandom() {
    const hour = Math.floor(Math.random() * 24);
    const minute = Math.floor(Math.random() * 60);
    const hours = hour <= 9 ? `0${hour}` : hour;
    const minutes = minute <= 9 ? `0${minute}` : minute;
    return `${hours}:${minutes}`;
  }

  function dateRandom() {
    const year = Math.floor(Math.random() * 12) + 2010;
    const month = Math.floor(Math.random() * 11) + 1;
    const day = month === 2
      ? Math.floor(Math.random() * 26) + 1
      : Math.floor(Math.random() * 29) + 1;

    return `${year}-${month <= 9 ? `0${month}` : month}-${
      day <= 9 ? `0${day}` : day
    }`;
  }

  let contentFile = "-- Script gerado automaticamente\n\n";

  for (const user of users) {
    contentFile += `-- ${user} tasks\n`;
    for (let i = 0; i < 5; i++) {
      contentFile += `
INSERT INTO tasks ("title", "hour", "date", "user_id")
VALUES ('${titleRandom()}', '${hourRandom()}', '${dateRandom()}',
  (SELECT id FROM users WHERE name='${user}')
);
`;
    }
    contentFile += "\n";
  }

  await Deno.writeTextFile("./insert_task.sql", contentFile);
}
