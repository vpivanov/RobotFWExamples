*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate WebElement Operation Keywords
    [Documentation]  Test Case to demonstrate WebElement Operation Keywords

    Open Browser  http://google.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s

    ${attr}=  Get Element Attribute  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]  class

    ${count}=  Get Element Count  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    ${width}  ${height}=  Get Element Size  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Get WebElement  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    @{webelements}=  Get WebElements  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

    Capture Element Screenshot  xpath://input[@name='q']

    Assign Id To Element  name:btnK  RCVid
    Page Should Contain Element  RCVid

    Element Should Be Focused  xpath://input[@name='q']
    Element Should Be Focused  xpath://input[@name='q']

    Input Text  xpath://input[@name='q']    RCVAcademy

    Clear Element Text  xpath://input[@name='q']

    Cover Element   xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[2]

    Element Attribute Value Should Be  name:btnK  value  Google Search

    Element Should Be Enabled  name:btnK

    Element Should Not Be Visible  name:btnKgf

    Element Should Contain  xpath:/html/body/div[1]/div[5]/div/div[1]/a[3]  How Search
    Element Should Not Contain  xpath:/html/body/div[1]/div[5]/div/div[1]/a[3]  Google Search

    Element Text Should Be  xpath:/html/body/div[1]/div[5]/div/div[1]/a[3]  How Search works
    Element Text Should Not Be  xpath:/html/body/div[1]/div[5]/div/div[1]/a[3]  How Search

    Double Click Element  xpath://*[@id="gb"]/div/div[2]/a

    Click Element At Coordinates  xpath://*[@id="identifierNext"]/div/button/div[2]    15  10

    Close Browser

