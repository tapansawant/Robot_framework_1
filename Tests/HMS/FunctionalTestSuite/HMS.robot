*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  http://127.0.0.1:5000/

*** Test Cases ***
open browser test case
    Open Browser  ${url}  chrome
    maximize browser window

login admin test case
    [Documentation]  Login admin
    [Tags]  BMS
    input text  name:uname  admin
    sleep  2s
    input text  name:pswd  12345
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button

patient entry test case
    input text  name:name  xyz
    sleep  2s
    input text  name:mno  9766964947
    sleep  2s
    input text  name:age  18
    sleep  2s
    input text  name:address  nashik
    sleep  2s
    input text  name:dob  2/12/2000
    sleep  2s
    input text  name:place  nashik
    sleep  2s
    input text  name:pincode  422012
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button

search book test case
    [Documentation]  Search Patient
    [Tags]  HMS
    click element  xpath=/html/body/nav/div/div/ul/li[4]/a
    input text  name:mno  98765432
    sleep  2s
    click button  xpath=/html/body/div/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s


view all patients test case
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  5s
    Close Browser


*** Keywords ***
