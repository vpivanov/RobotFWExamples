*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Radio button operation keywords
    [Documentation]  TC to demonstrate Radio button operation keywords

   Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
   Maximize Browser Window
   Sleep  4s

   Page Should Contain Radio Button     xpath://*[@id="doi0"]
   Page Should Not Contain Radio Button     xpath://*[@id="doi00"]

   Radio Button Should Not Be Selected  doi

   Select Radio Button  doi  0

   Radio Button Should Be Set To  doi  0

   Close Browser