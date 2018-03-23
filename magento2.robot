*** Settings ***
Documentation  This suite has register functionality
Force Tags   register  regression
Library  SeleniumLibrary  30  30
Library  OperatingSystem
Test Template  Negative Register Scenario
Suite Setup   Open My Browser
Suite Teardown  Close All Browsers

*** Test Cases ***
# Title of testcase

tc1     Ram     gvs     ram.gvs@mail.com    Welcome123   ${EMPTY}
tc2     Ram     gvs     ram.gvs@mail.com    ${EMPTY}     Welcome123
tc3     Ram     gvs     ${EMPTY}    Welcome123   Welcome123

*** Keywords ***

Open My Browser
    Append To Environment Variable  PATH  ${CURDIR}
    Open Browser  http://magento.com  gc
    Maximize Browser Window
Negative Register Scenario
   [Arguments]  ${fname}    ${lname}    ${email}    ${pwd}  ${cngpwd}
   # Click Element  link:MY ACCOUNT
    Go To  http://magento.com
    Click Link  MY ACCOUNT
   # Click Button  xpath://span[text()='Register']
    Click Element  xpath://span[text()='Register']
    Input Text  id:firstname  ${fname}
    Input Text  id:lastname  ${lname}
    Input Text  //*[@id="email_address"]  ${email}
    Select From List By Index  id:customer_company_type  2
    Select From List By Value  name:individual_role  technical/developer
    #Select From List By Label  name:individual_role  Technical/developer
    Input Password  name:password  ${pwd}
    Input Password  name:confirmation  ${cngpwd}
    # Select Frame  //iframe[@role='presentation']
    # Click Element  class:recaptcha-checkbox-checkmark
    # Unselect Frame
    Select Checkbox  id:agree_terms

    # //*[@id="recaptcha-anchor-label"]