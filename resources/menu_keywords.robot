*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#Selecte Menu List
Click Menu List
    Click Element    xpath=${Menu List}

Select Menu
    [Arguments]      ${Menu}
    Execute JavaScript    document.getElementById("${Menu}").click()
    sleep    1 seconds
    