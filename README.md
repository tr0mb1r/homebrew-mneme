# homebrew-mneme

Homebrew tap for [mneme](https://github.com/tr0mb1r/mneme) — a standalone, MCP-native persistent memory tool for AI agents.

## Install

```sh
brew tap tr0mb1r/mneme
brew install mneme
```

Verify:

```sh
mneme --version
```

## What you get

A single static binary on `$PATH` that speaks the [Model Context Protocol](https://modelcontextprotocol.io) over stdio. Wire it into Claude Code, Claude Desktop, Cursor, Cline, Aider, or any other MCP-compatible agent — see the [setup guide](https://github.com/tr0mb1r/mneme/blob/main/docs/CLAUDE_CODE_SETUP.md).

The first run downloads the embedding model (~1.5 GB for the default `bge-m3`, ~80 MB for `minilm-l6`). Subsequent starts are sub-second.

## Supported platforms

| Platform | Architecture | Bottle source |
|---|---|---|
| macOS | Apple Silicon (M-series) | `aarch64-apple-darwin` |
| macOS | Intel | `x86_64-apple-darwin` |
| Linux | aarch64 | `aarch64-unknown-linux-musl` (musl-static, glibc-portable) |
| Linux | x86_64 | `x86_64-unknown-linux-musl` (musl-static, glibc-portable) |

Windows is not distributed via Homebrew. Windows users can grab `mneme-<version>-x86_64-pc-windows-msvc.zip` from the [GitHub Releases](https://github.com/tr0mb1r/mneme/releases) page.

## Upgrading

```sh
brew update
brew upgrade mneme
```

The formula auto-bumps when a new mneme tag is published; see the upstream [release pipeline](https://github.com/tr0mb1r/mneme/blob/main/.github/workflows/release.yml).

## Uninstall

```sh
brew uninstall mneme
brew untap tr0mb1r/mneme
```

The formula manages only the binary. To also remove mneme's data directory:

```sh
mneme stop                  # stop the running server, if any
rm -rf ~/.mneme
```

## Troubleshooting

For runtime issues, see the upstream [troubleshooting guide](https://github.com/tr0mb1r/mneme/blob/main/docs/CLAUDE_CODE_SETUP.md#8-troubleshooting). Tap-specific issues belong here as GitHub Issues on this repository.

## License

The formula and tap metadata in this repository are licensed under [Apache-2.0](LICENSE), matching upstream mneme.
