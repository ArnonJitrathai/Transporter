*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    # Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

Open Browser To My net-work
    Open Browser    ${Mynetwork URL}    ${BROWSER}
    # Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

Open Browser To Mynetwork AMM Test SGAdd New 
    Open Browser    ${Mynetwork AMM Test SGAddNew}     ${BROWSER}
    # Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

Open Browser To test-mynetwork-asset
    Open Browser    ${Mynetwork AMM URL}       ${BROWSER}
    # Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds


Your connection is not private
    Click Button    id=details-button
    Set Selenium Timeout    3 seconds
    Click Link      id=proceed-link
    Set Selenium Timeout    3 seconds

Transporter_Login
    [Arguments]    ${username}      ${password}
    Input Text    id=loginForm:username    ${username}
    Input Text    id=loginForm:password    ${password}
    Click Button    xpath=${LOGIN BUTTON}
    
Welcome Page Should Be Open
    [Arguments]         ${Title}
    Title Should Be    ${Title}