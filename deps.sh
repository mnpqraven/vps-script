# platform: ubuntu 24

cd $HOME

sudo apt upgrade -y
sudo apt-get install gcc

sudo snap install docker
sudo snap install btop

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
# firewall
sudo apt  install ufw

# nginx
sudo apt install nginx

# isntall protoc
# TODO:
sudo apt install protobuf-compiler

mkdir -p service_repos

# install cmd cli
git -C $HOME/service_repos clone https://github.com/mnpqraven/vps-do
cargo install --path $HOME/service_repos/vps-do
