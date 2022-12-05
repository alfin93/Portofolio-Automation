*** Settings ***
Library   SeleniumLibrary
Suite Teardown   Close Browser

*** Variables ***
${BASE_URL}   https://www.google.com/

*** Keywords ***
Init browsernya dulu 
    ${chrome_options} =  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method  ${chrome_options}  add_argument  --headless
    Call Method  ${chrome_options}  add_argument  --disable-gpu
    Call Method  ${chrome_options}  add_argument  --no-sandbox
    Create Webdriver  Chrome  chrome_options=${chrome_options}

Buka halaman web app
    Open Browser   ${BASE_URL}   chrome
    Set Window Size   1920   1080

Halaman login akan terbuka
    Location Should Contain   ${BASE_URL}
    Title Should Be   Google

*** Test Cases ***
TC_APP_001
		[Documentation]   Buka url web app maka akan di redirect ke halaman login
		[Tags]   web-app
		Init browsernya dulu
		Buka halaman web app
		Halaman login akan terbuka