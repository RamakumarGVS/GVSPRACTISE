*** Variables ***

${a}=  50
${b}=  hello
@{c}=  10   20    hello   hi
&{d}=  1=10     2=two      three=3

*** Test Cases ***
Testing Variable types
    log   ${a}
    log   ${b}
    log   @{c}[0]
    log   @{c}[1]
    Log  &{d}[three]

Testing Variable types2
    log   ${a}
    log   ${b}
    log   @{c}[0]
    log   @{c}[1]
    Log  &{d}[three]