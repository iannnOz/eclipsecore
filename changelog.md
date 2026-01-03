## [1.3.0] - 2026-01-03
### Added
- **Memory Bus Lock:** Forced memory controller to peak performance state.
- **Input Lag Reduction:** Optimized software-level touch event handling for competitive gaming.
- **GPU Idle Disable:** Removed idle timer for Adreno GPUs to prevent clock fluctuations.
- **Writeback Tuning:** Zeroed out dirty page writeback intervals to prioritize foreground app I/O.

### Improved
- **MediaTek Support:** Added specific perfmgr paths for 2026 Dimensity series.
- **Process Management:** Refined OOM (Out of Memory) killer to be even more protective of gaming tasks.

### Fixed
- Fixed minor jitter issues when switching between high-load applications.
