#!/bin/bash

# Setup credentials
cd /app/src/credentialstemplate/
ls
cat << EOF > DB.php
<?php

namespace Antsstyle\NFTCryptoBlocker\CredentialsTemplate;

class DB {
    
    const server_name = "$DB_SERVER_NAME";
    const port = "$DB_SERVER_PORT";
    
    const database = "$DB_DATABASE_NAME";
    const username = "$DB_USER_NAME";
    const password = "$DB_USER_PASSWORD";   
}
EOF

cat << EOF > APIKeys.php
<?php

namespace Antsstyle\NFTCryptoBlocker\CredentialsTemplate;

class APIKeys {

    const consumer_key = "$API_CONSUMER_KEY";
    const consumer_secret = "$API_CONSUMER_SECRET";
}
EOF

cat << EOF > AdminUserAuth.php
<?php

namespace Antsstyle\NFTCryptoBlocker\CredentialsTemplate;

class AdminUserAuth {

    const access_token = "$ADMIN_ACCESS_TOKEN";
    const access_token_secret = "$ADMIN_ACCESS_TOKEN_SECRET";
    const user_id = "$ADMIN_USER_ID";

}
EOF

cd /app