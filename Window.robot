*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary  30  30
Library  OperatingSystem

*** Test Cases ***
Test title
     Open Browser  http://naukri.com  gc
     Select Window  title:Amazon
     Maximize Browser Window
     Close Window
