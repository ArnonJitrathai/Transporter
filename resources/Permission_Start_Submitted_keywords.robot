*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Permission Start Submitted Add Picture
    [Arguments]      ${Picture}
    Choose File      xpath=${Permission Start Submitted Add Picture}       ${Picture}


Permission Start Submitted Upload Picture
    Wait Until Element Is Visible    xpath=${Permission Start Submitted Upload Picture}      timeout=15s
    Click Element    xpath=${Permission Start Submitted Upload Picture}

Permission Start Submitted Save


    Wait Until Element Is Visible    xpath=${Permission Start Submitted Download}      timeout=15s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Permission_Start_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${Permission Start Submitted Save} 
    