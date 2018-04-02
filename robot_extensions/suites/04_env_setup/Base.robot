*** Variables ***
${lib_dir}=     ${CURDIR}${/}..${/}..${/}src

*** Settings ***
Library         ${lib_dir}${/}EnvironmentSetup.py
Library         MyFirstRobotLib