*** Variables ***
${platform}         windows
${platform_libs}    ${CURDIR}${/}..${/}src${/}platform

*** Settings ***
Suite Setup     import_platform_lib

*** Keywords ***
import_platform_lib
    Run Keyword If      '${platform}' == 'windows'   import library   ${platform_libs}${/}WindowsLib.py
    ...     ELSE IF     '${platform}' == 'osx'       import library   ${platform_libs}${/}OsxLib.py

*** Test Cases ***
Log collection
    collect_logs
