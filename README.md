# macOS Dev Environment Setup

Automate the installation and configuration of a full macOS development environment: CLI tools, programming languages, editors, and system preferences.

---

## 📁 Folder Structure

```bash
.
├── git/
│   ├── .gitconfig
│   ├── .gitignore_global
│   └── install.sh
├── languages/
│   ├── dotnet.sh
│   ├── go.sh
│   ├── java.sh
│   ├── javascript.sh
│   ├── latex.sh
│   ├── python.sh
│   └── rust.sh
├── zsh/
│   ├── .zshrc
│   └── install.sh
├── browsers.sh
├── cli_tools.sh
├── devtools.sh
├── essential.sh
├── ides.sh
├── install.sh
├── macos.sh
├── terminal.sh
├── tools.sh
└── README.md
```

---

## 🚀 Setup Instructions

### 1. Clone this repo

```bash
git clone https://github.com/ben196888/mac-set-up.git
cd mac-set-up
```

### 2. Run the full setup

```bash
chmod +x install.sh
./install.sh
```

> Comment out any steps in `install.sh` if you only want part of the setup.

---

### 🔁 Alternative: Download ZIP and run

1. Download this repo as a ZIP from GitHub
   [Download ZIP](https://github.com/ben196888/mac-set-up/archive/refs/heads/master.zip)

2. Extract the ZIP file and navigate to the folder:
```bash
cd ~/Downloads/mac-set-up-master  # Or wherever you unzipped it
```

3. Run the installer:
```bash
chmod +x install.sh
./install.sh
```

---

## ⚙️ What It Installs

- **Zsh config**: with Starship, Oh My Zsh, and language-aware prompts
- **Git setup**: with aliases, delta, and conditional editor logic
- **VS Code + Cursor**: with settings sync and optional extension restore
- **Terminal**: Warp + shell utilities
- **Languages**: Go, Python, Node (via n), Rust, Java (via SDKMAN), .NET (via Homebrew), LaTeX
- **Browsers**: Firefox, Chrome, Edge, DuckDuckGo
- **Dev Tools**: OrbStack (Docker), kubectl, Postman, Google Cloud SDK, ChatGPT, Raycast
- **System Preferences**: Dock, trackpad gestures, key remapping, fast repeat rate

---

## 🧠 Notes

- All `.zshrc` additions are conditional to avoid errors if tools aren't installed
- `macos.sh` applies safe `defaults write` and `hidutil` changes (some may require logout/reboot)
- You can export/import GUI app settings (like Rectangle) separately if needed

---

## 🧩 Optional Improvements

- Add login item setup via `osascript` (e.g., for Raycast or Rectangle)
- Add versioned `global.json` for .NET SDK pinning
- Add sync logic for VS Code extensions

---

## 📄 License

MIT — use it, fork it, improve it.
