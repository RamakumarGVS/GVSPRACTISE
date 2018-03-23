*** Settings ***
Documentation    Test Convertion
Default Tags    d1
Force Tags  Smoke

*** Test Cases ***
Test title1
     [Documentation]  Binary Convertion
     ${X}=  Convert to Binary  10
     log  ${X}

Test title2
     [Tags]  t1
     [Documentation]  Octal Convertion
     ${X}=  Convert to Octal  10
     log  ${X}