# homebrew-blip

A [Homebrew](https://brew.sh) tap for [Blip](https://github.com/jamielaird/blip) —
a macOS menu-bar monitor for healthchecks.io.

This repo holds the cask formula and the released `.app` binaries. Blip's source
lives in a separate (private) repository.

## Install

```sh
brew install --cask jamielaird/blip/blip --no-quarantine
```

`--no-quarantine` skips the macOS Gatekeeper prompt on first launch. Blip is
ad-hoc signed but not notarized (it's a free, solo project without a paid Apple
Developer ID), so without that flag macOS will block the first open and you'd
need to right-click → Open instead.

After installing, click the menu-bar glyph → **Settings…** → **Providers** →
**Add provider** and paste your healthchecks.io API key.

## Update

```sh
brew update
brew upgrade --cask blip
```

## Uninstall

```sh
brew uninstall --cask blip            # remove the app
brew uninstall --zap --cask blip      # also remove preferences
```
