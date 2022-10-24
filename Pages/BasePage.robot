*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Route.robot

*** Variables ***
${test_url}       ${base_URL}
${browser}        chrome

*** Keywords ***
start browser
    [Arguments]    ${url}=${test_url}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

finish test case
    Close All Browsers
