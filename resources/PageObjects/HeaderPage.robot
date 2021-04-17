*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
#${search_text}  mobile
#@{search_text}  gifts  books
#&{search_text}  abc=books  bcd=travel

#${SearchTextBox}  //input[@id='gh-ac']
#${SearchButton}  //input[@id='gh-btn']
#${AdvanceSearchLink}  //*[@id="gh-as-a"]


*** Keywords ***
Input search text and click Search button
    [Arguments]  ${search_text}
    Input Text  ${HomePageSearchTextBox}  ${search_text}
    Press Keys  ${HomePageSearchButton}  [Return]

Click on Advanced search link
    Click Element  ${HomePageAdvanceSearchLink}


