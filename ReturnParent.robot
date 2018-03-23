*** Settings ***
Documentation    Suite description
Resource  ReturnType1.robot

*** Test Cases ***
Add1
   ${s}  Add  1  2
   Log  ${s}

Subtraction1
    ${s1}  Subtraction  10  4
    log  ${s1}
