*** Settings ***
Library     MyFirstRobotLib
Library     second_lib
# robot --pythonpath .\src .\suites\04_import_witout_path_modification.robot

*** Test Cases ***
Lib test
    static_keyword
#    __private