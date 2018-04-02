*** Settings ***
Suite Setup                 Log         SuiteSetup           ERROR
Test Setup                  Log         TestSetup            WARN
Test Teardown               Log         TestTeardown         WARN
Suite Teardown              Log         SuiteTesrdown        ERROR
Resource                    Base.robot

*** Variables ***
${a_string}                 Love me tender
${a_bool}                   ${True}
${a_none}                   ${NONE}
${PI}                       ${3.1415926}


*** Test Cases ***
Variable logger tests
    Log variables

Just a simple test with tags and docs
    [Documentation]     In Ancient India, the knowledge of theoretical and applied aspects of square and square root
    ...                 was at least as old as the Sulba Sutras, dated around 800–500 BC (possibly much earlier).
    [Tags]              sqrt
    LOG                 ${sqrt_2}                   WARN

List variable demonstration
    @{list}=                Create List             firstLitItem        secondLitItem       thirdLitItem
    Log                     ${\n}::${list[0]}::     console=yes
    Length Should Be        ${list}                 3
