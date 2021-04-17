*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
ThiIsSampleTestCase
    [documentation]  Google test
    [tags]  regression

    open browser  http://www.google.com  chrome
    close browser

*** Keywords ***
