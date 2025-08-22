*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Drawing Submitted Add Picture
    [Arguments]      ${Picture}
    Execute Javascript    window.scrollTo(0, 200)
    Choose File      xpath=${Drawing Submitted Add Picture}    ${Picture}
    Wait Until Element Is Visible    xpath=${Drawing Submitted Upload Picture}      timeout=15s    
    Click Element    xpath=${Drawing Submitted Upload Picture}
    Wait Until Element Is Visible    xpath=${Drawing Submitted Download Picture}    timeout=15s  

Drawing Submitted Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Drawing_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    0.5 seconds
    Click Element    xpath=${Drawing Submitted Save} 
    sleep    0.5 seconds