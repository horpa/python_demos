*** Settings ***
Library     ${CURDIR}${/}..${/}src${/}simple_lib.py

*** Test Cases ***
Simple
    First Robot Keyword

Invalid keyword
    thread_name
#    ${th}   current_thread
#    LOG     ${th.name}      ERROR