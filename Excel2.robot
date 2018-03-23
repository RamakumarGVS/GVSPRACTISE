*** Settings ***
Library  ExcelLibrary

*** Test Cases ***
Create Excel
    Given create excel document  Data.xls
    When write excel cell    1     1   Test Value5    Sheet
    And write excel cell    1     3   Test Value6    Sheet
    And save excel document  Data.xlsx
