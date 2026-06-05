# dev-dotfiles

My editor setup for **Kiro / VS Code / Cursor**/ extensions and user settings, kept in sync across machines.

## Contents

| File | Description |
|------|-------------|
| `extensions.txt` | List of all extension IDs (one per line) |
| `settings.json` | User settings (shared across Kiro, VS Code, and Cursor) |
| `install-extensions.sh` | Installs every extension from `extensions.txt` |

## Quick start

### 1. Install the extensions

```bash
chmod +x install-extensions.sh
./install-extensions.sh          #! auto-detects code / kiro / cursor
#! or force one:
./install-extensions.sh kiro
```

### 2. Apply the settings

Copy `settings.json` to your editor's user settings location:

| Editor | Linux | macOS | Windows |
|--------|-------|-------|---------|
| VS Code | `~/.config/Code/User/settings.json` | `~/Library/Application Support/Code/User/settings.json` | `%APPDATA%\Code\User\settings.json` |
| Kiro | `~/.config/Kiro/User/settings.json` | `~/Library/Application Support/Kiro/User/settings.json` | `%APPDATA%\Kiro\User\settings.json` |
| Cursor | `~/.config/Cursor/User/settings.json` | `~/Library/Application Support/Cursor/User/settings.json` | `%APPDATA%\Cursor\User\settings.json` |

```bash
# Linux example (VS Code)
cp settings.json ~/.config/Code/User/settings.json
```

## Extensions

- **Theme / UI:** Shades of Purple, Material Icon Theme, Better Comments, Todo Tree
- **Python:** Python, Pylance, debugpy, isort, MagicPython, Python Envs
- **Web / Frontend:** Tailwind CSS, ESLint, HTML CSS Support, Auto Close Tag, Sass, Vetur, Volar (Vue)
- **PHP:** PHP Tools, IntelliPHP, Composer, PHP Profiler
- **Django / Templates:** Django, Jinja
- **Tooling:** Code Runner, AWS Toolkit, Dev Containers, SFTP, tldraw, Duplicate action, Persian Lorem

## Notes

- Secrets (API keys, tokens) are intentionally **not** included in `settings.json`.
- `git.enabled` is set to `false` in these settings/ remove that line if you want Git features active in your editor.

## License

MIT
