# Sử dụng image honeygain/honeygain
FROM honeygain/honeygain:latest

# Sao chép file start.sh vào container và cấp quyền thực thi
COPY --chmod=+x start.sh /start.sh

# Mở port 8000 để Koyeb kiểm tra trạng thái healthy
EXPOSE 8000

# Chạy script khi container khởi động
CMD ["/bin/sh", "/start.sh"]
