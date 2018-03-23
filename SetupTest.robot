*** Settings ***
Documentation    Suite description
Test Setup    Open My Browser
Test Teardown  Close All Browsers
Library  SeleniumLibrary  30  30
Library  OperatingSystem

*** Test Cases ***
Register
    [Teardown]  NONE
    Click Link  MY ACCOUNT
   # Click Button  xpath://span[text()='Register']
    Click Element  xpath://span[text()='Register']
    Input Text  id:firstname  Ram
    Input Text  id:lastname  GVS
    Input Text  //*[@id="email_address"]  ram.g@gmail.com
    Select From List By Index  id:customer_company_type  2
    Select From List By Value  name:individual_role  technical/developer
    #Select From List By Label  name:individual_role  Technical/developer
    Input Password  name:password  Welcome123
    Input Password  name:confirmation  Welcome123
    # Select Frame  //iframe[@role='presentation']
    # Click Element  class:recaptcha-checkbox-checkmark
    # Unselect Frame
    Select Checkbox  id:agree_terms
Login
    [Setup]   Go Back
    Input Text   id:email   ram.g@gmail.com
    Input Password  id:pass  Welcome123
    Click Element  id:send2
    #Element Should Be Visible  link:Log Out
    Element Should Be Visible   xpath://span[text()='Invalid login or password.']    message=None

*** Keywords ***
Open My Browser
    Append To Environment Variable  PATH  ${CURDIR}
    Open Browser  http://magento.com  gc
    Maximize Browser Window
