*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  http://127.0.0.1:5000/

*** Test Cases ***
admin module test case
    [Documentation]  Clicking on admon module
    [Tags]  BMS
    Open Browser  ${url}  chrome
    maximize browser window
    sleep  2s
    click element  xpath=/html/body/div/div/div/form/table/tbody/tr[1]/td/a
    sleep  2s

login admin test case
    [Documentation]  Login admin
    [Tags]  BMS
    input text  name:uname  admin
    sleep  2s
    input text  name:pswd  9875
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button



view all books test case
    [Documentation]  View all books
    [Tags]  BMS
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  3s

view card view books test case
    [Documentation]  View all books- card view
    [Tags]  BMS
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  3s

search book test case
    [Documentation]  Search book
    [Tags]  BMS
    click element  xpath=/html/body/nav/div/div/ul/li[5]/a
    input text  name:bname  alchemist
    sleep  2s
    click button  xpath=/html/body/div/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  5s


add book test case
    [Documentation]  Adding book
    [Tags]  BMS
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    input text  name:name  Delhi
    sleep  1s
    input text  name:author  Khushwant Singh
    sleep  1s
    input text  name:category  abc
    sleep  1s
    input text  name:price  300
    sleep  1s
    input text  name:publisher  prathmesh sandikar
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  3s

delete book test case
    [Documentation]  Deleting book
    [Tags]  BMS
    click element  xpath=/html/body/nav/div/div/ul/li[6]/a
    input text  name:bname  Delhi
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  5s
    Close Browser



*** Keywords ***
