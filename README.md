<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### vsp

> A plugin for [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

Enables quick switching between Hasihcorp Vault profiles. If you have multiple vault endpint need to manage. Inspire by [@mgoodness](https://github.com/mgoodness/plugin-asp).


## Prerequisites

- setup vault profile in your `${HOME}/.vault/credentials` like this:
```text
[foot]
vault_addr = https://foot.example.com
vault_token = '1a2b3c4d5e6f7g8h9i'

[bar]
vault_addr = https://bar.example.com
vault_token = '1a2b3c4d5e6f7g8h9i'

```

## Install

```fish
$ git clone git@github.com:terrych0u/plugin-vsp.git ~/.local/share/omf/pkg/
```

## Uninstall
```fish
rm -rf ~/.local/share/omf/pkg/plugin-vsp
```


## Usage

```fish
$ vsp <vault_profile>
```

Sets `$VAULT_ADDR` and `$VAULT_TOKEN` environment variables to
the corresponding values from `${HOME}/.vault/credentials`.

```fish
$ vgp
```

Echoes `$VAULT_ADDR` and `VAULT_TOKEN`.
