*** Settings ***
Library         ${CURDIR}${/}..${/}src${/}package${/}DemoLib.py
Suite Setup                 Log         SuiteSetup           WARN
Test Setup                  Log         TestSetup            WARN
Test Teardown               Log         TestTeardown         WARN
Suite Teardown              Log         SuiteTesrdown        WARN

*** Test Cases ***
First
    do_nothing

Second
    do_nothing

Third
    do_nothing
