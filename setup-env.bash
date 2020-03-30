# -------------------
# Install Docker
# -------------------
apt install apt-transport-https ca-certificates curl software-properties-common gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce
usermod -aG docker $USER

systemctl start docker
systemctl enable docker

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# -------------------
# Setup Firewall
# -------------------

apt-get install ufw

# Plex
ufw allow 32400

# OVPN
ufw allow 943
ufw allow 9443
ufw allow 1194

# Minecraft
ufw allow 4326
ufw allow 4327
ufw allow 25565

# -------------------
# Setup Directories
# -------------------

mkdir /apps

mkdir /apps/minecraft
mkdir /apps/minecraft/rcon

mkdir /apps/ovpn

mkdir /apps/plex
mkdir /apps/plex/config
mkdir /apps/plex/tv
mkdir /apps/plex/movies
mkdir /apps/plex/workout

# -------------------
# Execute
# -------------------

docker-compose up -d
