*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  flipkart
${url}  https://www.google.com/

*** Test Cases ***
Google test case
    [Documentation]  it is simple google search test
    [Tags]  google
    start test case
    search data
    submit form
    click element  class:LC20lb

Flipkart product search
    [Documentation]  searching products on flipkart
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    flipkart search
    sleep  5s


Flipkart product selection
    [Documentation]  selecting product
    [Tags]  flipkart
    click element  xpath=/html/body/div/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  5s
    stop test case
*** Keywords ***
search data
    Input text  name:q  ${search_parameter}

start test case
    Open Browser  ${url}  chrome
    Maximize Browser Window

stop test case
    close browser

flipkart search
    Input text  name:q  iphone13
    click button  class:L0Z3Pu
