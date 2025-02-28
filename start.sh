#!/bin/sh

# Sử dụng các biến môi trường để chạy Honeygain
-tou-accept -email minhnam@hvnteam.com -pass Matkhau123 -device Re01 &

# Sử dụng nc để lắng nghe trên port 8000
while true; do
    echo "HTTP/1.1 200 OK\r\n\r\nHealthy" | nc -l -p 8000
done
