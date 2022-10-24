*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/ElementBase.robot
Resource          ../Pages/BasePage.robot
Test Setup        start browser
Test Teardown     finish test case

*** Variables ***
${StatisticPageContent}    Our Progress

*** Test Cases ***
verify should navigate to statistic page when this menu is clicked
    Click Link    ${StatisticMenu}
    Wait Until Page Contains    ${StatisticPageContent}
    Page Should Contain    ${StatisticPageContent}
