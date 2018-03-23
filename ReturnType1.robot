*** Keywords ***
Add
    [Arguments]  ${x}  ${y}
    ${k}  evaluate  ${x} + ${y}
    [Return]  ${k}

Subtraction
    [Arguments]  ${x1}  ${y1}
    ${k1}  evaluate  ${x1} - ${y1}
    [Return]  ${k1}