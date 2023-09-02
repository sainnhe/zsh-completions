
# pip zsh completion start
#compdef -P pip[0-9.]#
compadd $( COMP_WORDS="$words[*]" \
           COMP_CWORD=$((CURRENT-1)) \
           PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null )
# pip zsh completion end

