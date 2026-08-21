# Alltuner Homebrew Tap

The official [Homebrew](https://brew.sh) tap for [alltuner](https://github.com/alltuner) packages.

## Casks

| Package | Description |
|---|---|
| [`factoryfloor`](https://factory-floor.com) | AI-powered development workspace for macOS. |

```bash
brew install --cask alltuner/tap/factoryfloor
```

## Formulas

| Package | Description |
|---|---|
| [`git-sprout`](https://sprout.alltuner.com) | Drop-in replacement for `git worktree add` that shares disk blocks instead of copying your tree. |
| [`vacant`](https://github.com/alltuner/vacant) | Fast domain availability checker via authoritative DNS. |
| [`mise-completions-sync`](https://github.com/alltuner/mise-completions-sync) | Sync shell completions for tools managed by mise. |

```bash
brew install alltuner/tap/git-sprout
brew install alltuner/tap/vacant
brew install alltuner/tap/mise-completions-sync
```

## Updating

```bash
brew upgrade
```

Or a single package:

```bash
brew upgrade --cask factoryfloor
brew upgrade vacant
```

## License

[MIT](LICENSE)
