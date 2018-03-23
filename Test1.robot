*** Settings ***
Documentation    Suite description
Force Tags  t1  t2
Default Tags  t3
Library  SeleniumLibrary


*** Test Cases ***
Test title1
    [Tags]    DEBUG  #t1, DEBUG
    Provided precondition
    When action
    Then check expectations

Test title2
    [Tags]    #t1
    Provided precondition
    When action
    Then check expectations

Test title3
    Provided precondition  #t1, t3
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test

***