#!/bin/bash
# Install Latte Dock and KDE Plasma minimal
apt update
apt install -y latte-dock plasma-desktop kwin-x11

# Configure Latte Dock autostart
mkdir -p /etc/skel/.config/autostart
cat <<EOF > /etc/skel/.config/autostart/latte-dock.desktop
[Desktop Entry]
Type=Application
Exec=latte-dock
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Latte Dock
Comment=Start Latte Dock
EOF

# Copy custom Latte Dock layout (optional)
mkdir -p /etc/skel/.config/latte/
cp my-custom-layout.layout.latte /etc/skel/.config/latte/
