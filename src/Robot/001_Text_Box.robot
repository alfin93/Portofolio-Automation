*** Settings ***
Library   SeleniumLibrary
Suite Teardown   Close Browser
Resource         ../keywords.resource

*** Test Cases ***

TC1_Buka Halaman Web
   Open Page

TC2_masuk bagian Element
   Masuk Element
   Kategori Berhasil Dibuka

TC3_input semua field
   pilih Text Box
   input full name
   input email
   input address
   input pernament address
   klik submit
   # cek validasi submit