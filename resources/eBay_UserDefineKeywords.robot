*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Search Results
    Input Text  //input[@id='gh-ac']  mobile
    Press Keys  //input[@id='gh-btn']  [Return]
    Page Should Contain  results for mobile

Filter results by condition
    Click Element  //span[contains(text(),'Condition')]
    Wait Until Element Is Visible  //span[normalize-space()='New']
    Click Element  //span[normalize-space()='New']

Verify filter results
    Element Should Be Visible  //*[@id="s0-14-11-6-3-query_answer1-answer-2-1-0-list"]/li[1]/div/a/div