*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  flipkart
${url}  https://www.google.com/

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
