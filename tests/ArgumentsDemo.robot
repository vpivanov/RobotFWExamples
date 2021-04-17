*** Settings ***

*** Test Cases ***
Arguments demo keywod test
    Arguments demo keywod  rcv  academy

*** Keywords ***
Arguments demo keywod
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg1}