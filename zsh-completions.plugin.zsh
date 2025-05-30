source "${0:h}/src/zsh-users.zsh-completions/zsh-completions.plugin.zsh"
source "${0:h}/src/zchee.zsh-completions/zsh-completions.plugin.zsh"
[ -x "$(command -v nix-env)" ] && source "${0:h}/src/spwhitt.nix-zsh-completions/nix-zsh-completions.plugin.zsh"
[ -x "$(command -v gradle)" ] && source "${0:h}/src/gradle.gradle-completion/gradle-completion.plugin.zsh"
[ -x "$(command -v conda)" ] && source "${0:h}/src/conda-incubator.conda-zsh-completion/conda-zsh-completion.plugin.zsh"
[ -x "$(command -v npm)" ] && source "${0:h}/src/custom/npm.plugin.zsh"
[ -x "$(command -v pip)" ] && source "${0:h}/src/custom/pip.plugin.zsh"
fpath+="${0:h}/src/custom"

