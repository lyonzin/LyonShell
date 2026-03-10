<div align="center">

```
██╗  ██╗   ██╗ ██████╗ ███╗   ██╗███████╗██╗  ██╗███████╗██╗     ██╗
██║  ╚██╗ ██╔╝██╔═══██╗████╗  ██║██╔════╝██║  ██║██╔════╝██║     ██║
██║   ╚████╔╝ ██║   ██║██╔██╗ ██║███████╗███████║█████╗  ██║     ██║
██║    ╚██╔╝  ██║   ██║██║╚██╗██║╚════██║██╔══██║██╔══╝  ██║     ██║
███████╗██║   ╚██████╔╝██║ ╚████║███████║██║  ██║███████╗███████╗███████╗
╚══════╝╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
```

**A feature-rich PowerShell profile that transforms your Windows terminal.**

Neofetch-style system info, security toolkit, network utilities, and a hacker-inspired prompt — all in a single drop-in file. No modules, no dependencies, just plug and play.

[![PowerShell 5.1+](https://img.shields.io/badge/PowerShell-5.1%2B-blue?logo=powershell&logoColor=white)](https://github.com/PowerShell/PowerShell)
[![Windows](https://img.shields.io/badge/Platform-Windows%2010%2F11-0078D6?logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/lyonzin/LyonShell?style=social)](https://github.com/lyonzin/LyonShell)

[Install](#-quick-install) | [Features](#-features) | [Commands](#-command-reference) | [Config](#%EF%B8%8F-configuration)

</div>

---

## Quick Install

**One-liner** (backs up your existing profile automatically):

```powershell
irm https://raw.githubusercontent.com/lyonzin/LyonShell/main/install.ps1 | iex
```

**Manual:**

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lyonzin/LyonShell/main/Microsoft.PowerShell_profile.ps1" -OutFile $PROFILE
```

Restart your terminal and you're done. Type `show-menu` to see all commands.

> Your existing profile is backed up as `$PROFILE.bak.<timestamp>` before overwriting.

---

## Features

### Custom Prompt

A Kali Linux-inspired two-line prompt with live system info:

```
┌──[user@HOSTNAME]-[14:30:22]-[192.168.1.10]-[~/Projects]
└──PS> _
```

| Segment | What it shows |
|---|---|
| `user@HOST` | Username + computer name (configurable) |
| `HH:mm:ss` | Real-time clock |
| `192.168.x.x` | Local IP address (cached, refreshes every 60s) |
| `~/path` | Current directory with `~` shorthand for home |

---

### Sysinfo — Neofetch for Windows

Run `sysinfo` to get a full hardware and system dashboard:

```
   user@HOSTNAME
   ──────────────────

   OS          Windows 11 Pro 64 bits (Build 26200 / 24H2)
   Host        HOSTNAME
   Kernel      NT 10.0.26200
   Shell       PowerShell 5.1
   Timezone    America/Sao_Paulo (UTC-03:00)
   Uptime      2d 5h 30m
   Procs       312 running
   Update      KB5050094 (15/02/2025)

   Mobo        ASRock X670E Taichi
   BIOS        v3.06 [UPDATE v3.18]
   CPU         AMD Ryzen 9 7950X3D 16-Core Processor
   RAM         64GB DDR5 @ 4800MHz (4x 16GB Corsair)
   GPU         NVIDIA GeForce RTX 3080 Ti (12GB)
   GPU Drv     591.86 [UPDATE v595.79]
   iGPU        AMD Radeon(TM) Graphics (512MB)
   Audio       Realtek High Definition Audio
   Headset     Logitech G935 Gaming Headset
   Monitor     DELL AW2523HF (360Hz)
   Monitor     4K Display (120Hz)

   Keyboard    Razer BlackWidow V3 Pro
   Mouse       Razer Cobra Pro

   Ethernet    AA:BB:CC:DD:EE:FF (Killer E3100G 2.5GbE)
   Link        1 Gbps
   NTP         a.st1.ntp.br
   LAN IP      192.168.1.10
   WAN IP      x.x.x.x (ISP Name)

   Memory      ████████████░░░░░░░░░░ 38.2G / 63.8G (60%)
   Disk C:     ██████████████░░░░░░░░ 690G / 931G (74%) Windows
   Disk D:     ████░░░░░░░░░░░░░░░░░░ 380G / 1863G (20%) Storage

   ███   ███   ███   ███   ███   ███   ███   ███
   ███   ███   ███   ███   ███   ███   ███   ███
```

#### What it auto-detects

| Category | Details |
|---|---|
| **System** | OS build, kernel, shell version, timezone (IANA format), uptime, process count, last Windows update |
| **Motherboard** | Manufacturer + model, BIOS version with **live update check** |
| **CPU** | Full processor name |
| **RAM** | Total capacity, type (DDR4/DDR5), speed, stick count, brand detection from part numbers |
| **GPU** | Dedicated GPU with VRAM, driver version with **live update check**, integrated GPU |
| **Audio** | Sound card + gaming headset (auto-separated) |
| **Monitors** | Per-monitor model name with refresh rate (via Win32 API) |
| **Peripherals** | Keyboard and mouse (prioritizes gaming brands: Razer, Corsair, Logitech, SteelSeries) |
| **Network** | Physical NICs with MAC, link speed, NTP server, LAN IP, public IP with ISP name |
| **Storage** | Per-disk usage bars with volume names and color-coded fill |

#### Update Checks

| Check | Source | Cache |
|---|---|---|
| **BIOS** | ASRock Wiki (botflakes.de) | 24 hours |
| **NVIDIA Driver** | NVIDIA GeForce API | 24 hours |

- Tags like `[UPDATE v3.18]` only appear when a newer version exists — **zero false positives**
- Works offline: no tag shown, no errors — cached data used if available
- Cache stored in `%TEMP%` (`sysinfo_bios_cache.txt`, `sysinfo_nvdrv_cache.txt`)

#### Supported Hardware Detection

| Component | Brands Auto-Detected |
|---|---|
| **RAM** | Corsair (CMK/CMW/CMH), Kingston (KF/HX), G.Skill (F3/F4/F5), Crucial (BL), Samsung (M3/M4), SK Hynix (HMA/HMT) |
| **GPU** | NVIDIA (RTX/GTX), AMD (Radeon RX), Intel (UHD/Iris) |
| **Headset** | Logitech, Corsair, SteelSeries, HyperX, Razer, JBL, Sony, Bose, Sennheiser |
| **Peripherals** | Razer, Corsair, Logitech, SteelSeries, HyperX, Ducky, Wooting, Glorious |

---

## Command Reference

### General Utilities

| Command | Description | Usage |
|---|---|---|
| `sysinfo` | Neofetch-style system dashboard | `sysinfo` |
| `weather` | Weather forecast via wttr.in | `weather` / `weather "London"` |
| `myip` | Public IP with ISP name | `myip` |
| `whois` | IP or domain lookup | `whois 8.8.8.8` / `whois github.com` |
| `extrair` | Extract zip, rar, 7z, tar, gz | `extrair archive.zip` |
| `touch` | Create empty file | `touch newfile.txt` |
| `ffind` | Fast file search with progress bar | `ffind "*.log"` |
| `findstring` | Search text in files (grep-like) | `findstring "error" ./logs` |
| `jsonview` | Pretty-print JSON | `jsonview config.json` |
| `diff` | Colorized file diff | `diff old.txt new.txt` |

### Package Management (Winget)

| Command | Description | Usage |
|---|---|---|
| `install` | Install a package | `install firefox` |
| `remove` | Uninstall a package | `remove firefox` |
| `package` | Search packages | `package python` |
| `updatefull` | Update all + cleanup | `updatefull` |

### Security & Network

| Command | Description | Usage |
|---|---|---|
| `hashcheck` | Identify hash type + VirusTotal lookup | `hashcheck 5f4dcc3b5aa765d61d...` |
| `crackhash` | Crack hash online (MD5, SHA1, SHA256, NTLM) | `crackhash e99a18c428cb38d5f260...` |
| `macfinder` | MAC address vendor lookup | `macfinder AA:BB:CC:DD:EE:FF` |
| `ports` | List open/listening ports with process | `ports` / `ports 443` |
| `proc` | Process lookup (PID, RAM, CPU, threads) | `proc chrome` |

### Encoding & Tools

| Command | Description | Usage |
|---|---|---|
| `encode_base64` | Encode to Base64 (UTF-8 or UTF-16LE) | `encode_base64 "hello world"` |
| `decode_base64` | Decode from Base64 | `decode_base64 "aGVsbG8gd29ybGQ="` |
| `qrcode` | Generate QR code | `qrcode "https://github.com"` |
| `auto_startup` | Set service to auto-start | `auto_startup ServiceName` |

### Navigation

| Command | Description |
|---|---|
| `show-menu` | Display all commands in styled table |
| `banner` | Show ASCII art banner |
| `ls` / `dir` | `Get-ChildItem` alias |
| `grep` | `Select-String` alias |

---

## Configuration

Edit the config block at the top of your `$PROFILE`:

```powershell
$LyonShell = @{
    Username      = $env:USERNAME        # Name shown in prompt
    WeatherCities = @("London")          # Default cities for 'weather'
}
```

| Option | Default | Description |
|---|---|---|
| `Username` | `$env:USERNAME` | Display name in `┌──[Name@HOST]` |
| `WeatherCities` | `@("Sao+Paulo")` | Cities shown when running `weather` with no args |

### Weather Cities Format

Use `+` for spaces in city names:

```powershell
WeatherCities = @("New+York", "San+Francisco", "Tokyo")
```

---

## Requirements

| Dependency | Required | Purpose |
|---|---|---|
| **PowerShell 5.1** | Yes | Ships with Windows 10/11 |
| **Windows 10/11** | Yes | WMI, Win32 APIs, .NET Framework |
| **7-Zip** | Optional | `extrair` command (archive extraction) |
| **Winget** | Optional | `install` / `remove` / `updatefull` |
| **Internet** | Optional | `myip`, `weather`, `whois`, `crackhash`, BIOS/GPU update checks |

> Zero external PowerShell modules required. Works out of the box on any Windows 10/11 machine.

---

## FAQ

<details>
<summary><b>Will it break my existing setup?</b></summary>

No. The installer backs up your current profile as `$PROFILE.bak.<timestamp>`. Restore anytime:
```powershell
Copy-Item (Get-ChildItem "$PROFILE.bak.*" | Sort-Object LastWriteTime -Descending | Select-Object -First 1) $PROFILE -Force
```
</details>

<details>
<summary><b>Does it work with PowerShell 7 (pwsh)?</b></summary>

Designed for PowerShell 5.1 (Windows built-in). PS7 uses a different `$PROFILE` path — copy the file there manually if needed. Some WMI calls may need adjustment.
</details>

<details>
<summary><b>How do I update LyonShell?</b></summary>

Run the install one-liner again. It creates a fresh backup each time.
</details>

<details>
<summary><b>BIOS/GPU update tags don't appear?</b></summary>

Update checks need internet access. Results cache for 24 hours in `%TEMP%`. If no update exists, no tag is shown (zero false positives). Currently supports NVIDIA GPUs and ASRock motherboards for update detection.
</details>

<details>
<summary><b>Can I use a custom name in the prompt?</b></summary>

Yes — edit `$LyonShell.Username` at the top of your profile:
```powershell
$LyonShell = @{
    Username = "hacker"
    ...
}
```
</details>

---

## Uninstall

```powershell
Remove-Item $PROFILE
# Or restore your backup:
Copy-Item (Get-ChildItem "$PROFILE.bak.*" | Sort-Object LastWriteTime -Descending | Select-Object -First 1) $PROFILE -Force
```

---

## License

[MIT](LICENSE)

---

<div align="center">

**[Lyon](https://github.com/lyonzin)** | LyonShell v2.0

</div>
