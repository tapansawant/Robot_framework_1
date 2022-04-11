*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  http://127.0.0.1:5000/

*** Test Cases ***
Google test case
    [Documentation]  it is simple
    Open Browser  ${url}  chrome
    sleep  5s
    Close Browser


*** Keywords ***
