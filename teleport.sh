echo "Installing teleport..."
curl https://deb.releases.teleport.dev/teleport-pubkey.asc | sudo apt-key add - 
add-apt-repository 'deb https://deb.releases.teleport.dev/ stable main' 
apt-get update 
apt install teleport
wget https://raw.githubusercontent.com/WeLikeToCodeStuff/shellscripts/main/teleport.service
mv teleport.service /etc/systemd/system/teleport.service
systemctl daemon-reload
systemctl enable teleport
