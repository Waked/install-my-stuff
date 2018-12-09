# Install packages
package_list=(
  xclip
)

for package in $package_list; do
  if ! apt list --installed | grep --quiet $package; then
    echo "[IMS Packages] ${package} not found - installing..."
    sudo apt install -y $package
  fi
done
