#!/bin/bash
if [ $# -ne 4 ]; then
    echo "Usage: $0 R G B A"
    exit 1
fi

chmod +x scripts/lbgtkw-ascii.sh
scripts/lbgtkw-ascii.sh
echo ""

echo "Making backups!"
mkdir -p ~/.config/lbgtkw/backup/gtk3 2>/dev/null
mkdir -p ~/.config/lbgtkw/backup/gtk4 2>/dev/null
cp ~/.config/gtk-3.0/gtk.css ~/.config/lbgtkw/backup/gtk3
cp ~/.config/gtk-4.0/gtk.css ~/.config/lbgtkw/backup/gtk4
echo "Done!"
echo ""

echo "Writting blur to the ~/.config/gtk-3.0/gtk.css file"
echo "window, dialog { background-color: rgba($1,$2,$3,$4); } /* Added via lbgtkw.sh to blur GTK windows. Feel free to remove this if you no longer want the blur */" >> ~/.config/gtk-3.0/gtk.css
echo "Done!"
echo ""

echo "Writting blur to the ~/.config/gtk-4.0/gtk.css file"
echo "window, dialog { background-color: rgba($1,$2,$3,$4); } /* Added via lbgtkw.sh to blur GTK windows. Feel free to remove this if you no longer want the blur */" >> ~/.config/gtk-4.0/gtk.css
echo "Done!"
echo ""

echo "Installing the blur daemon at /usr/local/bin/"
cp scripts/lbgtkw-blur-daemon.sh /usr/local/bin
echo "Done!"
echo ""

echo "Installing the systemd service..."
cp systemd/lbgtkw-daemon-autostart.service ~/.config/systemd/user/
echo "Done!"
echo ""

echo "Starting the systemd service..."
systemctl --user daemon-reload
systemctl --user enable lbgtkw-daemon-autostart.service
systemctl --user start lbgtkw-daemon-autostart.service
echo "Done!"
echo ""

echo "Installing the uninstall script at /usr/local/bin/"
cp scripts/lbgtkw-uninstall.sh /usr/local/bin
echo "Done!"
echo ""

echo "Permitting the uninstall script and daemon to become the executable via 'chmod +x' command at /usr/local/bin/"
chmod +x /usr/local/bin/lbgtkw-uninstall.sh
chmod +x /usr/local/bin/lbgtkw-blur-daemon.sh
echo "Done!"
echo ""

echo "Please reboot your system for optimal results"
echo ""