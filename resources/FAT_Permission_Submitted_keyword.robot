*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
FAT Permission Submitted Add File
    [Arguments]      ${Picture}
    Execute Javascript    window.scrollTo(0, 200)
    Choose File      xpath=${FAT Permission Submitted Add File}    ${Picture}
    Wait Until Element Is Visible    xpath=${FAT Permission Submitted Upload File}      timeout=15s
    sleep    1 seconds
    Click Element    xpath=${FAT Permission Submitted Upload File}   
    Wait Until Element Is Visible    xpath=${FAT Permission Submitted Download File}    timeout=15s

FAT Permission Submitted Save
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    0.5 seconds
    Click Element    xpath=${FAT Permission Submitted Save}
    
    