# Dotfiles

This repository contains my personal configuration files for various applications and tools. The dotfiles are organized in a clean structure following XDG Base Directory specifications where applicable.

## Structure

```
dotfiles/
├── README.md                    # This file
├── install.sh                   # Installation script
├── .gitignore                   # Git ignore rules
├── .config/                     # XDG config directory
│   ├── helix/                   # Helix editor configuration
│   │   ├── config.toml          # Main helix config
│   │   ├── languages.toml       # Language server configuration
│   │   └── themes/               # Custom themes
│   │       └── george.toml      # My custom theme
│   ├── i3/                      # i3 window manager
│   │   └── config               # i3 configuration file
│   ├── zellij/                  # Zellij terminal multiplexer
│   │   └── config.kdl           # Zellij configuration
│   └── wezterm/                 # WezTerm terminal emulator
│       └── .wezterm.lua         # WezTerm configuration
├── scripts/                     # Utility scripts
│   ├── kbconfig.sh              # Keyboard layout setup
│   └── keyd.conf                # Keyd daemon configuration
├── shell/                       # Shell configurations
│   └── .zshrc                   # Zsh configuration with oh-my-zsh
├── terminal/                    # Terminal-specific configs
│   └── .tmux.conf               # Tmux configuration
└── editor/                      # Editor configurations
    ├── nvim/                    # Neovim configuration
    │   └── init.lua             # Neovim config file
    └── vimwiki/                 # VimWiki configuration
        └── vimwiki.snip         # VimWiki snippets
```

## Installation

### Quick Install

1. Clone this repository:
   ```bash
   git clone <repository-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

### Dry Run

To see what the installation script would do without making changes:
```bash
./install.sh --dry-run
```

## Configurations

### Shell (Zsh)
- Uses oh-my-zsh with powerlevel10k theme
- Plugins: git, colorize, cp, docker, man, tmux, ubuntu, vi-mode
- Editor preference: `hx` (helix) for local sessions, `vim` for SSH

### Window Manager (i3)
- Default terminal: WezTerm
- Includes volume controls and startup applications
- Uses DejaVu Sans Mono font

### Terminal Multiplexer (Zellij)
- Modern terminal multiplexer with tabbed interface
- Custom theme and layout configuration

### Terminal Emulator (WezTerm)
- Cross-platform terminal emulator
- Lua-based configuration

### Editor (Helix)
- Modal editor with built-in LSP support
- Custom theme (george.toml)
- Language-specific configurations

### Editor (Neovim)
- Lua-based configuration
- Minimal setup for specific use cases

## Dependencies

This repository only contains configuration files. You'll need to install the following applications separately:

- **Shell**: zsh, oh-my-zsh
- **Window Manager**: i3
- **Terminal**: wezterm, tmux
- **Terminal Multiplexer**: zellij
- **Editors**: helix, neovim
- **Other**: keyd (for keyboard daemon)

## Usage

After installation, all configurations will be symlinked to their appropriate locations. You can:

1. Modify configurations directly in this repository
2. Run `./install.sh` again to update symlinks after changes
3. Use `./install.sh --dry-run` to check what would be updated

## Backup Files

The installation script automatically backs up existing configuration files with a `.bak` extension before creating new symlinks.

## Customization

Feel free to fork this repository and modify the configurations to suit your needs. The installation script is designed to be easily extensible for additional dotfiles.