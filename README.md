## zsh-completions

This project is a personal collection of zsh completion definitions, currently includes:

- [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zchee/zsh-completions](https://github.com/zchee/zsh-completions)
- [gradle/gradle-completion](https://github.com/gradle/gradle-completion)
- [esc/conda-zsh-completion](https://github.com/esc/conda-zsh-completion)
- [spwhitt/nix-zsh-completions](https://github.com/spwhitt/nix-zsh-completions)
- Some [custom](https://github.com/sainnhe/zsh-completions/tree/master/src/custom) completion definitions.

## Installation

### Via Plugin Manager

Take [zinit](https://github.com/zdharma/zinit) for example:

```shell
zinit ice wait'0' lucid; zinit light sainnhe/zsh-completions
```

**Note:** This repository contains some submodules, please make sure your plugin manager can update them.

### Manually

1. Clone this repository: `git clone --depth 1 https://github.com/sainnhe/zsh-completions.git`
2. Update submodules: `cd zsh-completions; git submodule init; git submodule update`
3. Add this to your `~/.zshrc`: `source /path/to/zsh-completions/zsh-completions.plugin.zsh`

## License

See each submodule for detailed license information.

Other code goes to [MIT License](./LICENSE).
