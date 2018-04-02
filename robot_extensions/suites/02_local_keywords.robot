*** Keywords ***
Foo
    [Documentation]  Valami akarmi
    ...              Ez a masodik sora a dokumentacionak
    Log     Foo     WARN

Bar
    [Arguments]     ${message}     ${level}=WARN
    LOG             ${message}     ${level}

Bazz
    [Arguments]     @{args}
    Log             ${args[0]}         ERROR

Kwargs Only
    [Arguments]     &{kwargs}
    Log             ${kwargs}
    Log Many        @{kwargs}

Kiirod, hogy ${bar}, rendben?
    Log     ${bar}      ERROR


*** Test Cases ***
Foo
    Foo

Bar test
    Bar                 mikka makka     ERROR
    Bar                 bar bar bar
    Set test variable   ${hc}           hovercrafts
    bar                 level=ERROR     message=My ${12.3456} ${hc} are fool of eels.

Bazz ez is mukodik...
    @{a}    Create list     egy     ketto      harom        negy
    Bazz    @{a}

Kiirod ugye?
    Kiirod, hogy Babar, rendben?

Keyword Args
    [Tags]          kw
    Kwargs Only     foo=bar     pi=${3.1415926}

Template hasznalat
    [Template]  Bar
    trace       TRACE
    debug       DEBUG
    info        INFO
    warn        WARN
    error       ERROR
