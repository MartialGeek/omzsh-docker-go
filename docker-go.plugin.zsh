export GOPATH="${GOPATH:-$(pwd)}"
export PATH="$( cd "$(dirname "$0")" ; pwd -P )/bin:${PATH}"

_docker_go_command_list () {
    cat <<COMMANDS
build 
clean
doc
env
bug
fix
fmt
generate
get
install
list
run
test
tool
version
vet
COMMANDS
}

_docker_go_project_list () {
    local project_path="${GOPATH}/src"

    if [ -d "${project_path}"  ]; then
        _path_files -/ -W "${project_path}" 
    fi
}

_docker_go () {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C \
        '1: :->command' \
        '*: :->args'

    case $state in
        command)
            compadd $(_docker_go_command_list)
            ;;
        *)
            case $line[1] in
                "install"|"test"|"build")
                    _docker_go_project_list
                    ;;
            esac
           ;;
    esac
}

compdef _docker_go go

