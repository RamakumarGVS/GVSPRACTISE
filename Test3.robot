*** Settings ***
Library  SeleniumLibrary  30  30
Library  OperatingSystem
#Library  SeleniumLibrary   implicit_wait=30

*** Test Cases ***
Oening Browser
    Append To Environment Variable  PATH  ${CURDIR}
   Open Browser  http://google.com
#  Open Browser  https://qa6app.3gqa.satmetrix.com/app/core/main/login/login.htm?_rdr=as  browser=GC
#  Open Browser  http://google.com desired_capabilities=firefox_binary:""
#  Title Should Be  google
    ${URL}=  Get Location
    Should Be Equal As Strings  ${URL}  https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=2xCyWoXmFMucX564p4gD


*** Keywords ***
Provided precondition
    Setup system under test