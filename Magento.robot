*** Settings ***
Documentation  This suite has register functionality
Force Tags   register  regression
Library  SeleniumLibrary  30  30
Library  OperatingSystem

*** Test Cases ***
Positive Test Case
   Append To Environment Variable  PATH  ${CURDIR}
   Open Browser  http://magento.com  GC
   Maximize Browser Window
   # Click Element  link:MY ACCOUNT
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

    # //*[@id="recaptcha-anchor-label"]

