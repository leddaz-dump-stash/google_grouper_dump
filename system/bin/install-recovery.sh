#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:5875712:885e6d33e837db95edb2d2bb2771b63f5abf460b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:5308416:a9bff5fec99efd2ece2541fb88de60a6e9a40596 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 885e6d33e837db95edb2d2bb2771b63f5abf460b 5875712 a9bff5fec99efd2ece2541fb88de60a6e9a40596:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
