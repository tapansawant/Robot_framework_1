*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${search_parameter}  harman
${url}  https://www.google.com/

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
    Open Browser  ${url}  chrome
    search data
    submit form
    Close Browser


*** Keywords ***
search data
    Input text  name:q  ${search_parameter}