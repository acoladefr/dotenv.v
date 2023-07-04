module main 

import dotenv

fn main() {
	db_user := dotenv.get("DB_USER")?
	db_password := dotenv.get("DB_PASSWORD")?
	db_host := dotenv.get("DB_HOST")?
	db_port := dotenv.get("DB_PORT")?.int()

	print("host: ${db_host}\nport: ${db_port}\nuser: ${db_user}\npassword: ${db_password}\n")
}