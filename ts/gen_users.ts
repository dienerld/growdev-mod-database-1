export async function genUsers(users: string[]) {
  let contentFile = "-- Script gerado automaticamente\n\n";
  function passRandom() {
    let pass = "";
    const characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    const charactersLength = characters.length;
    for (let i = 0; i < 8; i++) {
      pass += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return pass;
  }

  for (const user of users) {
    contentFile += `
INSERT INTO users ("name", "email", "password")
VALUES ('${user}', '${user.toLowerCase()}@mail.com', '${passRandom()}');
`;
  }

  await Deno.writeTextFile("./insert_users.sql", contentFile);
}
