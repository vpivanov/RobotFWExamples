*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Checkboxes operation keywords
    [Documentation]  TC to demonstrate Checkboxes operation keywords

    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    Maximize Browser Window
    sleep  4s

    Scroll Element Into View  xpath://*[@id="field31"]/div/div
    Page Should Contain Checkbox  id:interest_market_c0
    Page Should Not Contain Checkbox  id:interest_market_c00

    Select Checkbox  id:interest_market_c0
    Checkbox Should Be Selected  id:interest_market_c0
    Capture Page Screenshot
    Sleep  4s

   Checkbox Should Not Be Selected  id:interest_sell_c0

   Unselect Checkbox  id:interest_market_c0
   Checkbox Should Not Be Selected  id:interest_market_c0
   Capture Page Screenshot
   Sleep  4s

   Close Browser
