*** Settings ***
Library         ${CURDIR}${/}..${/}src${/}package${/}GlobalLibWithArgs.py       name=KORTE
Force Tags      global_args

*** Test Cases ***
First
    print_name

Second
    print_name

Third
    print_name
