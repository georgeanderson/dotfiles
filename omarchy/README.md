# Omarchy

Personal [Omarchy](https://omarchy.org/) overrides for Hyprland and the shell bar.

These files replace the matching user configs under `~/.config/`. First-party
and community plugins are installed separately (see below).

## Files

| Repo path | Live path |
| --- | --- |
| `hypr/input.lua` | `~/.config/hypr/input.lua` |
| `hypr/bindings.lua` | `~/.config/hypr/bindings.lua` |
| `shell.json` | `~/.config/omarchy/shell.json` |

## Keyboard

Three US layouts, cycled with Left Alt + Right Alt (or the bar widget):

1. **DV** — `us(dvorak)` (default)
2. **DI** — `us(dvorak-intl)` (dead keys)
3. **US** — `us(intl)` (QWERTY international)

Caps is Compose. Both Shifts together set Caps Lock.

On intl layouts: `'` then `e` → é; AltGr + comma → ç.

## Bindings

| Chord | Action |
| --- | --- |
| Super+Shift+E | Thunderbird |
| Alt+H / Alt+L | Previous / next window in a group |
| Alt+Tab | Windows-style switcher across all workspaces |

`Alt+Tab` needs the `io.github.pablo-merino.altswitch` plugin. Group focus only
works after `Super+G`.

## Bar

Enabled this session:

- `omarchy.active-window` — focused window title (left, after workspaces)
- `omarchy.media` — now-playing (center)
- `tanzil.sysmon` — CPU, RAM, download speed (right)

## Apply

From the repo root:

```bash
./install.sh
./omarchy/install-plugins.sh
hyprctl reload
```

`install-plugins.sh` adds the community plugins and enables the first-party
widgets. It is idempotent.
