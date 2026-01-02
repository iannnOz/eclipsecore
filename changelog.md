🌑 EclipseCore - Nova Edition | Changelog

All notable changes to the EclipseCore module will be documented in this file.
[1.2.0] - 2026-01-02
Added

    Aggressive Governor Tunables: Optimized schedutil and interactive parameters for near-instant frequency ramping.

    Surface Flinger Boost: Forced GPU composition to offload UI rendering from the CPU, reducing micro-stutters.

    Process Prioritization: Implemented kernel-level task priority for foreground gaming applications.

    I/O Throughput Enhancement: Increased database access speeds for faster app launches.

Changed

    Thermal Engine Management: Updated thermal bypass logic to support a wider range of MediaTek and Snapdragon vendor services.

    Hard-Lock Logic: Improved frequency detection script to better identify maximum hardware clock speeds on the latest Dimensity and Snapdragon chips.

    Module Identity: Updated module.prop and customize.sh to reflect version 1.2.0.

Fixed

    Fixed an issue where some Little cores would drop to idle on specific MediaTek devices.

    Resolved a conflict with logd that caused excessive CPU usage during high-performance sessions.

Removed

    Removed redundant legacy kernel tweaks that were causing instability on Android 13+.
