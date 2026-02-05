# homebrew-localpush

Homebrew tap for [LocalPush](https://github.com/madshn/localpush) — macOS menu bar app for guaranteed file→webhook delivery.

## Install

```bash
brew tap madshn/localpush
brew install --cask localpush
```

## Uninstall

```bash
# Standard uninstall (keeps data)
brew uninstall --cask localpush

# Full cleanup (removes all data, logs, config)
brew uninstall --zap --cask localpush
```

## Update

```bash
brew upgrade --cask localpush
```

Or enable auto-update in the app settings (enabled by default).

## Version

Current version: 0.1.0

## System Requirements

- macOS 12.0 (Monterey) or later
