fpath+="${0:h}/src/custom"
source "${0:h}/src/zsh-users.zsh-completions/zsh-completions.plugin.zsh"
source "${0:h}/src/zchee.zsh-completions/zsh-completions.plugin.zsh"
__yeoman_pluginDir="$(dirname "$0")"/src/edouard-lopez.yeoman-zsh-plugin
export __yeoman_pluginDir
. "$__yeoman_pluginDir"/helpers_yo
(__yo_setGlobalGenerators &)
source "${0:h}/src/gradle.gradle-completion/gradle-completion.plugin.zsh"
source "${0:h}/src/esc.conda-zsh-completion/conda-zsh-completion.plugin.zsh"
source "${0:h}/src/MenkeTechnologies.zsh-more-completions/zsh-more-completions.plugin.zsh"

