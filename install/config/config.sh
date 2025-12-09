# Copy over Omarchy configs
mkdir -p ~/.config
cp -R ~/.local/share/omarchy/config/* ~/.config/

# Use default bashrc from Omarchy
cp ~/.local/share/omarchy/default/bashrc ~/.bashrc

# Agregar Fish a /etc/shells si no está presente  
if ! grep -q "$(which fish)" /etc/shells; then  
  echo "$(which fish)" | sudo tee -a /etc/shells  
fi  
  
# Establecer Fish como shell por defecto del sistema  
sudo usermod -s $(which fish) $USER