*** Settings ***
Library  SeleniumLibrary



*** Variables ***

*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  hello


Registration page test case
    [Documentation]  regiatration for user
    [Tags]  user
    Log  tapan

Dashboard test case
    [Documentation]  dashboard for user
    Log  sawant

Google test case
    [Documentation]  it is simple google case
    Open Browser    https://www.google.com/  chrome
    input Text  name:q  harman
    submit form
    Close Browser
*** Keywords ***
