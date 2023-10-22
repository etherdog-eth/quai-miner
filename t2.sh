#!/usr/bin/expect

# 更新系统
sudo apt update

echo -e "Jok45315128\nJok45315128" | adduser --gecos "" lgtn
sudo usermod -aG sudo lgtn

su lgtn && cd /home/lgtn

curl -s "https://raw.githubusercontent.com/fleek-network/get.fleek.network/main/scripts/install_native" > install_native
chmod +x install_native

spawn ./install_native

expect ">"
send "yes\r"

expect "[sudo] password for lgtn:"
send "Jok45315128"

expect "🚓 Warning! Make sure you don't have the ports  blocked by a firewall. The installer will fail if you don't have the required ports open! Press ENTER to continue..."
send "\r"

expect "To learn how to stake for Testnet, read the instructions provided in https://docs.fleek.network/docs/node/testnet-onboarding to run successfully. Once happy with the information provided, press ENTER to continue..."
send "\r"

# 等待命令执行完成
expect eof

sudo systemctl start lightning

#sudo wget https://raw.githubusercontent.com/etherdog-eth/quai-miner/main/t2.sh && sudo chmod +x t2.sh && ./t2.sh
