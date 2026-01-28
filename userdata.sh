

#!/bin/bash

set -e



# Amazon Linux 2023 uses dnf

dnf update -y

dnf install -y nginx



systemctl enable nginx

systemctl start nginx



cat <<'EOF' > /usr/share/nginx/html/index.html

<!DOCTYPE html>

<html>

<head>

  <title>Terraform Web Server</title>

  <style>

    body { font-family: Arial; background: #0b1220; color: #e5e7eb; text-align:center; padding-top:60px; }

    .card { display:inline-block; padding:30px; border:1px solid #334155; border-radius:16px; background:#111827; }

    h1 { color:#38bdf8; }

  </style>

</head>

<body>

  <div class="card">

    <h1>✅ Deployed using Terraform!</h1>

    <p>EC2 Nginx Web Server is running.</p>

    <p><b>Project:</b> Terraform Linux EC2 Web Server</p>

  </div>

</body>

</html>

EOF


