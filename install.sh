#!/bin/bash

# Dotfiles Installation Script
# This script creates symlinks from this repository to the appropriate locations

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$SCRIPT_DIR"

# Dry run flag
DRY_RUN=false

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Expand ~ in target path
    target="${target/#\~/$HOME}"
    
    if [ "$DRY_RUN" = true ]; then
        print_status "Would create symlink: $source -> $target"
        return 0
    fi
    
    # Check if source exists
    if [ ! -e "$source" ]; then
        print_error "Source file does not exist: $source"
        return 1
    fi
    
    # Create target directory if it doesn't exist
    local target_dir
    target_dir="$(dirname "$target")"
    if [ ! -d "$target_dir" ]; then
        print_status "Creating directory: $target_dir"
        mkdir -p "$target_dir"
    fi
    
    # Handle existing target
    if [ -e "$target" ]; then
        if [ -L "$target" ]; then
            print_warning "Symlink already exists: $target"
            return 0
        else
            print_warning "Target exists, backing up: $target"
            mv "$target" "$target.bak"
        fi
    fi
    
    # Create symlink
    print_status "Creating symlink: $source -> $target"
    ln -s "$source" "$target"
    print_success "Created symlink: $target"
}

# Function to make script executable
make_executable() {
    local script="$1"
    
    if [ "$DRY_RUN" = true ]; then
        print_status "Would make executable: $script"
        return 0
    fi
    
    if [ -f "$script" ]; then
        chmod +x "$script"
        print_success "Made executable: $script"
    else
        print_error "Script not found: $script"
        return 1
    fi
}

# Main installation function
install_dotfiles() {
    print_status "Starting dotfiles installation..."
    print_status "Dotfiles directory: $DOTFILES_DIR"
    
    # Shell configurations
    create_symlink "$DOTFILES_DIR/shell/.zshrc" "$HOME/.zshrc"
    
    # Terminal configurations
    create_symlink "$DOTFILES_DIR/terminal/.tmux.conf" "$HOME/.tmux.conf"
    
    # .config directory configurations
    create_symlink "$DOTFILES_DIR/.config/helix" "$HOME/.config/helix"
    create_symlink "$DOTFILES_DIR/.config/i3" "$HOME/.config/i3"
    create_symlink "$DOTFILES_DIR/.config/zellij" "$HOME/.config/zellij"
    create_symlink "$DOTFILES_DIR/.config/wezterm/.wezterm.lua" "$HOME/.wezterm.lua"
    
    # Editor configurations
    create_symlink "$DOTFILES_DIR/editor/nvim/init.lua" "$HOME/.config/nvim/init.lua"
    create_symlink "$DOTFILES_DIR/editor/vimwiki/vimwiki.snip" "$HOME/.vim/wiki/vimwiki.snip"
    
    # Make scripts executable
    make_executable "$DOTFILES_DIR/scripts/kbconfig.sh"
    
    print_success "Dotfiles installation completed!"
}

# Function to show help
show_help() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --dry-run    Show what would be done without making changes"
    echo "  --help       Show this help message"
    echo ""
    echo "This script installs dotfiles by creating symlinks from this repository"
    echo "to the appropriate locations in your home directory."
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --dry-run)
            DRY_RUN=true
            shift
            ;;
        --help)
            show_help
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Run installation
install_dotfiles