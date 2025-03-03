FROM nvidia/cuda:12.2.0-devel-ubuntu22.04

# Cập nhật hệ thống & cài đặt gói cần thiết
RUN apt update && apt install -y \
    wget git build-essential cmake libssl-dev libcurl4-openssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Clone DynexSolve từ repo chính thức
RUN git clone https://github.com/dynexcoin/DynexSolve.git /DynexSolve

# Build DynexSolve
WORKDIR /DynexSolve
RUN cmake .
RUN make -j$(nproc)

# Chạy DynexSolve với thông tin user
CMD ["/DynexSolve/dynexsolve"]
