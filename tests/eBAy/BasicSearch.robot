*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../resources/CommonFunctionality.robot
Resource  ../../resources/PageObjects/HeaderPage.robot
Resource  ../../resources/PageObjects/SearchResusltsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay - robot
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input search text and click Search button  robot
    SearchResusltsPage.Verify search results  robot

Verify basic search functionality for eBay - books
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input search text and click Search button  books
    SearchResusltsPage.Verify search results  books

Verify advance search functionality
    [Documentation]  This test case cerifies the advance search
    [Tags]  Functional

    HeaderPage.Click on Advanced search link










