# sudyke/homebrew-tap

Homebrew tap for my macOS apps.

## Install

```bash
brew tap sudyke/tap
brew install --cask claudia-monitor
```

Or as a one-liner:

```bash
brew install --cask sudyke/tap/claudia-monitor
```

> **Naming note:** the cask is `claudia-monitor` (not just `claudia`) because the unqualified `claudia` already resolves to a different cask in Homebrew's main repo.

## Casks

| Cask | Description |
|---|---|
| [`claudia-monitor`](Casks/claudia-monitor.rb) | Menu bar app that monitors Docker, Supabase, and a local dev server. [Source](https://github.com/sudyke/Claudia) |

## License

MIT
