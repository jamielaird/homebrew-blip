# homebrew-blip

A [Homebrew](https://brew.sh) tap for [Blip](https://github.com/jamielaird/blip) —
a macOS menu-bar monitor for healthchecks.io.

This repo holds the cask formula and the released `.app` binaries. Blip's source
lives in a separate (private) repository.

## Install

```sh
brew install --cask jamielaird/blip/blip
```

Blip is ad-hoc signed but not notarized (it's a free, solo project without a
paid Apple Developer ID), so macOS Gatekeeper would normally block the first
launch. The cask strips the download quarantine on install for you, so it opens
cleanly on first double-click — no `--no-quarantine` flag or right-click → Open
needed.

After installing, click the menu-bar glyph → **Settings…** → **Providers** →
**Add provider** and paste your healthchecks.io API key.

## Update

```sh
brew update
brew upgrade --cask jamielaird/blip/blip
```

## Uninstall

```sh
brew uninstall --cask jamielaird/blip/blip          # remove the app
brew uninstall --zap --cask jamielaird/blip/blip    # also remove preferences
```

> **Note:** always use the fully-qualified `jamielaird/blip/blip`. An unrelated
> app of the same name exists in the default Homebrew cask tap, so the bare
> `blip` token is ambiguous.
