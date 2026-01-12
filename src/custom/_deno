#compdef deno

autoload -U is-at-least

_deno() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--watch=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'(--watch)*--watch-hmr=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'(--inspect --inspect-wait --inspect-brk)--coverage=[Collect coverage profile data into DIR. If DIR is not specified, it uses '\''coverage/'\''.   This option can also be set via the DENO_COVERAGE_DIR environment variable.]' \
'-t+[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'--tunnel=[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--no-code-cache[Disable V8 code cache feature]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-V[Print version]' \
'--version[Print version]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'::script_arg -- Script arg:_files' \
":: :_deno_commands" \
"*::: :->deno" \
&& ret=0
    case $state in
    (deno)
        words=($line[2] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:deno-command-$line[2]:"
        case $line[2] in
            (run)
_arguments "${_arguments_options[@]}" : \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--watch=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'(--watch)*--watch-hmr=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'(--inspect --inspect-wait --inspect-brk)--coverage=[Collect coverage profile data into DIR. If DIR is not specified, it uses '\''coverage/'\''.   This option can also be set via the DENO_COVERAGE_DIR environment variable.]' \
'-t+[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'--tunnel=[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--no-code-cache[Disable V8 code cache feature]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(serve)
_arguments "${_arguments_options[@]}" : \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'--port=[The TCP port to serve on. Pass 0 to pick a random free port \[default\: 8000\]]: :_default' \
'--host=[The TCP address to serve on, defaulting to 0.0.0.0 (all interfaces)]: :_default' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--watch=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'(--watch)*--watch-hmr=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'-t+[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'--tunnel=[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--open[Open the browser on the address that the server is running on.]' \
'--parallel[Run multiple server workers in parallel. Parallelism defaults to the number of available CPUs or the value of the DENO_JOBS environment variable]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--no-code-cache[Disable V8 code cache feature]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-D[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'--dev[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--lockfile-only[Install only updating the lockfile]' \
'(--jsr)--npm[assume unprefixed package names are npm packages]' \
'(--npm)--jsr[assume unprefixed package names are jsr packages]' \
'*::packages -- List of packages to add:_default' \
&& ret=0
;;
(audit)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--level=[Only show advisories with severity greater or equal to the one specified]: :(low moderate high critical)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--ignore-unfixable[Ignore advisories that don'\''t have any actions to resolve them]' \
'--socket[Check against socket.dev vulnerability database]' \
'--ignore-registry-errors[Return exit code 0 if remote service(s) responds with an error.]' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--lockfile-only[Install only updating the lockfile]' \
'*::packages -- List of packages to remove:_default' \
&& ret=0
;;
(bench)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--ignore=[Ignore files]: :_default' \
'--filter=[Run benchmarks with this string or regexp pattern in the bench name]: :_default' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--json[UNSTABLE\: Output benchmark result in JSON format]' \
'--no-run[Cache bench modules, but don'\''t run benchmarks]' \
'--permit-no-files[Don'\''t return an error code if no files were found]' \
'--watch[Watch for file changes and restart process automatically.   Only local files from entry point module graph are watched.]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'*::files -- List of file names to run:_default' \
&& ret=0
;;
(bundle)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'-o+[Output path\`]: :_files' \
'--output=[Output path\`]: :_files' \
'--outdir=[Output directory for bundled files]: :_files -/' \
'*--external=[]: :_default' \
'--format=[]: :_default' \
'--packages=[How to handle packages. Accepted values are '\''bundle'\'' or '\''external'\'']: :_default' \
'--inline-imports=[Whether to inline imported modules into the importing file \[default\: true\]]' \
'--sourcemap=[Generate source map. Accepted values are '\''linked'\'', '\''inline'\'', or '\''external'\'']' \
'--platform=[Platform to bundle for. Accepted values are '\''browser'\'' or '\''deno'\'']: :_default' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--minify[Minify the output]' \
'--code-splitting[Enable code splitting]' \
'--watch[Watch and rebuild on changes]' \
'*::file:_files' \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'*::file:_files' \
&& ret=0
;;
(check)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--no-code-cache[Disable V8 code cache feature]' \
'(--no-remote)--all[Type-check all code, including remote modules and npm packages]' \
'(--no-remote)--remote[Type-check all modules, including remote ones]' \
'--doc[Type-check code blocks in JSDoc as well as actual code]' \
'(--doc)--doc-only[Type-check code blocks in JSDoc and Markdown only]' \
'*::file:_files' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-e[Retain cache data needed by the given files]' \
'--except[Retain cache data needed by the given files]' \
'--dry-run[Show what would be removed without performing any actions]' \
'*::except-paths:_files' \
&& ret=0
;;
(compile)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--include=[Includes an additional module or file/directory in the compiled executable.   Use this flag if a dynamically imported module or a web worker main module   fails to load in the executable or to embed a file or directory in the executable.   This flag can be passed multiple times, to include multiple additional modules.]: :_files' \
'*--exclude=[Excludes a file/directory in the compiled executable.   Use this flag to exclude a specific file or directory within the included files.   For example, to exclude a certain folder in the bundled node_modules directory.]: :_files' \
'-o+[Output file (defaults to \$PWD/<inferred-name>)]: :_files' \
'--output=[Output file (defaults to \$PWD/<inferred-name>)]: :_files' \
'--target=[Target OS architecture]: :(x86_64-unknown-linux-gnu aarch64-unknown-linux-gnu x86_64-pc-windows-msvc x86_64-apple-darwin aarch64-apple-darwin)' \
'--icon=[Set the icon of the executable on Windows (.ico)]: :_default' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--no-code-cache[Disable V8 code cache feature]' \
'--no-terminal[Hide terminal on Windows]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--dynamic[Generate dynamic completions for the given shell (unstable), currently this only provides available tasks for \`deno task\`.]' \
'::shell:(bash fish powershell zsh fig)' \
&& ret=0
;;
(coverage)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'*--ignore=[Ignore coverage files]: :_files' \
'*--include=[Include source files in the report]:regex:_default' \
'*--exclude=[Exclude source files from the report]:regex:_default' \
'--output=[Exports the coverage report in lcov format to the given file.   If no --output arg is specified then the report is written to stdout.]: :_files' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--lcov[Output coverage report in lcov format]' \
'--html[Output coverage report in HTML format in the given directory]' \
'--detailed[Output coverage report in detailed format in the terminal]' \
'*::files:_files' \
&& ret=0
;;
(doc)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--name=[The name that will be used in the docs (ie for breadcrumbs)]: :_default' \
'--category-docs=[Path to a JSON file keyed by category and an optional value of a markdown doc]: :_default' \
'--symbol-redirect-map=[Path to a JSON file keyed by file, with an inner map of symbol to an external link]: :_default' \
'--default-symbol-map=[Uses the provided mapping of default name to wanted name for usage blocks]: :_default' \
'--output=[Directory for HTML documentation output]: :_files -/' \
'(--json --lint --html)--filter=[Dot separated path to symbol]: :_default' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--no-npm[Do not resolve npm modules]' \
'--no-remote[Do not resolve remote modules]' \
'--json[Output documentation in JSON format]' \
'(--json)--html[Output documentation in HTML format]' \
'--strip-trailing-html[Remove trailing .html from various links. Will still generate files with a .html extension]' \
'--private[Output private documentation]' \
'--lint[Output documentation diagnostics.]' \
'*::source_file:_files' \
&& ret=0
;;
(deploy)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'*::args:_default' \
&& ret=0
;;
(sandbox)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'*::args:_default' \
&& ret=0
;;
(eval)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'-p[print result to stdout]' \
'--print[print result to stdout]' \
'*::code_arg -- Code to evaluate:_default' \
&& ret=0
;;
(fmt)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs md json jsonc css scss sass less html svelte vue astro yml yaml ipynb sql vto njk)' \
'*--ignore=[Ignore formatting particular source files]: :_files' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'--use-tabs=[Use tabs instead of spaces for indentation \[default\: false\]]' \
'--line-width=[Define maximum line width \[default\: 80\]]: :_default' \
'--indent-width=[Define indentation width \[default\: 2\]]: :_default' \
'--single-quote=[Use single quotes \[default\: false\]]' \
'--prose-wrap=[Define how prose should be wrapped \[default\: always\]]: :(always never preserve)' \
'--no-semicolons=[Don'\''t use semicolons except where necessary \[default\: false\]]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'--check[Check if the source files are formatted]' \
'--permit-no-files[Don'\''t return an error code if no files were found]' \
'--watch[Watch for file changes and restart process automatically.   Only local files from entry point module graph are watched.]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--unstable-css[Enable formatting CSS, SCSS, Sass and Less files]' \
'--unstable-html[Enable formatting HTML files]' \
'--unstable-component[Enable formatting Svelte, Vue, Astro and Angular files]' \
'--unstable-yaml[Enable formatting YAML files]' \
'--unstable-sql[Enable formatting SQL files.]' \
'*::files:_files' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lib --serve --empty)--npm[Generate a npm create-* project]' \
'--lib[Generate an example library project]' \
'(--lib)--serve[Generate an example project for \`deno serve\`]' \
'(--lib --serve --npm)--empty[Generate a minimal project with just main.ts and deno.json]' \
'-y[Bypass the prompt and run with full permissions]' \
'--yes[Bypass the prompt and run with full permissions]' \
'*::args:_default' \
&& ret=0
;;
(info)
_arguments "${_arguments_options[@]}" : \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'()--location=[Show files used for origin bound APIs like the Web Storage API when running a script with --location=<HREF>]:HREF:_urls' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--json[UNSTABLE\: Outputs the information in JSON format]' \
'::file:_files' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'-n+[Executable file name]: :_default' \
'--name=[Executable file name]: :_default' \
'--root=[Installation root]: :_files -/' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'-f[Forcefully overwrite existing installation]' \
'--force[Forcefully overwrite existing installation]' \
'-g[Install a package or script as a globally available executable]' \
'--global[Install a package or script as a globally available executable]' \
'(-g --global)-e[Install dependents of the specified entrypoint(s)]' \
'(-g --global)--entrypoint[Install dependents of the specified entrypoint(s)]' \
'(-e --entrypoint -g --global)-D[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'(-e --entrypoint -g --global)--dev[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'(--jsr -e --entrypoint -g --global)--npm[assume unprefixed package names are npm packages]' \
'(--npm -e --entrypoint -g --global)--jsr[assume unprefixed package names are jsr packages]' \
'(-g --global)--lockfile-only[Install only updating the lockfile]' \
'*::cmd:_files' \
&& ret=0
;;
(i)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'-n+[Executable file name]: :_default' \
'--name=[Executable file name]: :_default' \
'--root=[Installation root]: :_files -/' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'-f[Forcefully overwrite existing installation]' \
'--force[Forcefully overwrite existing installation]' \
'-g[Install a package or script as a globally available executable]' \
'--global[Install a package or script as a globally available executable]' \
'(-g --global)-e[Install dependents of the specified entrypoint(s)]' \
'(-g --global)--entrypoint[Install dependents of the specified entrypoint(s)]' \
'(-e --entrypoint -g --global)-D[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'(-e --entrypoint -g --global)--dev[Add the package as a dev dependency. Note\: This only applies when adding to a \`package.json\` file.]' \
'(--jsr -e --entrypoint -g --global)--npm[assume unprefixed package names are npm packages]' \
'(--npm -e --entrypoint -g --global)--jsr[assume unprefixed package names are jsr packages]' \
'(-g --global)--lockfile-only[Install only updating the lockfile]' \
'*::cmd:_files' \
&& ret=0
;;
(json_reference)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(jupyter)
_arguments "${_arguments_options[@]}" : \
'(--kernel)-n+[Set a name for the kernel (defaults to '\''deno'\''). Useful when maintaing multiple Deno kernels.]: :_default' \
'(--kernel)--name=[Set a name for the kernel (defaults to '\''deno'\''). Useful when maintaing multiple Deno kernels.]: :_default' \
'-d+[Set a display name for the kernel (defaults to '\''Deno'\''). Useful when maintaing multiple Deno kernels.]: :_default' \
'--display=[Set a display name for the kernel (defaults to '\''Deno'\''). Useful when maintaing multiple Deno kernels.]: :_default' \
'(--install)--conn=[Path to JSON file describing connection parameters, provided by Jupyter]: :_files' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'(--kernel)--install[Install a kernelspec]' \
'--force[Force installation of a kernel, overwriting previously existing kernelspec]' \
'(--install)--kernel[Start the kernel]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(approve-scripts)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--lockfile-only[Install only updating the lockfile]' \
'*::packages -- Packages to approve (npm specifiers). When omitted, you will be prompted to select from installed packages with lifecycle scripts.:_default' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--root=[Installation root]: :_files -/' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'-g[Remove globally installed package or module]' \
'--global[Remove globally installed package or module]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'--lockfile-only[Install only updating the lockfile]' \
'::name-or-package:_default' \
'*::additional-packages -- List of additional packages to remove:_default' \
&& ret=0
;;
(outdated)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--compatible)--latest[Consider the latest version, regardless of semver constraints]' \
'--compatible[Only consider versions that satisfy semver requirements]' \
'-r[Include all workspace members]' \
'--recursive[Include all workspace members]' \
'--lockfile-only[Install only updating the lockfile]' \
'-i[Interactively select which dependencies to update]' \
'--interactive[Interactively select which dependencies to update]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'-u[Update dependency versions]' \
'--update[Update dependency versions]' \
'*::filters -- Filters selecting which packages to act on. Can include wildcards (*) to match multiple packages. If a version requirement is specified, the matching packages will be updated to the given requirement.:_default' \
&& ret=0
;;
(lsp)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(lint)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--ext=[Specify the file extension to lint when reading from stdin.For example, use \`jsx\` to lint JSX files or \`tsx\` for TSX files.This argument is necessary because stdin input does not automatically infer the file type.Example usage\: \`cat file.jsx | deno lint - --ext=jsx\`.]:EXT:_default' \
'*--rules-tags=[Use set of rules with a tag]: :_default' \
'(--rules)--rules-include=[Include lint rules]: :_default' \
'(--rules)--rules-exclude=[Exclude lint rules]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*--ignore=[Ignore linting particular source files]: :_files' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--fix[Fix any linting errors for rules that support it]' \
'--rules[List available rules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'--json[Output lint result in JSON format]' \
'(--json)--compact[Output lint result in compact format]' \
'--permit-no-files[Don'\''t return an error code if no files were found]' \
'--watch[Watch for file changes and restart process automatically.   Only local files from entry point module graph are watched.]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'*::files:_files' \
&& ret=0
;;
(publish)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--token=[The API token to use when publishing. If unset, interactive authentication is be used]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--set-version=[Set version for a package to be published.   This flag can be used while publishing individual packages and cannot be used in a workspace.]:VERSION:_default' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'--dry-run[Prepare the package for publishing performing all checks and validations without uploading]' \
'--allow-slow-types[Allow publishing with slow types]' \
'--allow-dirty[Allow publishing if the repository has uncommitted changed]' \
'--no-provenance[Disable provenance attestation.   Enabled by default on Github actions, publicly links the package to where it was built and published from.]' \
&& ret=0
;;
(repl)
_arguments "${_arguments_options[@]}" : \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'*--eval-file=[Evaluates the provided file(s) as scripts when the REPL starts. Accepts file paths and URLs]: :_files' \
'--eval=[Evaluates the provided code when the REPL starts]:code:_default' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--json[]' \
'*::args:_default' \
&& ret=0
;;
(task)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cwd=[Specify the directory to run the task in]:DIR:_files -/' \
'-f+[Filter members of the workspace by name, implies --recursive flag]: :_default' \
'--filter=[Filter members of the workspace by name, implies --recursive flag]: :_default' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'-t+[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'--tunnel=[Execute tasks with a tunnel to Deno Deploy.      Create a secure connection between your local machine and Deno Deploy,     providing access to centralised environment variables, logging,     and serving from your local environment to the public internet]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'-r[Run the task in all projects in the workspace]' \
'--recursive[Run the task in all projects in the workspace]' \
'--eval[Evaluate the passed value as if it was a task in a configuration file]' \
"*::external_command:_default" \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Set type-checking behavior. This subcommand type-checks local modules by default, so adding --check is redundant   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--ignore=[Ignore files]: :_files' \
'--fail-fast=[Stop after N errors. Defaults to stopping after first failure]' \
'--filter=[Run tests with this string or regexp pattern in the test name]: :_default' \
'--shuffle=[Shuffle the order in which the tests are run]' \
'(--inspect --inspect-wait --inspect-brk)--coverage=[Collect coverage profile data into DIR. If DIR is not specified, it uses '\''coverage/'\''.   This option can also be set via the DENO_COVERAGE_DIR environment variable.]' \
'(--no-run --coverage)*--watch=[Watch for file changes and restart process automatically.   Local files from entry point module graph are watched by default.   Additional paths might be watched by passing them as arguments to this flag.]' \
'*--watch-exclude=[Exclude provided files/patterns from watch mode]' \
'--junit-path=[Write a JUnit XML test report to PATH. Use '\''-'\'' to write to stdout which is the default when PATH is not provided]:PATH:_files' \
'--reporter=[Select reporter to use. Default to '\''pretty'\'']: :(pretty dot junit tap)' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'--ext=[Set content type of the supplied file]: :(ts tsx js jsx mts mjs cts cjs)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'--no-run[Cache test modules, but don'\''t run tests]' \
'--trace-leaks[Enable tracing of leaks. Useful when debugging leaking ops in test, but impacts test execution time]' \
'--doc[Evaluate code blocks in JSDoc and Markdown]' \
'--permit-no-files[Don'\''t return an error code if no files were found]' \
'--coverage-raw-data-only[Only collect raw coverage data, without generating a report]' \
'--clean[Empty the temporary coverage profile data directory before running tests.   Note\: running multiple \`deno test --clean\` calls in series or parallel for the same coverage directory may cause race conditions.]' \
'--parallel[Run test modules in parallel. Parallelism defaults to the number of available CPUs or the value of the DENO_JOBS environment variable]' \
'--no-clear-screen[Do not clear terminal screen when under watch mode]' \
'--hide-stacktraces[Hide stack traces for errors in failure test results.]' \
'*::files -- List of file names to run:_files' \
&& ret=0
;;
(types)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'(--compatible)--latest[Consider the latest version, regardless of semver constraints]' \
'--compatible[Only consider versions that satisfy semver requirements]' \
'-r[Include all workspace members]' \
'--recursive[Include all workspace members]' \
'--lockfile-only[Install only updating the lockfile]' \
'-i[Interactively select which dependencies to update]' \
'--interactive[Interactively select which dependencies to update]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'*::filters -- Filters selecting which packages to act on. Can include wildcards (*) to match multiple packages. If a version requirement is specified, the matching packages will be updated to the given requirement.:_default' \
&& ret=0
;;
(upgrade)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--version=[The version to upgrade to]: :_default' \
'--output=[The path to output the updated version to]: :_files' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--dry-run[Perform all checks without replacing old exe]' \
'-f[Replace current exe even if not out-of-date]' \
'--force[Replace current exe even if not out-of-date]' \
'--canary[Upgrade to canary builds]' \
'(--canary --version)--rc[Upgrade to a release candidate]' \
'::version-or-hash-or-channel -- Version (v1.46.0), channel (rc, canary) or commit hash (9bc2dd29ad6ba334fd57a20114e367d3c04763d4):_default' \
&& ret=0
;;
(vendor)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(x)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--no-check=[Skip type-checking. If the value of "remote" is supplied, diagnostic errors from remote modules will be ignored]' \
'--import-map=[Load import map file from local file or remote URL   Docs\: https\://docs.deno.com/runtime/manual/basics/import_maps]:FILE:_files' \
'--node-modules-dir=[Sets the node modules management mode for npm packages]' \
'--vendor=[Toggles local vendor folder usage for remote modules and a node_modules folder for npm packages]' \
'*--conditions=[Use this argument to specify custom conditions for npm package exports. You can also use DENO_CONDITIONS env var.  Docs\: https\://docs.deno.com/go/conditional-exports]: :_default' \
'-c+[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'--config=[Configure different aspects of deno including TypeScript, linting, and code formatting.   Typically the configuration file will be called \`deno.json\` or \`deno.jsonc\` and   automatically detected; in that case this flag is not necessary.   Docs\: https\://docs.deno.com/go/config]:FILE:_files' \
'*-r+[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'*--reload=[Reload source code cache (recompile TypeScript)   no value                                                 Reload everything   jsr\:@std/http/file-server,jsr\:@std/assert/assert-equals  Reloads specific modules   npm\:                                                     Reload all npm modules   npm\:chalk                                                Reload specific npm module]' \
'--lock=[Check the specified lock file. (If value is not provided, defaults to "./deno.lock")]' \
'--frozen=[Error out if lockfile is out of date]' \
'--cert=[Load certificate authority from PEM encoded file]:FILE:_files' \
'--unsafely-ignore-certificate-errors=[DANGER\: Disables verification of TLS certificates]' \
'--minimum-dependency-age=[(Unstable) The age in minutes, ISO-8601 duration or RFC3339 absolute timestamp (e.g. '\''120'\'' for two hours, '\''P2D'\'' for two days, '\''2025-09-16'\'' for cutoff date, '\''2025-09-16T12\:00\:00+00\:00'\'' for cutoff time, '\''0'\'' to disable)]: :_default' \
'-P+[]' \
'--permission-set=[]' \
'*-R+[]' \
'*--allow-read=[]' \
'*--deny-read=[]' \
'*--ignore-read=[]' \
'*-W+[]' \
'*--allow-write=[]' \
'*--deny-write=[]' \
'-N+[]' \
'--allow-net=[]' \
'--deny-net=[]' \
'-E+[]' \
'--allow-env=[]' \
'--deny-env=[]' \
'--ignore-env=[]' \
'-S+[]' \
'--allow-sys=[]' \
'--deny-sys=[]' \
'--allow-run=[]' \
'--deny-run=[]' \
'*--allow-ffi=[]' \
'*--deny-ffi=[]' \
'-I+[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--allow-import=[Allow importing from remote hosts. Optionally specify allowed IP addresses and host names, with ports as necessary. Default value\: deno.land\:443,jsr.io\:443,esm.sh\:443,cdn.jsdelivr.net\:443,raw.githubusercontent.com\:443,gist.githubusercontent.com\:443]' \
'--deny-import=[Deny importing from remote hosts. Optionally specify denied IP addresses and host names, with ports as necessary.]' \
'--inspect=[Activate inspector on host\:port \[default\: 127.0.0.1\:9229\]]' \
'--inspect-brk=[Activate inspector on host\:port, wait for debugger to connect and break at the start of user script]' \
'--inspect-wait=[Activate inspector on host\:port and wait for debugger to connect before running user code]' \
'*--allow-scripts=[Allow running npm lifecycle scripts for the given packages   Note\: Scripts will only be executed when using a node_modules directory (\`--node-modules-dir\`)]' \
'--location=[Value of globalThis.location used by some web APIs]:HREF:_urls' \
'--v8-flags=[To see a list of all available flags use --v8-flags=--help   Flags can also be set via the DENO_V8_FLAGS environment variable.   Any flags set with this flag are appended after the DENO_V8_FLAGS environment variable]' \
'--seed=[Set the random number generator seed]:NUMBER:_default' \
'--trace-ops=[Trace low-level op calls]' \
'*--preload=[A list of files that will be executed before the main module]:FILE:_files' \
'*--require=[A list of CommonJS modules that will be executed before the main module]:FILE:_files' \
'(--no-check)--check=[Enable type-checking. This subcommand does not type-check by default   If the value of "all" is supplied, remote modules will be included.   Alternatively, the '\''deno check'\'' subcommand can be used]' \
'*--env-file=[Load environment variables from local file   Only the first environment variable with a given key is used.   Existing process environment variables are not overwritten, so if variables with the same names already exist in the environment, their values will be preserved.   Where multiple declarations for the same environment variable exist in your .env file, the first one encountered is applied. This is determined by the order of the files you pass as arguments.]' \
'()--install-alias=[]' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
'--no-remote[Do not resolve remote modules]' \
'--no-npm[Do not resolve npm modules]' \
'(-c --config)--no-config[Disable automatic loading of the configuration file]' \
'(--lock)--no-lock[Disable auto discovery of the lock file]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)-A[Allow all permissions]' \
'(-R --allow-read -W --allow-write -N --allow-net -E --allow-env --allow-run -S --allow-sys --allow-ffi -I --allow-import -P --permission-set)--allow-all[Allow all permissions]' \
'--allow-hrtime[]' \
'--deny-hrtime[]' \
'--no-prompt[]' \
'--cached-only[Require that remote dependencies are already cached]' \
'--enable-testing-features-do-not-use[INTERNAL\: Enable internal features used during integration testing]' \
'--eszip-internal-do-not-use[]' \
'(--install-alias)-y[Assume confirmation for all prompts]' \
'(--install-alias)--yes[Assume confirmation for all prompts]' \
'*::script_arg -- Script arg:_files' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'--unstable[The \`--unstable\` flag has been deprecated. Use granular \`--unstable-*\` flags instead   To view the list of individual unstable feature flags, run this command again with --help=unstable]' \
'--unstable-bare-node-builtins[Enable unstable bare node builtins feature]' \
'--unstable-broadcast-channel[Enable unstable \`BroadcastChannel\` API]' \
'--unstable-bundle[Enable unstable bundle runtime API]' \
'--unstable-byonm[]' \
'--unstable-cron[Enable unstable \`Deno.cron\` API]' \
'--unstable-detect-cjs[Treats ambiguous .js, .jsx, .ts, .tsx files as CommonJS modules in more cases]' \
'--unstable-ffi[Enable unstable FFI APIs]' \
'--unstable-fs[Enable unstable file system APIs]' \
'--unstable-http[Enable unstable HTTP APIs]' \
'--unstable-kv[Enable unstable KV APIs]' \
'--unstable-lazy-dynamic-imports[Lazily loads statically analyzable dynamic imports when not running with type checking. Warning\: This may change the order of semver specifier resolution.]' \
'--unstable-lockfile-v5[Enable unstable lockfile v5]' \
'--unstable-net[enable unstable net APIs]' \
'--unstable-no-legacy-abort[Enable abort signal in Deno.serve without legacy behavior. This will not abort the server when the request is handled successfully.]' \
'--unstable-node-globals[Prefer Node.js globals over Deno globals - currently this refers to \`setTimeout\` and \`setInterval\` APIs.]' \
'--unstable-npm-lazy-caching[Enable unstable lazy caching of npm dependencies, downloading them only as needed (disabled\: all npm packages in package.json are installed on startup; enabled\: only npm packages that are actually referenced in an import are installed]' \
'--unstable-otel[Enable unstable OpenTelemetry features]' \
'--unstable-process[Enable unstable process APIs]' \
'--unstable-raw-imports[Enable unstable '\''bytes'\'' and '\''text'\'' imports.]' \
'--unstable-sloppy-imports[Enable unstable resolving of specifiers by extension probing, .js to .ts, and directory probing]' \
'--unstable-subdomain-wildcards[Enable subdomain wildcards support for the \`--allow-net\` flag]' \
'--unstable-temporal[Enable unstable Temporal API]' \
'--unstable-tsgo[Enable unstable TypeScript Go integration]' \
'--unstable-unsafe-proto[Enable unsafe __proto__ support. This is a security risk.]' \
'--unstable-vsock[Enable unstable VSOCK APIs]' \
'--unstable-webgpu[Enable unstable WebGPU APIs]' \
'--unstable-worker-options[Enable unstable Web Worker APIs]' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
":: :_deno__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:deno-help-command-$line[1]:"
        case $line[1] in
            (run)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(serve)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(audit)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(bench)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(bundle)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(cache)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(check)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(compile)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(coverage)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(doc)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(deploy)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(sandbox)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(eval)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(fmt)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(info)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(json_reference)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(jupyter)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(approve-scripts)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(outdated)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(lsp)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(lint)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(publish)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(repl)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(task)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(types)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(upgrade)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(vendor)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
&& ret=0
;;
(x)
_arguments "${_arguments_options[@]}" : \
'*-h+[]' \
'*--help=[]' \
'-L+[Set log level]: :(trace debug info)' \
'--log-level=[Set log level]: :(trace debug info)' \
'-q[Suppress diagnostic output]' \
'--quiet[Suppress diagnostic output]' \
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

(( $+functions[_deno_commands] )) ||
_deno_commands() {
    local commands; commands=(
'run:Run a JavaScript or TypeScript program, or a task or script.  By default all programs are run in sandbox without access to disk, network or ability to spawn subprocesses.   deno run https\://examples.deno.land/hello-world.ts  Grant permission to read from disk and listen to network\:   deno run --allow-read --allow-net jsr\:@std/http/file-server  Grant permission to read allow-listed files from disk\:   deno run --allow-read=/etc jsr\:@std/http/file-server  Grant all permissions\:   deno run -A jsr\:@std/http/file-server  Specifying the filename '\''-'\'' to read the file from stdin.   curl https\://examples.deno.land/hello-world.ts | deno run -  Read more\: https\://docs.deno.com/go/run' \
'serve:Run a server defined in a main module  The serve command uses the default exports of the main module to determine which servers to start.  Start a server defined in server.ts\:   deno serve server.ts  Start a server defined in server.ts, watching for changes and running on port 5050\:   deno serve --watch --port 5050 server.ts  Read more\: https\://docs.deno.com/go/serve' \
'add:Add dependencies to your configuration file.   deno add jsr\:@std/path  You can also add npm packages\:   deno add npm\:react  Or multiple dependencies at once\:   deno add jsr\:@std/path jsr\:@std/assert npm\:chalk' \
'audit:Audit currently installed dependencies.   deno audit  Show only high and critical severity vulnerabilities   deno audit --level=high  Check against socket.dev vulnerability database   deno audit --socket  Don'\''t error if the audit data can'\''t be retrieved from the registry   deno audit --ignore-registry-errors' \
'remove:Remove dependencies from the configuration file.   deno remove @std/path  You can remove multiple dependencies at once\:   deno remove @std/path @std/assert ' \
'bench:Run benchmarks using Deno'\''s built-in bench tool.  Evaluate the given files, run all benches declared with '\''Deno.bench()'\'' and report results to standard output\:   deno bench src/fetch_bench.ts src/signal_bench.ts  If you specify a directory instead of a file, the path is expanded to all contained files matching the glob {*_,*.,}bench.{js,mjs,ts,mts,jsx,tsx}\:   deno bench src/  Read more\: https\://docs.deno.com/go/bench' \
'bundle:Output a single JavaScript file with all dependencies.    deno bundle jsr\:@std/http/file-server -o file-server.bundle.js  If no output file is given, the output is written to standard output\:    deno bundle jsr\:@std/http/file-server ' \
'cache:Cache and compile remote dependencies.  Download and compile a module with all of its static dependencies and save them in the local cache, without running any code\:   deno cache jsr\:@std/http/file-server  Future runs of this module will trigger no downloads or compilation unless --reload is specified  Read more\: https\://docs.deno.com/go/cache' \
'check:Download and type-check without execution.    deno check jsr\:@std/http/file-server  Unless --reload is specified, this command will not re-download already cached dependencies  Read more\: https\://docs.deno.com/go/check' \
'clean:Remove the cache directory (\$DENO_DIR)' \
'compile:Compiles the given script into a self contained executable.    deno compile --allow-read --allow-net jsr\:@std/http/file-server   deno compile --output file_server jsr\:@std/http/file-server  Any flags specified which affect runtime behavior will be applied to the resulting binary.  This allows distribution of a Deno application to systems that do not have Deno installed. Under the hood, it bundles a slimmed down version of the Deno runtime along with your JavaScript or TypeScript code.  Cross-compiling to different target architectures is supported using the --target flag. On the first invocation of \`deno compile\`, Deno will download the relevant binary and cache it in \$DENO_DIR.  Read more\: https\://docs.deno.com/go/compile ' \
'completions:Output shell completion script to standard output.    deno completions bash > /usr/local/etc/bash_completion.d/deno.bash   source /usr/local/etc/bash_completion.d/deno.bash' \
'coverage:Print coverage reports from coverage profiles.  Collect a coverage profile with deno test\:   deno test --coverage=cov_profile  Print a report to stdout\:   deno coverage cov_profile  Include urls that start with the file schema and exclude files ending with test.ts and test.js, for an url to match it must match the include pattern and not match the exclude pattern\:   deno coverage --include="^file\:" --exclude="test\\.(ts|js)" cov_profile  Write a report using the lcov format\:   deno coverage --lcov --output=cov.lcov cov_profile/  Generate html reports from lcov\:   genhtml -o html_cov cov.lcov  Read more\: https\://docs.deno.com/go/coverage' \
'doc:Show documentation for a module.  Output documentation to standard output\:     deno doc ./path/to/module.ts  Output documentation in HTML format\:     deno doc --html --name="My library" ./path/to/module.ts  Lint a module for documentation diagnostics\:     deno doc --lint ./path/to/module.ts  Target a specific symbol\:     deno doc ./path/to/module.ts MyClass.someField  Show documentation for runtime built-ins\:     deno doc     deno doc --filter Deno.Listener  Read more\: https\://docs.deno.com/go/doc' \
'deploy:' \
'sandbox:' \
'eval:Evaluate JavaScript from the command line.   deno eval "console.log('\''hello world'\'')"  To evaluate as TypeScript\:   deno eval --ext=ts "const v\: string = '\''hello'\''; console.log(v)"  This command has implicit access to all permissions.  Read more\: https\://docs.deno.com/go/eval' \
'fmt:Auto-format various file types.   deno fmt myfile1.ts myfile2.ts  Supported file types are\:   JavaScript, TypeScript, Markdown, JSON(C) and Jupyter Notebooks  Supported file types which are behind corresponding unstable flags (see formatting options)\:   HTML, CSS, SCSS, SASS, LESS, YAML, Svelte, Vue, Astro and Angular  Format stdin and write to stdout\:   cat file.ts | deno fmt -  Check if the files are formatted\:   deno fmt --check  Ignore formatting code by preceding it with an ignore comment\:   // deno-fmt-ignore  Ignore formatting a file by adding an ignore comment at the top of the file\:   // deno-fmt-ignore-file  Read more\: https\://docs.deno.com/go/fmt' \
'init:scaffolds a basic Deno project with a script, test, and configuration file' \
'info:Show information about a module or the cache directories.  Get information about a module\:   deno info jsr\:@std/http/file-server  The following information is shown\:   local\: Local path of the file   type\: JavaScript, TypeScript, or JSON   emit\: Local path of compiled source code (TypeScript only)   dependencies\: Dependency tree of the source file  Read more\: https\://docs.deno.com/go/info' \
'install:Installs dependencies either in the local project or globally to a bin directory.  Local installation  Add dependencies to the local project'\''s configuration (deno.json / package.json) and installs them in the package cache. If no dependency is specified, installs all dependencies listed in the config file. If the --entrypoint flag is passed, installs the dependencies of the specified entrypoint(s).    deno install   deno install jsr\:@std/bytes   deno install npm\:chalk   deno install --entrypoint entry1.ts entry2.ts  Global installation  If the --global flag is set, installs a script as an executable in the installation root'\''s bin directory.    deno install --global --allow-net --allow-read jsr\:@std/http/file-server   deno install -g https\://examples.deno.land/color-logging.ts  To change the executable name, use -n/--name\:   deno install -g --allow-net --allow-read -n serve jsr\:@std/http/file-server  The executable name is inferred by default\:   - Attempt to take the file stem of the URL path. The above example would     become file_server.   - If the file stem is something generic like main, mod, index or cli,     and the path has no parent, take the file name of the parent path. Otherwise     settle with the generic name.   - If the resulting name has an @... suffix, strip it.  To change the installation root, use --root\:   deno install -g --allow-net --allow-read --root /usr/local jsr\:@std/http/file-server  The installation root is determined, in order of precedence\:   - --root option   - DENO_INSTALL_ROOT environment variable   - \$HOME/.deno  These must be added to the path manually if required.' \
'i:Installs dependencies either in the local project or globally to a bin directory.  Local installation  Add dependencies to the local project'\''s configuration (deno.json / package.json) and installs them in the package cache. If no dependency is specified, installs all dependencies listed in the config file. If the --entrypoint flag is passed, installs the dependencies of the specified entrypoint(s).    deno install   deno install jsr\:@std/bytes   deno install npm\:chalk   deno install --entrypoint entry1.ts entry2.ts  Global installation  If the --global flag is set, installs a script as an executable in the installation root'\''s bin directory.    deno install --global --allow-net --allow-read jsr\:@std/http/file-server   deno install -g https\://examples.deno.land/color-logging.ts  To change the executable name, use -n/--name\:   deno install -g --allow-net --allow-read -n serve jsr\:@std/http/file-server  The executable name is inferred by default\:   - Attempt to take the file stem of the URL path. The above example would     become file_server.   - If the file stem is something generic like main, mod, index or cli,     and the path has no parent, take the file name of the parent path. Otherwise     settle with the generic name.   - If the resulting name has an @... suffix, strip it.  To change the installation root, use --root\:   deno install -g --allow-net --allow-read --root /usr/local jsr\:@std/http/file-server  The installation root is determined, in order of precedence\:   - --root option   - DENO_INSTALL_ROOT environment variable   - \$HOME/.deno  These must be added to the path manually if required.' \
'json_reference:' \
'jupyter:Deno kernel for Jupyter notebooks' \
'approve-scripts:Approve npm lifecycle scripts for installed dependencies.' \
'uninstall:Uninstalls a dependency or an executable script in the installation root'\''s bin directory.   deno uninstall @std/dotenv chalk   deno uninstall --global file_server  To change the installation root, use --root flag\:   deno uninstall --global --root /usr/local serve  The installation root is determined, in order of precedence\:   - --root option   - DENO_INSTALL_ROOT environment variable   - \$HOME/.deno' \
'outdated:Find and update outdated dependencies. By default, outdated dependencies are only displayed.  Display outdated dependencies\:   deno outdated   deno outdated --compatible  Update dependencies to the latest semver compatible versions\:   deno outdated --update Update dependencies to the latest versions, ignoring semver requirements\:   deno outdated --update --latest  Filters can be used to select which packages to act on. Filters can include wildcards (*) to match multiple packages.   deno outdated --update --latest "@std/*"   deno outdated --update --latest "react*" Note that filters act on their aliases configured in deno.json / package.json, not the actual package names\:   Given "foobar"\: "npm\:react@17.0.0" in deno.json or package.json, the filter "foobar" would update npm\:react to   the latest version.   deno outdated --update --latest foobar Filters can be combined, and negative filters can be used to exclude results\:   deno outdated --update --latest "@std/*" "!@std/fmt*"  Specific version requirements to update to can be specified\:   deno outdated --update @std/fmt@^1.0.2 ' \
'lsp:The '\''deno lsp'\'' subcommand provides a way for code editors and IDEs to interact with Deno using the Language Server Protocol. Usually humans do not use this subcommand directly. For example, '\''deno lsp'\'' can provide IDEs with go-to-definition support and automatic code formatting.  How to connect various editors and IDEs to '\''deno lsp'\''\: https\://docs.deno.com/go/lsp' \
'lint:Lint JavaScript/TypeScript source code.    deno lint   deno lint myfile1.ts myfile2.js  Print result as JSON\:   deno lint --json  Read from stdin\:   cat file.ts | deno lint -   cat file.ts | deno lint --json -  List available rules\:   deno lint --rules  To ignore specific diagnostics, you can write an ignore comment on the preceding line with a rule name (or multiple)\:   // deno-lint-ignore no-explicit-any   // deno-lint-ignore require-await no-empty  To ignore linting on an entire file, you can add an ignore comment at the top of the file\:   // deno-lint-ignore-file  Read more\: https\://docs.deno.com/go/lint ' \
'publish:Publish the current working directory'\''s package or workspace to JSR' \
'repl:Starts a read-eval-print-loop, which lets you interactively build up program state in the global context. It is especially useful for quick prototyping and checking snippets of code.  TypeScript is supported, however it is not type-checked, only transpiled.' \
'task:Run a task defined in the configuration file\:   deno task build  List all available tasks (from config files in the current and ancestor directories)\:   deno task  Evaluate a task from string\:   deno task --eval "echo \$(pwd)"' \
'test:Run tests using Deno'\''s built-in test runner.  Evaluate the given modules, run all tests declared with Deno.test() and report results to standard output\:   deno test src/fetch_test.ts src/signal_test.ts  Directory arguments are expanded to all contained files matching the glob {*_,*.,}test.{js,mjs,ts,mts,jsx,tsx} or **/__tests__/**\:  deno test src/  Read more\: https\://docs.deno.com/go/test' \
'types:Print runtime TypeScript declarations.    deno types > lib.deno.d.ts  The declaration file could be saved and used for typing information.' \
'update:Update outdated dependencies.  Update dependencies to the latest semver compatible versions\:   deno update Update dependencies to the latest versions, ignoring semver requirements\:   deno update --latest  This command is an alias of deno outdated --update  Filters can be used to select which packages to act on. Filters can include wildcards (*) to match multiple packages.   deno update --latest "@std/*"   deno update --latest "react*" Note that filters act on their aliases configured in deno.json / package.json, not the actual package names\:   Given "foobar"\: "npm\:react@17.0.0" in deno.json or package.json, the filter "foobar" would update npm\:react to   the latest version.   deno update --latest foobar Filters can be combined, and negative filters can be used to exclude results\:   deno update --latest "@std/*" "!@std/fmt*"  Specific version requirements to update to can be specified\:   deno update @std/fmt@^1.0.2 ' \
'upgrade:Upgrade deno executable to the given version.  Latest   deno upgrade  Specific version   deno upgrade 1.45.0   deno upgrade 1.46.0-rc.1   deno upgrade 9bc2dd29ad6ba334fd57a20114e367d3c04763d4  Channel   deno upgrade stable   deno upgrade rc   deno upgrade canary  The version is downloaded from https\://dl.deno.land and is used to replace the current executable.  If you want to not replace the current Deno executable but instead download an update to a different location, use the --output flag\:   deno upgrade --output \$HOME/my_deno  Read more\: https\://docs.deno.com/go/upgrade' \
'vendor:\`deno vendor\` was removed in Deno 2.  See the Deno 1.x to 2.x Migration Guide for migration instructions\: https\://docs.deno.com/runtime/manual/advanced/migrate_deprecations' \
'x:Execute a binary from npm or jsr, like npx' \
'help:' \
    )
    _describe -t commands 'deno commands' commands "$@"
}
(( $+functions[_deno__add_commands] )) ||
_deno__add_commands() {
    local commands; commands=()
    _describe -t commands 'deno add commands' commands "$@"
}
(( $+functions[_deno__approve-scripts_commands] )) ||
_deno__approve-scripts_commands() {
    local commands; commands=()
    _describe -t commands 'deno approve-scripts commands' commands "$@"
}
(( $+functions[_deno__audit_commands] )) ||
_deno__audit_commands() {
    local commands; commands=()
    _describe -t commands 'deno audit commands' commands "$@"
}
(( $+functions[_deno__bench_commands] )) ||
_deno__bench_commands() {
    local commands; commands=()
    _describe -t commands 'deno bench commands' commands "$@"
}
(( $+functions[_deno__bundle_commands] )) ||
_deno__bundle_commands() {
    local commands; commands=()
    _describe -t commands 'deno bundle commands' commands "$@"
}
(( $+functions[_deno__cache_commands] )) ||
_deno__cache_commands() {
    local commands; commands=()
    _describe -t commands 'deno cache commands' commands "$@"
}
(( $+functions[_deno__check_commands] )) ||
_deno__check_commands() {
    local commands; commands=()
    _describe -t commands 'deno check commands' commands "$@"
}
(( $+functions[_deno__clean_commands] )) ||
_deno__clean_commands() {
    local commands; commands=()
    _describe -t commands 'deno clean commands' commands "$@"
}
(( $+functions[_deno__compile_commands] )) ||
_deno__compile_commands() {
    local commands; commands=()
    _describe -t commands 'deno compile commands' commands "$@"
}
(( $+functions[_deno__completions_commands] )) ||
_deno__completions_commands() {
    local commands; commands=()
    _describe -t commands 'deno completions commands' commands "$@"
}
(( $+functions[_deno__coverage_commands] )) ||
_deno__coverage_commands() {
    local commands; commands=()
    _describe -t commands 'deno coverage commands' commands "$@"
}
(( $+functions[_deno__deploy_commands] )) ||
_deno__deploy_commands() {
    local commands; commands=()
    _describe -t commands 'deno deploy commands' commands "$@"
}
(( $+functions[_deno__doc_commands] )) ||
_deno__doc_commands() {
    local commands; commands=()
    _describe -t commands 'deno doc commands' commands "$@"
}
(( $+functions[_deno__eval_commands] )) ||
_deno__eval_commands() {
    local commands; commands=()
    _describe -t commands 'deno eval commands' commands "$@"
}
(( $+functions[_deno__fmt_commands] )) ||
_deno__fmt_commands() {
    local commands; commands=()
    _describe -t commands 'deno fmt commands' commands "$@"
}
(( $+functions[_deno__help_commands] )) ||
_deno__help_commands() {
    local commands; commands=(
'run:' \
'serve:' \
'add:' \
'audit:' \
'remove:' \
'bench:' \
'bundle:' \
'cache:' \
'check:' \
'clean:' \
'compile:' \
'completions:' \
'coverage:' \
'doc:' \
'deploy:' \
'sandbox:' \
'eval:' \
'fmt:' \
'init:' \
'info:' \
'install:' \
'json_reference:' \
'jupyter:' \
'approve-scripts:' \
'uninstall:' \
'outdated:' \
'lsp:' \
'lint:' \
'publish:' \
'repl:' \
'task:' \
'test:' \
'types:' \
'update:' \
'upgrade:' \
'vendor:' \
'x:' \
    )
    _describe -t commands 'deno help commands' commands "$@"
}
(( $+functions[_deno__help__add_commands] )) ||
_deno__help__add_commands() {
    local commands; commands=()
    _describe -t commands 'deno help add commands' commands "$@"
}
(( $+functions[_deno__help__approve-scripts_commands] )) ||
_deno__help__approve-scripts_commands() {
    local commands; commands=()
    _describe -t commands 'deno help approve-scripts commands' commands "$@"
}
(( $+functions[_deno__help__audit_commands] )) ||
_deno__help__audit_commands() {
    local commands; commands=()
    _describe -t commands 'deno help audit commands' commands "$@"
}
(( $+functions[_deno__help__bench_commands] )) ||
_deno__help__bench_commands() {
    local commands; commands=()
    _describe -t commands 'deno help bench commands' commands "$@"
}
(( $+functions[_deno__help__bundle_commands] )) ||
_deno__help__bundle_commands() {
    local commands; commands=()
    _describe -t commands 'deno help bundle commands' commands "$@"
}
(( $+functions[_deno__help__cache_commands] )) ||
_deno__help__cache_commands() {
    local commands; commands=()
    _describe -t commands 'deno help cache commands' commands "$@"
}
(( $+functions[_deno__help__check_commands] )) ||
_deno__help__check_commands() {
    local commands; commands=()
    _describe -t commands 'deno help check commands' commands "$@"
}
(( $+functions[_deno__help__clean_commands] )) ||
_deno__help__clean_commands() {
    local commands; commands=()
    _describe -t commands 'deno help clean commands' commands "$@"
}
(( $+functions[_deno__help__compile_commands] )) ||
_deno__help__compile_commands() {
    local commands; commands=()
    _describe -t commands 'deno help compile commands' commands "$@"
}
(( $+functions[_deno__help__completions_commands] )) ||
_deno__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'deno help completions commands' commands "$@"
}
(( $+functions[_deno__help__coverage_commands] )) ||
_deno__help__coverage_commands() {
    local commands; commands=()
    _describe -t commands 'deno help coverage commands' commands "$@"
}
(( $+functions[_deno__help__deploy_commands] )) ||
_deno__help__deploy_commands() {
    local commands; commands=()
    _describe -t commands 'deno help deploy commands' commands "$@"
}
(( $+functions[_deno__help__doc_commands] )) ||
_deno__help__doc_commands() {
    local commands; commands=()
    _describe -t commands 'deno help doc commands' commands "$@"
}
(( $+functions[_deno__help__eval_commands] )) ||
_deno__help__eval_commands() {
    local commands; commands=()
    _describe -t commands 'deno help eval commands' commands "$@"
}
(( $+functions[_deno__help__fmt_commands] )) ||
_deno__help__fmt_commands() {
    local commands; commands=()
    _describe -t commands 'deno help fmt commands' commands "$@"
}
(( $+functions[_deno__help__info_commands] )) ||
_deno__help__info_commands() {
    local commands; commands=()
    _describe -t commands 'deno help info commands' commands "$@"
}
(( $+functions[_deno__help__init_commands] )) ||
_deno__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'deno help init commands' commands "$@"
}
(( $+functions[_deno__help__install_commands] )) ||
_deno__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'deno help install commands' commands "$@"
}
(( $+functions[_deno__help__json_reference_commands] )) ||
_deno__help__json_reference_commands() {
    local commands; commands=()
    _describe -t commands 'deno help json_reference commands' commands "$@"
}
(( $+functions[_deno__help__jupyter_commands] )) ||
_deno__help__jupyter_commands() {
    local commands; commands=()
    _describe -t commands 'deno help jupyter commands' commands "$@"
}
(( $+functions[_deno__help__lint_commands] )) ||
_deno__help__lint_commands() {
    local commands; commands=()
    _describe -t commands 'deno help lint commands' commands "$@"
}
(( $+functions[_deno__help__lsp_commands] )) ||
_deno__help__lsp_commands() {
    local commands; commands=()
    _describe -t commands 'deno help lsp commands' commands "$@"
}
(( $+functions[_deno__help__outdated_commands] )) ||
_deno__help__outdated_commands() {
    local commands; commands=()
    _describe -t commands 'deno help outdated commands' commands "$@"
}
(( $+functions[_deno__help__publish_commands] )) ||
_deno__help__publish_commands() {
    local commands; commands=()
    _describe -t commands 'deno help publish commands' commands "$@"
}
(( $+functions[_deno__help__remove_commands] )) ||
_deno__help__remove_commands() {
    local commands; commands=()
    _describe -t commands 'deno help remove commands' commands "$@"
}
(( $+functions[_deno__help__repl_commands] )) ||
_deno__help__repl_commands() {
    local commands; commands=()
    _describe -t commands 'deno help repl commands' commands "$@"
}
(( $+functions[_deno__help__run_commands] )) ||
_deno__help__run_commands() {
    local commands; commands=()
    _describe -t commands 'deno help run commands' commands "$@"
}
(( $+functions[_deno__help__sandbox_commands] )) ||
_deno__help__sandbox_commands() {
    local commands; commands=()
    _describe -t commands 'deno help sandbox commands' commands "$@"
}
(( $+functions[_deno__help__serve_commands] )) ||
_deno__help__serve_commands() {
    local commands; commands=()
    _describe -t commands 'deno help serve commands' commands "$@"
}
(( $+functions[_deno__help__task_commands] )) ||
_deno__help__task_commands() {
    local commands; commands=()
    _describe -t commands 'deno help task commands' commands "$@"
}
(( $+functions[_deno__help__test_commands] )) ||
_deno__help__test_commands() {
    local commands; commands=()
    _describe -t commands 'deno help test commands' commands "$@"
}
(( $+functions[_deno__help__types_commands] )) ||
_deno__help__types_commands() {
    local commands; commands=()
    _describe -t commands 'deno help types commands' commands "$@"
}
(( $+functions[_deno__help__uninstall_commands] )) ||
_deno__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'deno help uninstall commands' commands "$@"
}
(( $+functions[_deno__help__update_commands] )) ||
_deno__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'deno help update commands' commands "$@"
}
(( $+functions[_deno__help__upgrade_commands] )) ||
_deno__help__upgrade_commands() {
    local commands; commands=()
    _describe -t commands 'deno help upgrade commands' commands "$@"
}
(( $+functions[_deno__help__vendor_commands] )) ||
_deno__help__vendor_commands() {
    local commands; commands=()
    _describe -t commands 'deno help vendor commands' commands "$@"
}
(( $+functions[_deno__help__x_commands] )) ||
_deno__help__x_commands() {
    local commands; commands=()
    _describe -t commands 'deno help x commands' commands "$@"
}
(( $+functions[_deno__info_commands] )) ||
_deno__info_commands() {
    local commands; commands=()
    _describe -t commands 'deno info commands' commands "$@"
}
(( $+functions[_deno__init_commands] )) ||
_deno__init_commands() {
    local commands; commands=()
    _describe -t commands 'deno init commands' commands "$@"
}
(( $+functions[_deno__install_commands] )) ||
_deno__install_commands() {
    local commands; commands=()
    _describe -t commands 'deno install commands' commands "$@"
}
(( $+functions[_deno__json_reference_commands] )) ||
_deno__json_reference_commands() {
    local commands; commands=()
    _describe -t commands 'deno json_reference commands' commands "$@"
}
(( $+functions[_deno__jupyter_commands] )) ||
_deno__jupyter_commands() {
    local commands; commands=()
    _describe -t commands 'deno jupyter commands' commands "$@"
}
(( $+functions[_deno__lint_commands] )) ||
_deno__lint_commands() {
    local commands; commands=()
    _describe -t commands 'deno lint commands' commands "$@"
}
(( $+functions[_deno__lsp_commands] )) ||
_deno__lsp_commands() {
    local commands; commands=()
    _describe -t commands 'deno lsp commands' commands "$@"
}
(( $+functions[_deno__outdated_commands] )) ||
_deno__outdated_commands() {
    local commands; commands=()
    _describe -t commands 'deno outdated commands' commands "$@"
}
(( $+functions[_deno__publish_commands] )) ||
_deno__publish_commands() {
    local commands; commands=()
    _describe -t commands 'deno publish commands' commands "$@"
}
(( $+functions[_deno__remove_commands] )) ||
_deno__remove_commands() {
    local commands; commands=()
    _describe -t commands 'deno remove commands' commands "$@"
}
(( $+functions[_deno__repl_commands] )) ||
_deno__repl_commands() {
    local commands; commands=()
    _describe -t commands 'deno repl commands' commands "$@"
}
(( $+functions[_deno__run_commands] )) ||
_deno__run_commands() {
    local commands; commands=()
    _describe -t commands 'deno run commands' commands "$@"
}
(( $+functions[_deno__sandbox_commands] )) ||
_deno__sandbox_commands() {
    local commands; commands=()
    _describe -t commands 'deno sandbox commands' commands "$@"
}
(( $+functions[_deno__serve_commands] )) ||
_deno__serve_commands() {
    local commands; commands=()
    _describe -t commands 'deno serve commands' commands "$@"
}
(( $+functions[_deno__task_commands] )) ||
_deno__task_commands() {
    local commands; commands=()
    _describe -t commands 'deno task commands' commands "$@"
}
(( $+functions[_deno__test_commands] )) ||
_deno__test_commands() {
    local commands; commands=()
    _describe -t commands 'deno test commands' commands "$@"
}
(( $+functions[_deno__types_commands] )) ||
_deno__types_commands() {
    local commands; commands=()
    _describe -t commands 'deno types commands' commands "$@"
}
(( $+functions[_deno__uninstall_commands] )) ||
_deno__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'deno uninstall commands' commands "$@"
}
(( $+functions[_deno__update_commands] )) ||
_deno__update_commands() {
    local commands; commands=()
    _describe -t commands 'deno update commands' commands "$@"
}
(( $+functions[_deno__upgrade_commands] )) ||
_deno__upgrade_commands() {
    local commands; commands=()
    _describe -t commands 'deno upgrade commands' commands "$@"
}
(( $+functions[_deno__vendor_commands] )) ||
_deno__vendor_commands() {
    local commands; commands=()
    _describe -t commands 'deno vendor commands' commands "$@"
}
(( $+functions[_deno__x_commands] )) ||
_deno__x_commands() {
    local commands; commands=()
    _describe -t commands 'deno x commands' commands "$@"
}

if [ "$funcstack[1]" = "_deno" ]; then
    _deno "$@"
else
    compdef _deno deno
fi
