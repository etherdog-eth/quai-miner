# 安装依赖
sudo apt update
sudo apt install -y cmake build-essential mesa-common-dev
sudo apt-get install -y nvidia-cuda-toolkit
# 下载miner
git clone https://github.com/dominant-strategies/quai-gpu-miner && cd quai-gpu-miner

git submodule update --init --recursive

sudo wget https://raw.githubusercontent.com/etherdog-eth/quai-miner/main/CMakeLists.txt -O ~/quai-gpu-miner/libethash-cuda/CMakeLists.txt
sudo wget https://raw.githubusercontent.com/etherdog-eth/quai-miner/main/main.cpp -O ~/quai-gpu-miner/ethcoreminer/main.cpp

mkdir build && cd build
cmake .. && cmake --build .