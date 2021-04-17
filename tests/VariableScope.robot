*** Settings ***

*** Variables ***
#${VARIABLE_DEMO} =  This is GLOBAL variables

*** Test Cases ***
This is demo test 1
    ${variable_demo} =  Set Variable  This is TestCase variable
    Log  ${VARIABLE_DEMO}

This is demo test 2
    Log  ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword


*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}=This is KeywoRD VARIABLES
    log  ${VARIABLE_DEMO}