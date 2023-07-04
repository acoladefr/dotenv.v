# dotenv.v
A library written in the [V programming language](https://vlang.io/) used to read values from .env files

## Add as dependency
To add this library into your V applications:
```bash
v install https://github.com/acoladefr/dotenv.v
```

### Example
Here is a classic example to read .env files with dotenv.v

```v
module main

import dotenv

fn main() {
    db_host := dotenv.get('DB_HOST')?
    db_port := dotenv.get('DB_PORT')?.int()
    db_user := dotenv.get('DB_USER')?
    db_password := dotenv.get('DB_PASSWORD')?

    print(host: ${db_host}\nport: ${db_port}\n user: ${db_user}\npassword: ${db_password})
}
```
