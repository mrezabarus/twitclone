import { Client } from "pg"

async function loadFakeData(numUsers: number = 10) {
    console.log(`executin load fake data. generating ${numUsers} users.`)

    const client = new Client({
        user: "postgres",
        host: "localhost",
        database: "twitclone_app",
        password: "admin",
        port: 5432
    });

    const res = await client.query("select 1")
    console.log(res);

}

loadFakeData()