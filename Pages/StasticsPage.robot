*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/ElementBase.robot
Resource          ../Resources/Route.robot

*** Variables ***
${StatisticPageContent}    Our Progress

*** Keywords ***
go to statistic page
    Go To    ${statistic_URL}
    Wait Until Page Contains    ${StatisticPageContent}
