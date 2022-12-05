*** Settings ***
Documentation       A test suite with a single test for valid login.
...
...                 This test has a workflow that is created using keywords in
...                 the imported resource file.

Library             SeleniumLibrary
Library             String
Resource            ./variable.resource


*** Keywords ***
Open Page
    Open Browser   ${BASE_URL2}   chrome
    Set Window Size   1920   1080

Masuk Element
    Click Element   //*[@id="app"]/div/div/div[2]/div/div[1]/div

Kategori Berhasil Dibuka
    Location Should Be   ${BASE_URL2}elements

pilih Text Box
    Click Element   //*[@id="item-0"]

input full name
    Input Text   //*[@id="userName"]   Alfin Wicaksono

input email
    Input Text   //*[@id="userEmail"]   test@automation.com

input address
    Input Text   //*[@id="currentAddress"]   jalan dimalam hari nomer 9 rw 01 rw 02

input pernament address
    Input Text   //*[@id="permanentAddress"]   sama kayak diatas

klik submit
    Click Element   //*[@id="submit"]

cek validasi submit
    ${InputName}   Get Text   //*[@id="name"]
    ${SubmitName}   Get Text   //*[@id="name"]
    ${InputEmail}   Get Text   //*[@id="userEmail"]
    ${SubmitEmail}   Get Text   //*[@id="email"]
    Log   ${InputEmail}
    Log   ${SubmitEmail}
    IF   "${InputName}" == "${SubmitName}"
        Log   Nama Sesuai
    ELSE IF   "${InputEmail}" == "${SubmitEmail}"
        Log   Email Sesuai
    END
    