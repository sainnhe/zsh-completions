#compdef mdbook

autoload -U is-at-least

_mdbook() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_mdbook_commands" \
"*::: :->mdbook" \
&& ret=0
    case $state in
    (mdbook)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:mdbook-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" \
'--title=[Sets the book title]:title: ' \
'--ignore=[Creates a VCS ignore file (i.e. .gitignore)]:ignore:(none git)' \
'--theme[Copies the default theme into your source folder]' \
'--force[Skips confirmation prompts]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Directory to create the book in
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" \
'-d+[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'--dest-dir=[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'-o[Opens the compiled book in a web browser]' \
'--open[Opens the compiled book in a web browser]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Root directory for the book
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
'-d+[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'--dest-dir=[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'-c+[]:chapter: ' \
'--chapter=[]:chapter: ' \
'*-L+[A comma-separated list of directories to add to the crate search path when building tests]:dir: ' \
'*--library-path=[A comma-separated list of directories to add to the crate search path when building tests]:dir: ' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Root directory for the book
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" \
'-d+[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'--dest-dir=[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Root directory for the book
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':shell -- the shell to generate completions for:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(watch)
_arguments "${_arguments_options[@]}" \
'-d+[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'--dest-dir=[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'-o[Opens the compiled book in a web browser]' \
'--open[Opens the compiled book in a web browser]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Root directory for the book
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(serve)
_arguments "${_arguments_options[@]}" \
'-d+[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'--dest-dir=[Output directory for the book Relative paths are interpreted relative to the book'\''s root directory. If omitted, mdBook uses build.build-dir from book.toml or defaults to \`./book\`.]:dest-dir:_files' \
'-n+[Hostname to listen on for HTTP connections]: : ' \
'--hostname=[Hostname to listen on for HTTP connections]: : ' \
'-p+[Port to use for HTTP connections]: : ' \
'--port=[Port to use for HTTP connections]: : ' \
'-o[Opens the compiled book in a web browser]' \
'--open[Opens the compiled book in a web browser]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'::dir -- Root directory for the book
(Defaults to the current directory when omitted):_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_mdbook__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:mdbook-help-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(watch)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(serve)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_mdbook_commands] )) ||
_mdbook_commands() {
    local commands; commands=(
'init:Creates the boilerplate structure and files for a new book' \
'build:Builds a book from its markdown files' \
'test:Tests that a book'\''s Rust code samples compile' \
'clean:Deletes a built book' \
'completions:Generate shell completions for your shell to stdout' \
'watch:Watches a book'\''s files and rebuilds it on changes' \
'serve:Serves a book at http\://localhost\:3000, and rebuilds it on changes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'mdbook commands' commands "$@"
}
(( $+functions[_mdbook__build_commands] )) ||
_mdbook__build_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook build commands' commands "$@"
}
(( $+functions[_mdbook__help__build_commands] )) ||
_mdbook__help__build_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help build commands' commands "$@"
}
(( $+functions[_mdbook__clean_commands] )) ||
_mdbook__clean_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook clean commands' commands "$@"
}
(( $+functions[_mdbook__help__clean_commands] )) ||
_mdbook__help__clean_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help clean commands' commands "$@"
}
(( $+functions[_mdbook__completions_commands] )) ||
_mdbook__completions_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook completions commands' commands "$@"
}
(( $+functions[_mdbook__help__completions_commands] )) ||
_mdbook__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help completions commands' commands "$@"
}
(( $+functions[_mdbook__help_commands] )) ||
_mdbook__help_commands() {
    local commands; commands=(
'init:Creates the boilerplate structure and files for a new book' \
'build:Builds a book from its markdown files' \
'test:Tests that a book'\''s Rust code samples compile' \
'clean:Deletes a built book' \
'completions:Generate shell completions for your shell to stdout' \
'watch:Watches a book'\''s files and rebuilds it on changes' \
'serve:Serves a book at http\://localhost\:3000, and rebuilds it on changes' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'mdbook help commands' commands "$@"
}
(( $+functions[_mdbook__help__help_commands] )) ||
_mdbook__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help help commands' commands "$@"
}
(( $+functions[_mdbook__help__init_commands] )) ||
_mdbook__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help init commands' commands "$@"
}
(( $+functions[_mdbook__init_commands] )) ||
_mdbook__init_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook init commands' commands "$@"
}
(( $+functions[_mdbook__help__serve_commands] )) ||
_mdbook__help__serve_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help serve commands' commands "$@"
}
(( $+functions[_mdbook__serve_commands] )) ||
_mdbook__serve_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook serve commands' commands "$@"
}
(( $+functions[_mdbook__help__test_commands] )) ||
_mdbook__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help test commands' commands "$@"
}
(( $+functions[_mdbook__test_commands] )) ||
_mdbook__test_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook test commands' commands "$@"
}
(( $+functions[_mdbook__help__watch_commands] )) ||
_mdbook__help__watch_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook help watch commands' commands "$@"
}
(( $+functions[_mdbook__watch_commands] )) ||
_mdbook__watch_commands() {
    local commands; commands=()
    _describe -t commands 'mdbook watch commands' commands "$@"
}

if [ "$funcstack[1]" = "_mdbook" ]; then
    _mdbook "$@"
else
    compdef _mdbook mdbook
fi
