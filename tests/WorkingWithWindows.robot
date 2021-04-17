*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Browser Windows Operation Keyword in Robot FW
    [Documentation]  TC to demonstrate Browser Windows Operation Keyword in Robot FW

    Open Browser  http://salesforce.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s
    Wait Until Element is Visible   xpath://div[contains(@class,'desktop-free-trial-container')]//div[contains(@class,'cta_0 buttonCTAItemComponent parbase')]//a[contains(@class,'')]
    Click Link  xpath://div[contains(@class,'desktop-free-trial-container')]//div[contains(@class,'cta_0 buttonCTAItemComponent parbase')]//a[contains(@class,'')]

    @{WindowHandles}=  Get Window Handles
    Sleep  4s

    @{WindowIdentifiers}=  Get Window Identifiers
    Sleep  4s

    @{WindowNames}=  Get Window Names
    Sleep  4s

    @{WindowTitles}=  Get Window Titles
    Sleep  4s

    Set Window Position  100  200
    ${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  4s


    Set Window Size  800  600
    ${width}  ${heigh}=  Get Window Size
    Log  ${width}
    Log  ${heigh}
    Sleep  4s

    Switch Window  ${WindowHandles}[1]
    Log  ${WindowHandles}[1]
    Sleep  4s

    Close Window
    Sleep  4s

    Switch Window  ${WindowHandles}[0]
    Close Window
