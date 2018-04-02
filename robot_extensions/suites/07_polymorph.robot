*** Variables ***
${platform}     windows

*** Settings ***
Library         ${CURDIR}${/}..${/}src${/}EnvironmentSetup.py
Library         polymorph.ImporterLib
Suite Setup     import_platform_lib         ${platform}

*** Test Cases ***
Log collection
    collect_logs

