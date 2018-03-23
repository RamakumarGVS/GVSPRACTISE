*** Settings ***
Library  ExcelLibrary

*** Test Cases ***
Create Excel
    create excel document  Data.xls
    write excel cell    1     1   Test Value    Sheet
    write excel cell    1     3   Test Value3    Sheet
    save excel document  Data.xlsx
