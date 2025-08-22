*** Settings ***
Library    SeleniumLibrary
# Library    String
# Library    OperatingSystem
# Library    BuiltIn


*** Keywords ***
Click Turnkey Import site
    Scroll Element Into View        xpath=${Log Out Menu}
    sleep    1 seconds
    Click Element    xpath=${Turnkey Import Site Menu} 
    sleep    10 seconds

Turnkey Import Site Serch Project
    [Arguments]     ${Site Project Name}
    Click Element    xpath=${Click Import Site}
    Wait Until Element Is Visible    xpath=${Import Site Serch Project}    timeout=10s
    Click Element    xpath=${Import Site Serch Project}

    Wait Until Element Is Visible    xpath=${Import Site Project Input}    timeout=10s
    Input Text       xpath=${Import Site Project Input}      ${Site Project Name}
    Click Element    xpath=${Import Site Project Name Search}
    
    Wait Until Element Is Visible    xpath=${Select Import Site Project Name}    timeout=10s
    Capture Page Screenshot    ${Picture Path Folder}/Import_Site _Serch_Project.png
    Click Element    xpath=${Select Import Site Project Name}
    Wait Until Element Is Visible    xpath=${Import Site File Check Text}     timeout=15s

Turnkey Import Site File
    [Arguments]    ${Import Site File Path}
    sleep    1 seconds
    Choose File      xpath=${Import Site File}     ${Import Site File Path}
    sleep    1 seconds
    Click Element    xpath=${Button Upload} 
    sleep    1 seconds
    Wait Until Element Is Visible    xpath=${Reference Site Code}        timeout=15s
    Capture Page Screenshot    ${Picture Path Folder}/Reference_Site_Code.png
    ${Reference Site Code Route Chain ID}=     Get Text     xpath=${Reference Site Code Path}
    Set Global Variable     ${Reference Site Code Route Chain ID}
    [Return]    ${Reference Site Code Route Chain ID}
    # Log To Console      Reference Site Code Route Chain ID: ${Reference Site Code Route Chain ID}