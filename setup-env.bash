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
