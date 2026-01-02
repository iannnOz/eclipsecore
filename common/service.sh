#!/system/bin/sh
sleep 40

# --- CPU GOVERNOR & FREQUENCY LOCK ---

# 1. Cari semua core CPU
CPUS=$(ls -d /sys/devices/system/cpu/cpu[0-9]*)

for cpu in $CPUS; do
    # Unlock permission agar bisa diubah
    chmod 644 $cpu/cpufreq/scaling_governor
    chmod 644 $cpu/cpufreq/scaling_max_freq
    chmod 644 $cpu/cpufreq/scaling_min_freq

    # Set Governor ke Performance
    echo "performance" > $cpu/cpufreq/scaling_governor
    
    # Ambil nilai frekuensi maksimum yang tersedia di kernel
    if [ -f $cpu/cpufreq/cpuinfo_max_freq ]; then
        MAX_FREQ=$(cat $cpu/cpufreq/cpuinfo_max_freq)
        # Lock freq: Set Min sama dengan Max
        echo $MAX_FREQ > $cpu/cpufreq/scaling_min_freq
        echo $MAX_FREQ > $cpu/cpufreq/scaling_max_freq
    fi
done

# --- CHIPSET SPECIFIC OPTIMIZATION ---

# Snapdragon (Adreno Boost & GPU)
if [ -d /sys/class/kgsl/kgsl-3d0 ]; then
    echo "performance" > /sys/class/kgsl/kgsl-3d0/devfreq/governor
    echo "1" > /sys/class/kgsl/kgsl-3d0/adreno_boost_policy
fi

# MediaTek (HMP & Touch Prediction)
if [ -d /proc/hps ]; then
    echo "1" > /proc/hps/enabled
    echo "0" > /proc/hps/rush_boost_enabled
fi

# --- THERMAL THROTTLING (CAUTION) ---
# Mengurangi pembatasan suhu agar performa tidak drop saat panas
stop thermal-engine
stop vendor.thermal-engine