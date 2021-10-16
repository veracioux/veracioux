#!/usr/bin/env tuterm

configure() {
    DELAY=0.05
    DELAY_SEP=0.05
    __OPT_MODE='demo' # Hacky solution
}

# Echo that stores everything it prints in a variable
storage=''
echo() {
    builtin echo "$@"
}

run() {
    echo -ne "\033[1;34m"
    # __print_out is an implementation detail of tuterm
    __print_out "Hello"
    echo -ne "\033[0m"
    __print_out ", I'm "
    echo -ne "\033[1;33m"
    __print_out "Haris"
    DELAY=0.07 __print_out $'\b\b\b\b\b'
    echo -ne "\033[1;35m"
    DELAY=0.05 __print_out "veracioux."
    sleep 1
    echo -e .
}
