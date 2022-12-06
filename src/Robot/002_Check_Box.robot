*** Settings ***
Library   SeleniumLibrary
Suite Teardown   Close Browser
Resource         ../keywords.resource

*** Test Cases ***

TC1_Buka Halaman Web
   Open Page

TC2_masuk check box section
    Masuk Element
    Masuk Checkbox

TC3_klik 1 checkbox
    klik checkbox Home

TC4_expand checkbox
    klik expand
    Sleep   3s

TC5_expand all checkbox
    klik expand all
    Sleep   3s
