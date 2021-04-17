*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser  http://google.com  Chrome  alias=ChromeRCV

    Maximize Browser Window

    Open Browser  about:blank  Chrome  alias=RCVFF

    @{aliases}  Get Browser Aliases

    Log  ${aliases}[1]

    @{browser_ID}=  Get Browser Ids

    Log  ${browser_ID}[1]

    Switch Browser  1

    Input Text  name:q  RCVAcademy
    Sleep  4s

    Switch Browser  ${aliases}[1]

    Go To  http://salesforce.com
    Sleep  4s

    Close All Browsers