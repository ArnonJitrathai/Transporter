*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
DD Submitted Add Picture
    [Arguments]      ${Picture}
    Execute Javascript    window.scrollTo(0, 200)
    Choose File      xpath=${DD Submitted Add Picture}    ${Picture}
    Wait Until Element Is Visible    xpath=${DD Submitted Upload Picture}      timeout=15s    

DD Submitted Upload Picture    
    Click Element    xpath=${DD Submitted Upload Picture}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    0.5 seconds

DD Submitted Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/DD_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${DD Submitted Save}
    Wait Until Element Is Visible    xpath=${DD Submitted Result Massage}      timeout=30s