# 🌑 EclipseCore Changelog

## v1.1.0 (Codename: NOVA) - 2026-01-02
### 🚀 Performa & Kernel
- **CPU Lock Logic**: Berhasil mengunci frekuensi CPU ke nilai maksimum untuk stabilitas performa.
- **Governor Update**: Mengubah CPU governor menjadi `performance` secara paksa.
- **GPU Boost**: Mengaktifkan `adreno_boost_policy` untuk chipset Snapdragon.

### 🖥️ UI & Scrolling
- [cite_start]**Refresh Rate Events**: Meningkatkan `max_events_per_sec` menjadi 150 untuk UI yang lebih responsif[cite: 1].
- [cite_start]**Fling Velocity**: Optimasi kecepatan geser (fling) dengan nilai maksimum 20000[cite: 1].

### 🌐 Networking
- [cite_start]**TCP Optimization**: Peningkatan `init_rwnd` untuk koneksi 2G dan 3G[cite: 1].

### ⚠️ System Changes
- **Thermal Bypass**: Menonaktifkan `thermal-engine` vendor untuk mencegah throttling.
- **KSU/Magisk Compatibility**: Pembaruan skrip instalasi untuk deteksi perangkat yang lebih baik.
