#!/bin/bash
echo "Executing backups!"
# rm -rf ~/.config/gtk-3.0/gtk.css ~/.config/gtk-4.0/gtk.css
mv ~/.config/lbgtkw/backup/gtk3/gtk.css ~/.config/gtk-3.0/
mv ~/.config/lbgtkw/backup/gtk4/gtk.css ~/.config/gtk-4.0/
rm -rf ~/.config/lbgtkw/
echo "Done!"
echo ""

echo "Removing the blur daemon at /usr/local/bin/lbgtkw/"
sudo rm -rf /usr/local/bin/lbgtkw-blur-daemon.sh
echo "Done!"
echo ""

echo "Disabling the systemd service..."
sudo systemctl --user disable lbgtkw-daemon-autostart.service
sudo systemctl --user stop lbgtkw-daemon-autostart.service
sudo systemctl --user daemon-reload
echo "Done!"
echo ""

echo "Removing the systemd service..."
sudo rm -rf /etc/systemd/system/lbgtkw-daemon-autostart.service
echo "Done!"
echo ""

echo "Removing the uninstall script at /usr/local/bin/lbgtkw/"
sudo rm -rf /usr/local/bin/lbgtkw-uninstall.sh
echo "Done!"
echo ""

echo "Please reboot your system for optimal results"
echo ""
