*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate WebLocators in Robot FW
    [Documentation]  This is sample test case to demonstrate Weblocators in Robot FW

    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window
    Input Text  name:_nkw  robot
    Close Browser