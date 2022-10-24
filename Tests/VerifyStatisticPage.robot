*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/ElementBase.robot
Resource          ../Pages/BasePage.robot
Resource          ../Pages/StasticsPage.robot
Test Setup        start browser
Test Teardown     finish test case

*** Variables ***
${StatisticPageContent}    Our Progress

*** Test Cases ***
verify figures appeared in statistic page
    Click Link    ${StatisticMenu}
    Wait Until Page Contains    ${StatisticPageContent}
    Page Should Contain    Total funded
    Page Should Contain    No. of financing
    Page Should Contain    Default rate
    Page Should Contain    Financing
    Page Should Contain    General
    Page Should Contain    Repayment
    Page Should Contain    Disbursement

verify content of general tab
    go to statistic page
    Page Should Contain    Total approved
    Page Should Contain    Amount disbursed
    Page Should Contain    Default rate

verify content of repayment tab
    go to statistic page
    Click button    ${RepaymentBtn}
    Wait Until Page Contains    Breakdown of repaid components.
    Page Should Contain    Breakdown of repaid components.
    Page Should Contain    Punctuality of repayment.

verify content of disbursement tab
    go to statistic page
    Click button    ${DisbursementBtn}
    Wait Until Page Contains    Industry
    Page Should Contain    Industry
    Page Should Contain    Breakdown by number of approved financing.
