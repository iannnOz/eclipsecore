# 🌑 EclipseCore (Magisk/KSU Module)

![Device](https://img.shields.io/badge/Device-Android-green?style=for-the-badge&logo=android)
![Engine](https://img.shields.io/badge/Engine-Magisk%20%2F%20KSU-red?style=for-the-badge)

**EclipseCore** adalah modul sistem universal yang dirancang untuk mengoptimalkan kernel parameter, meningkatkan responsivitas layar (touch response), dan manajemen RAM yang lebih agresif.

---

### 🛠️ Fitur Utama
- **Performance Profile:** Tweaks pada `CPU Governor` dan `Schedutil`.
- **Memory Management:** Optimasi `zRAM` dan `LMK` (Low Memory Killer).
- **Touch Improvement:** Meningkatkan sampling rate pada kernel yang mendukung.
- **Universal:** Kompatibel dengan Magisk maupun KernelSU.

---

### 📦 Cara Instalasi

#### Melalui Magisk/KernelSU Manager:
1. Download file `EclipseCore.zip` dari bagian **Releases**.
2. Buka aplikasi **Magisk** atau **KSU Manager**.
3. Pilih menu **Modules** > **Install from storage**.
4. Pilih file zip tersebut dan reboot perangkat.

#### Melalui CLI (Opreker Style):
```bash
su -c "ksu module install /sdcard/EclipseCore.zip" # Untuk KSU
# atau
su -c "magisk --install-module /sdcard/EclipseCore.zip" # Untuk Magisk
