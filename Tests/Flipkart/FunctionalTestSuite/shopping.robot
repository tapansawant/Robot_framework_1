*** Settings ***
Resource  ../../../Resources/MyKeywords.robot

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
    click element  xpath=/html/body/div/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  5s

Flipkart product buy
    [Documentation]  product purchase
    [Tags]  flipkart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click button  xpath=/html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  2s


Flipkart user login
    [Documentation]  login
    [Tags]  flipkart
    input text  class:_2IX_2-  tapan@gmail.com
    click button  xpath=/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button
    stop test case


