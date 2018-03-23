*** Settings ***
Documentation    Suite description
Library   TestJava
*** Test Cases ***

My TestCase
    ${message}     say hi   GVS
    log    ${message}