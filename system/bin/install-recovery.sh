#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32793934:4724f1050325980bb1808aca3dbc62eb124090eb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27925834:d17c2d2c0926e11023a01ffbfc673a7cf3105b7e EMMC:/dev/block/bootdevice/by-name/recovery 4724f1050325980bb1808aca3dbc62eb124090eb 32793934 d17c2d2c0926e11023a01ffbfc673a7cf3105b7e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
