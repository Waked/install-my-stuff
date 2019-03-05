# Install/update apt repositories' keys
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Install/update apt repositories
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Cache policies (ensure the correct repo/distro)
apt-cache policy docker-ce

# Install packages
package_list=(
  # Enable apt over HTTPS
  apt-transport-https ca-certificates curl software-properties-common
  xclip
  sublime-text
  docker-ce
  virtinst
)
sudo apt update
for package in "${package_list[@]}"; do
  if ! apt list --installed | grep --quiet $package; then
    echo "[IMS Packages] ${package} not found - installing..."
    sudo apt -qqy install $package
  fi
done

# Post-install configuration
sudo usermod -aG docker ${USER}