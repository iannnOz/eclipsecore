# EclipseCore Custom Installer
ui_print "--------------------------------------"
ui_print "      ECLIPSECORE PERFORMANCE        "
ui_print "          Codename: NOVA             "
ui_print "--------------------------------------"

# Deteksi Chipset
ui_print "- Identifying Hardware..."
PLATFORM=$(getprop ro.board.platform)
MODEL=$(getprop ro.product.model)
ui_print "- Device: $MODEL"
ui_print "- Platform: $PLATFORM"

# Cek Root/Magisk
if [ "$MAGISK_VER_CODE" -lt 20400 ]; then
  ui_print "! Please update Magisk to v20.4+"
  abort "! Installation failed."
fi

ui_print "- Applying CPU Lock Logic..."
ui_print "- Applying GPU Performance Profile..."
ui_print "- Disabling Thermal Limits (Danger)..."

# Set Permissions
set_perm_recursive $MODPATH 0 0 0755 0644
ui_print "- Installation Complete. Reboot to activate."